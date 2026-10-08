// Contre l'API Go locale (make dev) ; API_URL remplace l'adresse par défaut.
import 'dart:io';

import 'package:sdk221/offline.dart' as offline;
import 'package:sdk221/sdk221.dart';
import 'package:test/test.dart';

final baseUrl = Platform.environment['API_URL'] ?? defaultBaseUrl;

void main() {
  final client = createApiClient(baseUrl: baseUrl);

  test('matches the offline snapshot', () async {
    final phone = await TelephoneApi(client).analyseTelephone('77 123 45 67');
    expect(phone?.operator_.name, offline.operatorFor('771234567')?['operator']);
    final holidays = await JoursFeriesApi(client).listJoursFeries(year: '2026', perPage: 100);
    expect(holidays?.data?.map((h) => (h as Map)['id']).toList(), offline.holidays(2026).map((h) => h['id']).toList());
    final dakar = await GeographieApi(client).getLieu('reg_om6lpn2l');
    expect(dakar?.children?.length, (offline.place('reg_om6lpn2l')?['children'] as List).length);
  });

  test('raises ApiException with the status and the error body', () async {
    await expectLater(
      BanquesApi(client).getBanque('inconnue'),
      throwsA(isA<ApiException>().having((e) => e.code, 'code', 404).having((e) => e.message, 'message', contains('not_found'))),
    );
    final keyed = createApiClient(apiKey: 'cle-invalide', baseUrl: baseUrl);
    await expectLater(BanquesApi(keyed).getBanque('k0010a'), throwsA(isA<ApiException>().having((e) => e.code, 'code', 401)));
  });
}
