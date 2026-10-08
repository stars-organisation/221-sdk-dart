//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Rattachement {
  /// Returns a new [Rattachement] instance.
  Rattachement({
    required this.arrondissement,
    this.avertissements = const [],
    required this.commune,
    required this.departement,
    this.distanceCentroideKm,
    required this.lat,
    required this.lon,
    required this.methode,
    required this.precision,
    required this.region,
    this.sources = const [],
  });

  Lieu? arrondissement;

  List<String>? avertissements;

  /// Commune dont le contour OpenStreetMap (ODbL, non officiel) contient le point ; null hors des contours appariés.
  Lieu commune;

  Lieu departement;

  double? distanceCentroideKm;

  double lat;

  double lon;

  RattachementMethodeEnum methode;

  String precision;

  Lieu region;

  List<ModelSource>? sources;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Rattachement &&
          other.arrondissement == arrondissement &&
          _deepEquality.equals(other.avertissements, avertissements) &&
          other.commune == commune &&
          other.departement == departement &&
          other.distanceCentroideKm == distanceCentroideKm &&
          other.lat == lat &&
          other.lon == lon &&
          other.methode == methode &&
          other.precision == precision &&
          other.region == region &&
          _deepEquality.equals(other.sources, sources);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (arrondissement == null ? 0 : arrondissement!.hashCode) +
      (avertissements == null ? 0 : avertissements!.hashCode) +
      (commune.hashCode) +
      (departement.hashCode) +
      (distanceCentroideKm == null ? 0 : distanceCentroideKm!.hashCode) +
      (lat.hashCode) +
      (lon.hashCode) +
      (methode.hashCode) +
      (precision.hashCode) +
      (region.hashCode) +
      (sources == null ? 0 : sources!.hashCode);

  @override
  String toString() =>
      'Rattachement[arrondissement=$arrondissement, avertissements=$avertissements, commune=$commune, departement=$departement, distanceCentroideKm=$distanceCentroideKm, lat=$lat, lon=$lon, methode=$methode, precision=$precision, region=$region, sources=$sources]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.arrondissement != null) {
      json[r'arrondissement'] = this.arrondissement;
    } else {
      json[r'arrondissement'] = null;
    }
    if (this.avertissements != null) {
      json[r'avertissements'] = this.avertissements;
    } else {
      json[r'avertissements'] = null;
    }
    json[r'commune'] = this.commune;
    json[r'departement'] = this.departement;
    if (this.distanceCentroideKm != null) {
      json[r'distance_centroide_km'] = this.distanceCentroideKm;
    } else {
      json[r'distance_centroide_km'] = null;
    }
    json[r'lat'] = this.lat;
    json[r'lon'] = this.lon;
    json[r'methode'] = this.methode;
    json[r'precision'] = this.precision;
    json[r'region'] = this.region;
    if (this.sources != null) {
      json[r'sources'] = this.sources;
    } else {
      json[r'sources'] = null;
    }
    return json;
  }

  /// Returns a new [Rattachement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Rattachement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'arrondissement'),
            'Required key "Rattachement[arrondissement]" is missing from JSON.');
        assert(json.containsKey(r'commune'),
            'Required key "Rattachement[commune]" is missing from JSON.');
        assert(json[r'commune'] != null,
            'Required key "Rattachement[commune]" has a null value in JSON.');
        assert(json.containsKey(r'departement'),
            'Required key "Rattachement[departement]" is missing from JSON.');
        assert(json[r'departement'] != null,
            'Required key "Rattachement[departement]" has a null value in JSON.');
        assert(json.containsKey(r'lat'),
            'Required key "Rattachement[lat]" is missing from JSON.');
        assert(json[r'lat'] != null,
            'Required key "Rattachement[lat]" has a null value in JSON.');
        assert(json.containsKey(r'lon'),
            'Required key "Rattachement[lon]" is missing from JSON.');
        assert(json[r'lon'] != null,
            'Required key "Rattachement[lon]" has a null value in JSON.');
        assert(json.containsKey(r'methode'),
            'Required key "Rattachement[methode]" is missing from JSON.');
        assert(json[r'methode'] != null,
            'Required key "Rattachement[methode]" has a null value in JSON.');
        assert(json.containsKey(r'precision'),
            'Required key "Rattachement[precision]" is missing from JSON.');
        assert(json[r'precision'] != null,
            'Required key "Rattachement[precision]" has a null value in JSON.');
        assert(json.containsKey(r'region'),
            'Required key "Rattachement[region]" is missing from JSON.');
        assert(json[r'region'] != null,
            'Required key "Rattachement[region]" has a null value in JSON.');
        return true;
      }());

      return Rattachement(
        arrondissement: Lieu.fromJson(json[r'arrondissement']),
        avertissements: json[r'avertissements'] is Iterable
            ? (json[r'avertissements'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        commune: Lieu.fromJson(json[r'commune'])!,
        departement: Lieu.fromJson(json[r'departement'])!,
        distanceCentroideKm:
            mapValueOfType<double>(json, r'distance_centroide_km'),
        lat: mapValueOfType<double>(json, r'lat')!,
        lon: mapValueOfType<double>(json, r'lon')!,
        methode: RattachementMethodeEnum.fromJson(json[r'methode'])!,
        precision: mapValueOfType<String>(json, r'precision')!,
        region: Lieu.fromJson(json[r'region'])!,
        sources: ModelSource.listFromJson(json[r'sources']),
      );
    }
    return null;
  }

  static List<Rattachement> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Rattachement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Rattachement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Rattachement> mapFromJson(dynamic json) {
    final map = <String, Rattachement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Rattachement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Rattachement-objects as value to a dart map
  static Map<String, List<Rattachement>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Rattachement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Rattachement.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'arrondissement',
    'commune',
    'departement',
    'lat',
    'lon',
    'methode',
    'precision',
    'region',
  };
}

enum RattachementMethodeEnum {
  contour._(r'contour'),
  centroideLePlusProche._(r'centroide_le_plus_proche'),
  ;

  /// Instantiate a new enum with the provided value.
  const RattachementMethodeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [RattachementMethodeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static RattachementMethodeEnum? fromJson(dynamic value) =>
      RattachementMethodeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [RattachementMethodeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<RattachementMethodeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RattachementMethodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RattachementMethodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RattachementMethodeEnum] to String,
/// and [decode] dynamic data back to [RattachementMethodeEnum].
class RattachementMethodeEnumTypeTransformer {
  factory RattachementMethodeEnumTypeTransformer() =>
      _instance ??= const RattachementMethodeEnumTypeTransformer._();

  const RattachementMethodeEnumTypeTransformer._();

  String encode(RattachementMethodeEnum data) => data._value;

  /// Returns the instance of [RattachementMethodeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RattachementMethodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is RattachementMethodeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'contour':
          return RattachementMethodeEnum.contour;
        case r'centroide_le_plus_proche':
          return RattachementMethodeEnum.centroideLePlusProche;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static RattachementMethodeEnumTypeTransformer? _instance;
}
