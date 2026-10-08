//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RailBalance {
  /// Returns a new [RailBalance] instance.
  RailBalance({
    required this.available,
    required this.pending,
    required this.reserved,
  });

  /// Retirable.
  String available;

  /// Encaissé, pas encore retirable.
  String pending;

  /// Retenu par des retraits en cours.
  String reserved;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RailBalance &&
          other.available == available &&
          other.pending == pending &&
          other.reserved == reserved;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (available.hashCode) + (pending.hashCode) + (reserved.hashCode);

  @override
  String toString() =>
      'RailBalance[available=$available, pending=$pending, reserved=$reserved]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'available'] = this.available;
    json[r'pending'] = this.pending;
    json[r'reserved'] = this.reserved;
    return json;
  }

  /// Returns a new [RailBalance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RailBalance? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'available'),
            'Required key "RailBalance[available]" is missing from JSON.');
        assert(json[r'available'] != null,
            'Required key "RailBalance[available]" has a null value in JSON.');
        assert(json.containsKey(r'pending'),
            'Required key "RailBalance[pending]" is missing from JSON.');
        assert(json[r'pending'] != null,
            'Required key "RailBalance[pending]" has a null value in JSON.');
        assert(json.containsKey(r'reserved'),
            'Required key "RailBalance[reserved]" is missing from JSON.');
        assert(json[r'reserved'] != null,
            'Required key "RailBalance[reserved]" has a null value in JSON.');
        return true;
      }());

      return RailBalance(
        available: mapValueOfType<String>(json, r'available')!,
        pending: mapValueOfType<String>(json, r'pending')!,
        reserved: mapValueOfType<String>(json, r'reserved')!,
      );
    }
    return null;
  }

  static List<RailBalance> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RailBalance>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RailBalance.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RailBalance> mapFromJson(dynamic json) {
    final map = <String, RailBalance>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RailBalance.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RailBalance-objects as value to a dart map
  static Map<String, List<RailBalance>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RailBalance>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RailBalance.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'available',
    'pending',
    'reserved',
  };
}
