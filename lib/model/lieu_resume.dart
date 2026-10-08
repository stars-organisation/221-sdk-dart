//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LieuResume {
  /// Returns a new [LieuResume] instance.
  LieuResume({
    required this.contexte,
    required this.coordonnees,
    required this.id,
    required this.level,
    this.name,
    required this.nameSource,
    this.parentId,
    this.population2023,
  });

  String contexte;

  Coordonnees coordonnees;

  String id;

  LieuResumeLevelEnum level;

  String? name;

  String nameSource;

  String? parentId;

  int? population2023;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LieuResume &&
    other.contexte == contexte &&
    other.coordonnees == coordonnees &&
    other.id == id &&
    other.level == level &&
    other.name == name &&
    other.nameSource == nameSource &&
    other.parentId == parentId &&
    other.population2023 == population2023;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (contexte.hashCode) +
    (coordonnees.hashCode) +
    (id.hashCode) +
    (level.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (nameSource.hashCode) +
    (parentId == null ? 0 : parentId!.hashCode) +
    (population2023 == null ? 0 : population2023!.hashCode);

  @override
  String toString() => 'LieuResume[contexte=$contexte, coordonnees=$coordonnees, id=$id, level=$level, name=$name, nameSource=$nameSource, parentId=$parentId, population2023=$population2023]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'contexte'] = this.contexte;
      json[r'coordonnees'] = this.coordonnees;
      json[r'id'] = this.id;
      json[r'level'] = this.level;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'name_source'] = this.nameSource;
    if (this.parentId != null) {
      json[r'parent_id'] = this.parentId;
    } else {
      json[r'parent_id'] = null;
    }
    if (this.population2023 != null) {
      json[r'population_2023'] = this.population2023;
    } else {
      json[r'population_2023'] = null;
    }
    return json;
  }

  /// Returns a new [LieuResume] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LieuResume? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'contexte'), 'Required key "LieuResume[contexte]" is missing from JSON.');
        assert(json[r'contexte'] != null, 'Required key "LieuResume[contexte]" has a null value in JSON.');
        assert(json.containsKey(r'coordonnees'), 'Required key "LieuResume[coordonnees]" is missing from JSON.');
        assert(json[r'coordonnees'] != null, 'Required key "LieuResume[coordonnees]" has a null value in JSON.');
        assert(json.containsKey(r'id'), 'Required key "LieuResume[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "LieuResume[id]" has a null value in JSON.');
        assert(json.containsKey(r'level'), 'Required key "LieuResume[level]" is missing from JSON.');
        assert(json[r'level'] != null, 'Required key "LieuResume[level]" has a null value in JSON.');
        assert(json.containsKey(r'name_source'), 'Required key "LieuResume[name_source]" is missing from JSON.');
        assert(json[r'name_source'] != null, 'Required key "LieuResume[name_source]" has a null value in JSON.');
        return true;
      }());

      return LieuResume(
        contexte: mapValueOfType<String>(json, r'contexte')!,
        coordonnees: Coordonnees.fromJson(json[r'coordonnees'])!,
        id: mapValueOfType<String>(json, r'id')!,
        level: LieuResumeLevelEnum.fromJson(json[r'level'])!,
        name: mapValueOfType<String>(json, r'name'),
        nameSource: mapValueOfType<String>(json, r'name_source')!,
        parentId: mapValueOfType<String>(json, r'parent_id'),
        population2023: mapValueOfType<int>(json, r'population_2023'),
      );
    }
    return null;
  }

  static List<LieuResume> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LieuResume>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LieuResume.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LieuResume> mapFromJson(dynamic json) {
    final map = <String, LieuResume>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LieuResume.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LieuResume-objects as value to a dart map
  static Map<String, List<LieuResume>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LieuResume>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LieuResume.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'contexte',
    'coordonnees',
    'id',
    'level',
    'name_source',
  };
}


enum LieuResumeLevelEnum {
  region._(r'region'),
  departement._(r'departement'),
  arrondissement._(r'arrondissement'),
  ville._(r'ville'),
  commune._(r'commune'),
  localite._(r'localite'),
  ;

  /// Instantiate a new enum with the provided value.
  const LieuResumeLevelEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [LieuResumeLevelEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static LieuResumeLevelEnum? fromJson(dynamic value) => LieuResumeLevelEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [LieuResumeLevelEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<LieuResumeLevelEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LieuResumeLevelEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LieuResumeLevelEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LieuResumeLevelEnum] to String,
/// and [decode] dynamic data back to [LieuResumeLevelEnum].
class LieuResumeLevelEnumTypeTransformer {
  factory LieuResumeLevelEnumTypeTransformer() => _instance ??= const LieuResumeLevelEnumTypeTransformer._();

  const LieuResumeLevelEnumTypeTransformer._();

  String encode(LieuResumeLevelEnum data) => data._value;

  /// Returns the instance of [LieuResumeLevelEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LieuResumeLevelEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is LieuResumeLevelEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'region': return LieuResumeLevelEnum.region;
        case r'departement': return LieuResumeLevelEnum.departement;
        case r'arrondissement': return LieuResumeLevelEnum.arrondissement;
        case r'ville': return LieuResumeLevelEnum.ville;
        case r'commune': return LieuResumeLevelEnum.commune;
        case r'localite': return LieuResumeLevelEnum.localite;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static LieuResumeLevelEnumTypeTransformer? _instance;
}


