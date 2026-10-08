// dart run example/premier_appel.dart (API_KEY et API_URL facultatifs)
import 'dart:io';

import 'package:sdk221/offline.dart' as offline;
import 'package:sdk221/sdk221.dart';

Future<void> main() async {
  final env = Platform.environment;
  final client = createApiClient(apiKey: env['API_KEY'], baseUrl: env['API_URL'] ?? defaultBaseUrl);
  try {
    final holidays = await JoursFeriesApi(client).listJoursFeries(year: '2026');
    final first = holidays!.data.first;
    print('En ligne : ${holidays.pagination.total} jours fériés en 2026, le premier : ${first.date} ${first.name.fr}');
  } on ApiException catch (e) {
    // 429 : quota quotidien atteint (remis à zéro à minuit GMT) ; les méthodes ...WithHttpInfo donnent Retry-After.
    print('${e.code} : ${e.message}');
  }
  print('Hors ligne : ${offline.places(q: 'thies', level: 'region').first['name']}');
}
