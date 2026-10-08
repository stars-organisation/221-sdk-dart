//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Consommation {
  /// Returns a new [Consommation] instance.
  Consommation({
    required this.count,
    required this.day,
    required this.keyId,
  });

  int count;

  String day;

  String keyId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Consommation &&
          other.count == count &&
          other.day == day &&
          other.keyId == keyId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (count.hashCode) + (day.hashCode) + (keyId.hashCode);

  @override
  String toString() => 'Consommation[count=$count, day=$day, keyId=$keyId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'count'] = this.count;
    json[r'day'] = this.day;
    json[r'key_id'] = this.keyId;
    return json;
  }

  /// Returns a new [Consommation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Consommation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'count'),
            'Required key "Consommation[count]" is missing from JSON.');
        assert(json[r'count'] != null,
            'Required key "Consommation[count]" has a null value in JSON.');
        assert(json.containsKey(r'day'),
            'Required key "Consommation[day]" is missing from JSON.');
        assert(json[r'day'] != null,
            'Required key "Consommation[day]" has a null value in JSON.');
        assert(json.containsKey(r'key_id'),
            'Required key "Consommation[key_id]" is missing from JSON.');
        assert(json[r'key_id'] != null,
            'Required key "Consommation[key_id]" has a null value in JSON.');
        return true;
      }());

      return Consommation(
        count: mapValueOfType<int>(json, r'count')!,
        day: mapValueOfType<String>(json, r'day')!,
        keyId: mapValueOfType<String>(json, r'key_id')!,
      );
    }
    return null;
  }

  static List<Consommation> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Consommation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Consommation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Consommation> mapFromJson(dynamic json) {
    final map = <String, Consommation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Consommation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Consommation-objects as value to a dart map
  static Map<String, List<Consommation>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Consommation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Consommation.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'count',
    'day',
    'key_id',
  };
}
