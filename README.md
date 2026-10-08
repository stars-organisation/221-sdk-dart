# SDK Dart 221

Client de l'API 221 généré depuis l'OpenAPI par
[openapi-generator](https://openapi-generator.tech/docs/generators/dart/)
(générateur `dart`, EF-221-02), vérification des signatures de webhook et données
de référence hors ligne (EF-221-03). Paquet `sdk221` sur pub.dev. Site et documentation : <https://221.orvlabs.com/documentation>.

| Fichier | Contenu | Origine |
| --- | --- | --- |
| `lib/api.dart`, `lib/api/`, `lib/model/`, `lib/auth/` | `ApiClient`, une classe par tag (`TelephoneApi`…), modèles | Généré, jamais modifié à la main |
| `lib/sdk221.dart` | `createApiClient({apiKey, baseUrl})`, réexporte `api.dart` et `webhook.dart` | Écrit à la main |
| `lib/webhook.dart` | `verifyWebhook(...)` : signature `X-221-Signature` d'un webhook | Écrit à la main, `crypto` (HMAC-SHA256) |
| `lib/offline.dart` | `holidays`, `holiday`, `operatorFor`, `banks`, `bank`, `places`, `place`, `snapshot` | Instantané versionné, embarqué en constante Dart |

Générateur `dart` plutôt que `dart-dio` : il n'utilise que `http`, sans
`built_value` ni `build_runner` (pas de seconde étape de génération). Limite : il
importe `dart:io`, donc pas de Flutter web ; `offline.dart` n'en dépend pas.

## Installation

```sh
dart pub add sdk221   # ou : flutter pub add sdk221
```

Pas encore publié sur pub.dev : la commande fonctionnera à la publication.
Plateformes : Dart VM, Android, iOS et bureau. Pas Flutter web : le client
généré importe `dart:io` (`lib/api.dart`), et le gabarit du générateur l'impose.

## Développement

```sh
cd packages/sdk-dart
./generate.sh      # Java 11+, Node, Dart ; contrat Go (make openapi, sans serveur)
dart pub get && dart test   # test/api_test.dart appelle l'API Go locale (make dev)
```

`generate.sh` télécharge une fois openapi-generator 7.25.0 depuis Maven Central
(somme SHA-1 vérifiée) dans `.tool/`. Il corrige dans une copie privée de
l'OpenAPI quatre formes 3.1 que ce générateur traite mal (voir le script).

## Clés API

Une clé a la forme `sk_221_pay_test_…` (mode test) ou `sk_221_pay_live_…` (mode réel).
Les clés déjà émises avec `221pay_test_`, `221pay_live_` ou `sk_221_` restent acceptées. Ne mettez jamais
la clé dans une application distribuée : elle appartient à votre serveur.

```dart
final client = createApiClient(apiKey: Platform.environment['API_KEY']); // Authorization: Bearer <clé>
```

Les routes de données fonctionnent aussi sans clé (`createApiClient()`, sur
`https://apps.orvlabs.com` par défaut), avec un quota bas par adresse IP.

## Créer un paiement

`Idempotency-Key` est propre à chaque paiement : renvoyer la même valeur ne crée
pas de doublon. Le contrat décrit le corps comme du binaire : on passe le JSON
sérialisé dans un `MultipartFile` (le générateur l'envoie tel quel, sans
`multipart/form-data`).

```dart
import 'dart:convert';
import 'package:http/http.dart' show MultipartFile;

final payment = await PaymentsApi(client).paymentsCreate(
  MultipartFile.fromString('body', jsonEncode({
    'amount': '10000',
    'currency': 'XOF',
    'rail': 'sn_wave',
    'merchant_reference': 'commande-1042',
    'return_url': 'https://boutique.example/merci',
  })),
  idempotencyKey: 'commande-1042',
);
```

## Vérifier un webhook

Lisez le corps brut avant tout décodage JSON ; refusez la requête si la
fonction renvoie `false` (signature fausse, ou horodatage de plus de 5 minutes,
`maxAge` pour changer la durée).

```dart
import 'package:sdk221/sdk221.dart';

final ok = verifyWebhook(webhookSecret, request.headers['x-221-timestamp'] ?? '', rawBody, request.headers['x-221-signature'] ?? '');
if (!ok) return Response(401);
```

Dédupliquez sur l'identifiant de l'événement : une livraison peut être rejouée.

## Premier appel, sans clé

```dart
import 'package:sdk221/sdk221.dart';

final client = createApiClient();
final jours = await JoursFeriesApi(client).listJoursFeries(year: '2026');
print(jours?.data.first.name.fr); // « Jour de l'an »
```

Les noms de méthodes (`listJoursFeries`) sont les `operationId` de l'OpenAPI.

## Erreurs et quotas

Toute réponse 400 ou plus lève `ApiException` : `code` est le statut HTTP,
`message` le corps JSON de l'API (`{"code", "message", "request_id", "fields"}`).
Le champ `code` du JSON, en majuscules (`QUOTA_EXCEEDED`…), est à tester
plutôt que le statut.

```dart
try {
  await BanquesApi(client).getBanque('k0010a');
} on ApiException catch (e) {
  if (e.code == 429) {
    // Quota atteint : attendre Retry-After secondes ou utiliser une clé.
  }
}
```

Pour lire `Retry-After` et `RateLimit-Remaining`, appelez la variante
`...WithHttpInfo` qui renvoie la `Response` http brute. Ne relancez pas un 429
en boucle.

## Hors ligne

```dart
import 'package:sdk221/offline.dart' as offline;

offline.holidays(2026);                        // jours fériés (date_status : confirmee ou previsionnelle) ; RangeError hors des années embarquées
offline.operatorFor('771234567');              // opérateur du préfixe d'origine (portabilité possible)
offline.bank('K 0010 A');                      // par id ou code banque BCEAO
offline.places(level: 'region', q: 'thies');
offline.place('reg_om6lpn2l');                 // avec ancêtres et enfants, comme l'API
offline.snapshot['built_at'];                  // date des données embarquées
```

Les fonctions renvoient les mêmes objets JSON que l'API (`Map<String, dynamic>`).
Validation des numéros et formatage des montants : SDK TypeScript seulement pour
l'instant. `normalize()` recopie celle de `server/internal/api/data.go` (NFKD via
`unorm_dart`).

## Exemple

```sh
dart run example/premier_appel.dart   # API_KEY et API_URL facultatifs
```
