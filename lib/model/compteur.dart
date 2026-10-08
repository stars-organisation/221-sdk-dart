//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Compteur {
  /// Returns a new [Compteur] instance.
  Compteur({
    required this.jeu,
    required this.ouvertures,
    required this.telechargements,
  });

  String jeu;

  /// Ouvertures de la page du jeu.
  int ouvertures;

  /// Fichiers téléchargés depuis le hub.
  int telechargements;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Compteur &&
          other.jeu == jeu &&
          other.ouvertures == ouvertures &&
          other.telechargements == telechargements;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (jeu.hashCode) + (ouvertures.hashCode) + (telechargements.hashCode);

  @override
  String toString() =>
      'Compteur[jeu=$jeu, ouvertures=$ouvertures, telechargements=$telechargements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'jeu'] = this.jeu;
    json[r'ouvertures'] = this.ouvertures;
    json[r'telechargements'] = this.telechargements;
    return json;
  }

  /// Returns a new [Compteur] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Compteur? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'jeu'),
            'Required key "Compteur[jeu]" is missing from JSON.');
        assert(json[r'jeu'] != null,
            'Required key "Compteur[jeu]" has a null value in JSON.');
        assert(json.containsKey(r'ouvertures'),
            'Required key "Compteur[ouvertures]" is missing from JSON.');
        assert(json[r'ouvertures'] != null,
            'Required key "Compteur[ouvertures]" has a null value in JSON.');
        assert(json.containsKey(r'telechargements'),
            'Required key "Compteur[telechargements]" is missing from JSON.');
        assert(json[r'telechargements'] != null,
            'Required key "Compteur[telechargements]" has a null value in JSON.');
        return true;
      }());

      return Compteur(
        jeu: mapValueOfType<String>(json, r'jeu')!,
        ouvertures: mapValueOfType<int>(json, r'ouvertures')!,
        telechargements: mapValueOfType<int>(json, r'telechargements')!,
      );
    }
    return null;
  }

  static List<Compteur> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Compteur>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Compteur.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Compteur> mapFromJson(dynamic json) {
    final map = <String, Compteur>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Compteur.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Compteur-objects as value to a dart map
  static Map<String, List<Compteur>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Compteur>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Compteur.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'jeu',
    'ouvertures',
    'telechargements',
  };
}
