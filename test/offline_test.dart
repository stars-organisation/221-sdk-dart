import 'package:sdk221/offline.dart';
import 'package:test/test.dart';

void main() {
  test('refuses holidays outside the embedded years', () {
    expect(holidays(2026), isNotEmpty);
    expect(() => holidays(2099), throwsRangeError);
  });

  test('looks up the embedded reference data', () {
    expect(snapshot['built_at'], isNotNull);
    expect(holiday('2026-04-04')?['type'], anyOf('civile', 'religieuse'));
    expect(operatorFor('701234567')?['operator'], 'Expresso Sénégal');
    expect(bank('K 0010 A')?['id'], 'k0010a');
    expect(places(level: 'region', q: 'Thiès').first['name'], 'Thiès');
    expect(place('reg_om6lpn2l')?['children'], isNotEmpty);
  });
}
