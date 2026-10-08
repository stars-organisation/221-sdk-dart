/// Vérification de X-221-Signature : `v1=` + HMAC-SHA256 hexadécimal de `<timestamp>.<corps brut>`.
library;

import 'dart:convert';

import 'package:crypto/crypto.dart';

/// [rawBody] est le corps tel que reçu, avant tout décodage JSON ; [timestampHeader] est X-221-Timestamp (secondes Unix).
bool verifyWebhook(String secret, String timestampHeader, String rawBody, String signatureHeader, {Duration maxAge = const Duration(minutes: 5)}) {
  final timestamp = RegExp(r'^\d+$').hasMatch(timestampHeader) ? int.tryParse(timestampHeader) : null;
  if (timestamp == null) return false;
  final ageSeconds = DateTime.now().millisecondsSinceEpoch / 1000 - timestamp;
  if (ageSeconds.abs() > maxAge.inSeconds) return false;
  final digest = Hmac(sha256, utf8.encode(secret)).convert(utf8.encode('$timestampHeader.$rawBody'));
  final expected = utf8.encode('v1=$digest');
  final received = utf8.encode(signatureHeader);
  if (received.length != expected.length) return false;
  var diff = 0;
  for (var i = 0; i < expected.length; i++) {
    diff |= expected[i] ^ received[i];
  }
  return diff == 0;
}
