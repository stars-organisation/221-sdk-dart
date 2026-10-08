//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdresseNormalisee {
  /// Returns a new [AdresseNormalisee] instance.
  AdresseNormalisee({
    this.alternatives = const [],
    required this.ambigu,
    required this.lieu,
    this.lieuId,
    this.lieuxReconnus = const [],
    required this.limites,
    this.relation,
    this.repere,
    required this.texte,
  });

  List<LieuResume>? alternatives;

  bool ambigu;

  LieuResume lieu;

  String? lieuId;

  List<Recognised>? lieuxReconnus;

  String limites;

  AdresseNormaliseeRelationEnum? relation;

  String? repere;

  String texte;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdresseNormalisee &&
    _deepEquality.equals(other.alternatives, alternatives) &&
    other.ambigu == ambigu &&
    other.lieu == lieu &&
    other.lieuId == lieuId &&
    _deepEquality.equals(other.lieuxReconnus, lieuxReconnus) &&
    other.limites == limites &&
    other.relation == relation &&
    other.repere == repere &&
    other.texte == texte;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alternatives == null ? 0 : alternatives!.hashCode) +
    (ambigu.hashCode) +
    (lieu.hashCode) +
    (lieuId == null ? 0 : lieuId!.hashCode) +
    (lieuxReconnus == null ? 0 : lieuxReconnus!.hashCode) +
    (limites.hashCode) +
    (relation == null ? 0 : relation!.hashCode) +
    (repere == null ? 0 : repere!.hashCode) +
    (texte.hashCode);

  @override
  String toString() => 'AdresseNormalisee[alternatives=$alternatives, ambigu=$ambigu, lieu=$lieu, lieuId=$lieuId, lieuxReconnus=$lieuxReconnus, limites=$limites, relation=$relation, repere=$repere, texte=$texte]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.alternatives != null) {
      json[r'alternatives'] = this.alternatives;
    } else {
      json[r'alternatives'] = null;
    }
      json[r'ambigu'] = this.ambigu;
      json[r'lieu'] = this.lieu;
    if (this.lieuId != null) {
      json[r'lieu_id'] = this.lieuId;
    } else {
      json[r'lieu_id'] = null;
    }
    if (this.lieuxReconnus != null) {
      json[r'lieux_reconnus'] = this.lieuxReconnus;
    } else {
      json[r'lieux_reconnus'] = null;
    }
      json[r'limites'] = this.limites;
    if (this.relation != null) {
      json[r'relation'] = this.relation;
    } else {
      json[r'relation'] = null;
    }
    if (this.repere != null) {
      json[r'repere'] = this.repere;
    } else {
      json[r'repere'] = null;
    }
      json[r'texte'] = this.texte;
    return json;
  }

  /// Returns a new [AdresseNormalisee] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdresseNormalisee? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'ambigu'), 'Required key "AdresseNormalisee[ambigu]" is missing from JSON.');
        assert(json[r'ambigu'] != null, 'Required key "AdresseNormalisee[ambigu]" has a null value in JSON.');
        assert(json.containsKey(r'lieu'), 'Required key "AdresseNormalisee[lieu]" is missing from JSON.');
        assert(json[r'lieu'] != null, 'Required key "AdresseNormalisee[lieu]" has a null value in JSON.');
        assert(json.containsKey(r'limites'), 'Required key "AdresseNormalisee[limites]" is missing from JSON.');
        assert(json[r'limites'] != null, 'Required key "AdresseNormalisee[limites]" has a null value in JSON.');
        assert(json.containsKey(r'texte'), 'Required key "AdresseNormalisee[texte]" is missing from JSON.');
        assert(json[r'texte'] != null, 'Required key "AdresseNormalisee[texte]" has a null value in JSON.');
        return true;
      }());

      return AdresseNormalisee(
        alternatives: LieuResume.listFromJson(json[r'alternatives']),
        ambigu: mapValueOfType<bool>(json, r'ambigu')!,
        lieu: LieuResume.fromJson(json[r'lieu'])!,
        lieuId: mapValueOfType<String>(json, r'lieu_id'),
        lieuxReconnus: Recognised.listFromJson(json[r'lieux_reconnus']),
        limites: mapValueOfType<String>(json, r'limites')!,
        relation: AdresseNormaliseeRelationEnum.fromJson(json[r'relation']),
        repere: mapValueOfType<String>(json, r'repere'),
        texte: mapValueOfType<String>(json, r'texte')!,
      );
    }
    return null;
  }

  static List<AdresseNormalisee> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdresseNormalisee>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdresseNormalisee.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdresseNormalisee> mapFromJson(dynamic json) {
    final map = <String, AdresseNormalisee>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdresseNormalisee.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdresseNormalisee-objects as value to a dart map
  static Map<String, List<AdresseNormalisee>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdresseNormalisee>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdresseNormalisee.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ambigu',
    'lieu',
    'limites',
    'texte',
  };
}


enum AdresseNormaliseeRelationEnum {
  enFaceDe._(r'en_face_de'),
  derriere._(r'derriere'),
  aCoteDe._(r'a_cote_de'),
  presDe._(r'pres_de'),
  ;

  /// Instantiate a new enum with the provided value.
  const AdresseNormaliseeRelationEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [AdresseNormaliseeRelationEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static AdresseNormaliseeRelationEnum? fromJson(dynamic value) => AdresseNormaliseeRelationEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [AdresseNormaliseeRelationEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<AdresseNormaliseeRelationEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdresseNormaliseeRelationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdresseNormaliseeRelationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AdresseNormaliseeRelationEnum] to String,
/// and [decode] dynamic data back to [AdresseNormaliseeRelationEnum].
class AdresseNormaliseeRelationEnumTypeTransformer {
  factory AdresseNormaliseeRelationEnumTypeTransformer() => _instance ??= const AdresseNormaliseeRelationEnumTypeTransformer._();

  const AdresseNormaliseeRelationEnumTypeTransformer._();

  String encode(AdresseNormaliseeRelationEnum data) => data._value;

  /// Returns the instance of [AdresseNormaliseeRelationEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AdresseNormaliseeRelationEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is AdresseNormaliseeRelationEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'en_face_de': return AdresseNormaliseeRelationEnum.enFaceDe;
        case r'derriere': return AdresseNormaliseeRelationEnum.derriere;
        case r'a_cote_de': return AdresseNormaliseeRelationEnum.aCoteDe;
        case r'pres_de': return AdresseNormaliseeRelationEnum.presDe;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static AdresseNormaliseeRelationEnumTypeTransformer? _instance;
}


