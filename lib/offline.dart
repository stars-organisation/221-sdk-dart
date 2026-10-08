/// Données de référence embarquées (instantané versionné) : mêmes objets JSON que l'API.
library;

import 'dart:convert';

import 'package:unorm_dart/unorm_dart.dart' as unorm;

import 'src/generated/data.dart';

typedef Json = Map<String, dynamic>;

final Json _data = jsonDecode(snapshotJson) as Json;
List<Json> _set(String name) => (_data[name] as List).cast<Json>();

final Json snapshot = {
  'built_at': _data['built_at'],
  'api_version': _data['api_version'],
  'geographie': _data['geographie_meta'],
};

final _marks = RegExp(r'\p{M}', unicode: true);

/// Copie de normalize() dans server/internal/api/data.go (règle search_key de data/src/geographie/lieux.py).
String normalize(String value) => unorm
    .nfkd(value)
    .replaceAll(_marks, '')
    .toLowerCase()
    .replaceAll(RegExp(r"['’‘`ʼ]"), '')
    .replaceAll('œ', 'oe')
    .replaceAll('æ', 'ae')
    .replaceAll(RegExp(r'[^a-z0-9]+'), ' ')
    .trim();

/// Lance une [RangeError] pour une année absente de l'instantané : interrogez GET /v1/jours-feries?year=.
List<Json> holidays([Object? year]) {
  final all = _set('jours-feries');
  if (year == null) return all;
  final found = all.where((h) => (h['date'] as String).startsWith('$year')).toList();
  if (found.isEmpty) {
    final years = all.map((h) => (h['date'] as String).substring(0, 4)).toSet().join(', ');
    throw RangeError('Aucun jour férié embarqué pour $year (années : $years). Interrogez GET /v1/jours-feries?year=$year.');
  }
  return found;
}

Json? holiday(String isoDate) =>
    _set('jours-feries').where((h) => h['date'] == isoDate).firstOrNull;

/// Opérateur d'origine d'un numéro national (9 chiffres, sans +221) : préfixe le plus long.
/// Avec la portabilité, l'abonné peut avoir changé d'opérateur.
Json? operatorFor(String nationalNumber) {
  final matches = _set('operateurs')
      .where((p) => nationalNumber.startsWith(p['prefix'] as String))
      .toList()
    ..sort((a, b) =>
        (b['prefix'] as String).length - (a['prefix'] as String).length);
  return matches.firstOrNull;
}

List<Json> banks([String? q]) => q == null
    ? _set('banques')
    : _set('banques')
        .where((b) => normalize(jsonEncode(b)).contains(normalize(q)))
        .toList();

/// Par identifiant (« k0010a ») ou code banque BCEAO (« K 0010 A »).
Json? bank(String idOrCode) => _set('banques')
    .where((b) => b['id'] == idOrCode || b['bank_code'] == idOrCode)
    .firstOrNull;

/// Mêmes filtres et même tri que GET /v1/geographie, sans pagination.
List<Json> places({String? level, String? parentId, String? q}) {
  final needle = q == null ? '' : normalize(q);
  final matches = _set('geographie')
      .where((p) =>
          (level == null || p['level'] == level) &&
          (parentId == null || p['parent_id'] == parentId) &&
          (needle.isEmpty ||
              (p['search_key'] as String).contains(needle) ||
              normalize(p['name'] as String? ?? '').contains(needle)))
      .toList();
  if (needle.isEmpty) return matches;
  int rank(Json p) => p['search_key'] == needle
      ? 0
      : ((p['search_key'] as String).startsWith(needle) ? 1 : 2);
  return matches..sort((a, b) => rank(a) - rank(b));
}

/// Même forme que GET /v1/geographie/{id} : le lieu, ses ancêtres (région d'abord) et ses enfants.
Json? place(String id) {
  final all = _set('geographie');
  final byId = {for (final p in all) p['id'] as String: p};
  final found = byId[id];
  if (found == null) return null;
  final ancestors = <Json>[];
  for (var parent = byId[found['parent_id']];
      parent != null;
      parent = byId[parent['parent_id']]) {
    ancestors.insert(0, parent);
  }
  return {
    ...found,
    'ancestors': ancestors,
    'children': all.where((p) => p['parent_id'] == id).toList()
  };
}
