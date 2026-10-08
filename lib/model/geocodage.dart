//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Geocodage {
  /// Returns a new [Geocodage] instance.
  Geocodage({
    this.alternatives = const [],
    required this.ambigu,
    this.avertissements = const [],
    this.lat,
    required this.lieu,
    this.lon,
    this.precision,
    this.relation,
    this.repere,
    this.sources = const [],
    required this.texte,
  });

  List<LieuResume>? alternatives;

  bool ambigu;

  List<String>? avertissements;

  double? lat;

  LieuResume lieu;

  double? lon;

  String? precision;

  GeocodageRelationEnum? relation;

  String? repere;

  List<ModelSource>? sources;

  String texte;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Geocodage &&
    _deepEquality.equals(other.alternatives, alternatives) &&
    other.ambigu == ambigu &&
    _deepEquality.equals(other.avertissements, avertissements) &&
    other.lat == lat &&
    other.lieu == lieu &&
    other.lon == lon &&
    other.precision == precision &&
    other.relation == relation &&
    other.repere == repere &&
    _deepEquality.equals(other.sources, sources) &&
    other.texte == texte;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alternatives == null ? 0 : alternatives!.hashCode) +
    (ambigu.hashCode) +
    (avertissements == null ? 0 : avertissements!.hashCode) +
    (lat == null ? 0 : lat!.hashCode) +
    (lieu.hashCode) +
    (lon == null ? 0 : lon!.hashCode) +
    (precision == null ? 0 : precision!.hashCode) +
    (relation == null ? 0 : relation!.hashCode) +
    (repere == null ? 0 : repere!.hashCode) +
    (sources == null ? 0 : sources!.hashCode) +
    (texte.hashCode);

  @override
  String toString() => 'Geocodage[alternatives=$alternatives, ambigu=$ambigu, avertissements=$avertissements, lat=$lat, lieu=$lieu, lon=$lon, precision=$precision, relation=$relation, repere=$repere, sources=$sources, texte=$texte]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.alternatives != null) {
      json[r'alternatives'] = this.alternatives;
    } else {
      json[r'alternatives'] = null;
    }
      json[r'ambigu'] = this.ambigu;
    if (this.avertissements != null) {
      json[r'avertissements'] = this.avertissements;
    } else {
      json[r'avertissements'] = null;
    }
    if (this.lat != null) {
      json[r'lat'] = this.lat;
    } else {
      json[r'lat'] = null;
    }
      json[r'lieu'] = this.lieu;
    if (this.lon != null) {
      json[r'lon'] = this.lon;
    } else {
      json[r'lon'] = null;
    }
    if (this.precision != null) {
      json[r'precision'] = this.precision;
    } else {
      json[r'precision'] = null;
    }
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
    if (this.sources != null) {
      json[r'sources'] = this.sources;
    } else {
      json[r'sources'] = null;
    }
      json[r'texte'] = this.texte;
    return json;
  }

  /// Returns a new [Geocodage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Geocodage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'ambigu'), 'Required key "Geocodage[ambigu]" is missing from JSON.');
        assert(json[r'ambigu'] != null, 'Required key "Geocodage[ambigu]" has a null value in JSON.');
        assert(json.containsKey(r'lieu'), 'Required key "Geocodage[lieu]" is missing from JSON.');
        assert(json[r'lieu'] != null, 'Required key "Geocodage[lieu]" has a null value in JSON.');
        assert(json.containsKey(r'texte'), 'Required key "Geocodage[texte]" is missing from JSON.');
        assert(json[r'texte'] != null, 'Required key "Geocodage[texte]" has a null value in JSON.');
        return true;
      }());

      return Geocodage(
        alternatives: LieuResume.listFromJson(json[r'alternatives']),
        ambigu: mapValueOfType<bool>(json, r'ambigu')!,
        avertissements: json[r'avertissements'] is Iterable
            ? (json[r'avertissements'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        lat: mapValueOfType<double>(json, r'lat'),
        lieu: LieuResume.fromJson(json[r'lieu'])!,
        lon: mapValueOfType<double>(json, r'lon'),
        precision: mapValueOfType<String>(json, r'precision'),
        relation: GeocodageRelationEnum.fromJson(json[r'relation']),
        repere: mapValueOfType<String>(json, r'repere'),
        sources: ModelSource.listFromJson(json[r'sources']),
        texte: mapValueOfType<String>(json, r'texte')!,
      );
    }
    return null;
  }

  static List<Geocodage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Geocodage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Geocodage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Geocodage> mapFromJson(dynamic json) {
    final map = <String, Geocodage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Geocodage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Geocodage-objects as value to a dart map
  static Map<String, List<Geocodage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Geocodage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Geocodage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ambigu',
    'lieu',
    'texte',
  };
}


enum GeocodageRelationEnum {
  enFaceDe._(r'en_face_de'),
  derriere._(r'derriere'),
  aCoteDe._(r'a_cote_de'),
  presDe._(r'pres_de'),
  ;

  /// Instantiate a new enum with the provided value.
  const GeocodageRelationEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [GeocodageRelationEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static GeocodageRelationEnum? fromJson(dynamic value) => GeocodageRelationEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [GeocodageRelationEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<GeocodageRelationEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GeocodageRelationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GeocodageRelationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GeocodageRelationEnum] to String,
/// and [decode] dynamic data back to [GeocodageRelationEnum].
class GeocodageRelationEnumTypeTransformer {
  factory GeocodageRelationEnumTypeTransformer() => _instance ??= const GeocodageRelationEnumTypeTransformer._();

  const GeocodageRelationEnumTypeTransformer._();

  String encode(GeocodageRelationEnum data) => data._value;

  /// Returns the instance of [GeocodageRelationEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GeocodageRelationEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is GeocodageRelationEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'en_face_de': return GeocodageRelationEnum.enFaceDe;
        case r'derriere': return GeocodageRelationEnum.derriere;
        case r'a_cote_de': return GeocodageRelationEnum.aCoteDe;
        case r'pres_de': return GeocodageRelationEnum.presDe;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static GeocodageRelationEnumTypeTransformer? _instance;
}


