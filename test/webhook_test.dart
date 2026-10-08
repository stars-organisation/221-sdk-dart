import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:sdk221/webhook.dart';
import 'package:test/test.dart';

const secret = 'whsec_test';
const body = '{"id":"evt_1","type":"payment.succeeded"}';

String sign(String timestamp) => 'v1=${Hmac(sha256, utf8.encode(secret)).convert(utf8.encode('$timestamp.$body'))}';
String now() => (DateTime.now().millisecondsSinceEpoch ~/ 1000).toString();

void main() {
  test('accepts a fresh signed delivery', () {
    final ts = now();
    expect(verifyWebhook(secret, ts, body, sign(ts)), isTrue);
  });

  test('rejects tampering, malformed headers and stale timestamps', () {
    final ts = now();
    expect(verifyWebhook(secret, ts, '$body ', sign(ts)), isFalse);
    expect(verifyWebhook('autre', ts, body, sign(ts)), isFalse);
    expect(verifyWebhook(secret, ts, body, 'v1=00'), isFalse);
    expect(verifyWebhook(secret, ts, body, ''), isFalse);
    expect(verifyWebhook(secret, 'abc', body, sign(ts)), isFalse);
    final old = (int.parse(ts) - 301).toString();
    expect(verifyWebhook(secret, old, body, sign(old)), isFalse);
    expect(verifyWebhook(secret, old, body, sign(old), maxAge: const Duration(minutes: 10)), isTrue);
  });
}
