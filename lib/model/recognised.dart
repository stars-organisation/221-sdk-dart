//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Recognised {
  /// Returns a new [Recognised] instance.
  Recognised({
    required this.candidats,
    required this.texte,
  });

  int candidats;

  String texte;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Recognised &&
          other.candidats == candidats &&
          other.texte == texte;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (candidats.hashCode) + (texte.hashCode);

  @override
  String toString() => 'Recognised[candidats=$candidats, texte=$texte]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'candidats'] = this.candidats;
    json[r'texte'] = this.texte;
    return json;
  }

  /// Returns a new [Recognised] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Recognised? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'candidats'),
            'Required key "Recognised[candidats]" is missing from JSON.');
        assert(json[r'candidats'] != null,
            'Required key "Recognised[candidats]" has a null value in JSON.');
        assert(json.containsKey(r'texte'),
            'Required key "Recognised[texte]" is missing from JSON.');
        assert(json[r'texte'] != null,
            'Required key "Recognised[texte]" has a null value in JSON.');
        return true;
      }());

      return Recognised(
        candidats: mapValueOfType<int>(json, r'candidats')!,
        texte: mapValueOfType<String>(json, r'texte')!,
      );
    }
    return null;
  }

  static List<Recognised> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Recognised>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Recognised.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Recognised> mapFromJson(dynamic json) {
    final map = <String, Recognised>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Recognised.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Recognised-objects as value to a dart map
  static Map<String, List<Recognised>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Recognised>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Recognised.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'candidats',
    'texte',
  };
}
