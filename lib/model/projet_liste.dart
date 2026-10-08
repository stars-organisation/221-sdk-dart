//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjetListe {
  /// Returns a new [ProjetListe] instance.
  ProjetListe({
    this.data = const [],
    required this.limit,
  });

  List<Projet>? data;

  int limit;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjetListe &&
          _deepEquality.equals(other.data, data) &&
          other.limit == limit;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (data == null ? 0 : data!.hashCode) + (limit.hashCode);

  @override
  String toString() => 'ProjetListe[data=$data, limit=$limit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    json[r'limit'] = this.limit;
    return json;
  }

  /// Returns a new [ProjetListe] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjetListe? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'limit'),
            'Required key "ProjetListe[limit]" is missing from JSON.');
        assert(json[r'limit'] != null,
            'Required key "ProjetListe[limit]" has a null value in JSON.');
        return true;
      }());

      return ProjetListe(
        data: Projet.listFromJson(json[r'data']),
        limit: mapValueOfType<int>(json, r'limit')!,
      );
    }
    return null;
  }

  static List<ProjetListe> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ProjetListe>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjetListe.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjetListe> mapFromJson(dynamic json) {
    final map = <String, ProjetListe>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjetListe.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjetListe-objects as value to a dart map
  static Map<String, List<ProjetListe>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ProjetListe>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjetListe.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'limit',
  };
}
