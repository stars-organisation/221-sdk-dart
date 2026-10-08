/// SDK Dart de l'API 221 : client généré (api.dart) et données hors ligne (offline.dart).
library;

import 'api.dart';

export 'api.dart';
export 'webhook.dart';

const defaultBaseUrl = 'https://apps.orvlabs.com';

/// Sans clé : quota bas par adresse IP. Avec clé : en-tête Authorization: Bearer <clé>.
ApiClient createApiClient({String? apiKey, String baseUrl = defaultBaseUrl}) =>
    ApiClient(basePath: baseUrl, authentication: apiKey == null ? null : (HttpBearerAuth()..accessToken = apiKey));
