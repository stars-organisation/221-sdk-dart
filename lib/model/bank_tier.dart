//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BankTier {
  /// Returns a new [BankTier] instance.
  BankTier({
    required this.bps,
    required this.from,
    required this.to,
  });

  /// Taux appliqué au montant entier, en points de base.
  int bps;

  int from;

  int to;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BankTier &&
          other.bps == bps &&
          other.from == from &&
          other.to == to;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (bps.hashCode) + (from.hashCode) + (to.hashCode);

  @override
  String toString() => 'BankTier[bps=$bps, from=$from, to=$to]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'bps'] = this.bps;
    json[r'from'] = this.from;
    json[r'to'] = this.to;
    return json;
  }

  /// Returns a new [BankTier] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BankTier? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'bps'),
            'Required key "BankTier[bps]" is missing from JSON.');
        assert(json[r'bps'] != null,
            'Required key "BankTier[bps]" has a null value in JSON.');
        assert(json.containsKey(r'from'),
            'Required key "BankTier[from]" is missing from JSON.');
        assert(json[r'from'] != null,
            'Required key "BankTier[from]" has a null value in JSON.');
        assert(json.containsKey(r'to'),
            'Required key "BankTier[to]" is missing from JSON.');
        assert(json[r'to'] != null,
            'Required key "BankTier[to]" has a null value in JSON.');
        return true;
      }());

      return BankTier(
        bps: mapValueOfType<int>(json, r'bps')!,
        from: mapValueOfType<int>(json, r'from')!,
        to: mapValueOfType<int>(json, r'to')!,
      );
    }
    return null;
  }

  static List<BankTier> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BankTier>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BankTier.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BankTier> mapFromJson(dynamic json) {
    final map = <String, BankTier>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BankTier.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BankTier-objects as value to a dart map
  static Map<String, List<BankTier>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<BankTier>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BankTier.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'bps',
    'from',
    'to',
  };
}
