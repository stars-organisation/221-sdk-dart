//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Coordonnees {
  /// Returns a new [Coordonnees] instance.
  Coordonnees({
    required this.lat,
    required this.lon,
    required this.precision,
  });

  double lat;

  double lon;

  CoordonneesPrecisionEnum precision;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Coordonnees &&
          other.lat == lat &&
          other.lon == lon &&
          other.precision == precision;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (lat.hashCode) + (lon.hashCode) + (precision.hashCode);

  @override
  String toString() => 'Coordonnees[lat=$lat, lon=$lon, precision=$precision]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'lat'] = this.lat;
    json[r'lon'] = this.lon;
    json[r'precision'] = this.precision;
    return json;
  }

  /// Returns a new [Coordonnees] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Coordonnees? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'lat'),
            'Required key "Coordonnees[lat]" is missing from JSON.');
        assert(json[r'lat'] != null,
            'Required key "Coordonnees[lat]" has a null value in JSON.');
        assert(json.containsKey(r'lon'),
            'Required key "Coordonnees[lon]" is missing from JSON.');
        assert(json[r'lon'] != null,
            'Required key "Coordonnees[lon]" has a null value in JSON.');
        assert(json.containsKey(r'precision'),
            'Required key "Coordonnees[precision]" is missing from JSON.');
        assert(json[r'precision'] != null,
            'Required key "Coordonnees[precision]" has a null value in JSON.');
        return true;
      }());

      return Coordonnees(
        lat: mapValueOfType<double>(json, r'lat')!,
        lon: mapValueOfType<double>(json, r'lon')!,
        precision: CoordonneesPrecisionEnum.fromJson(json[r'precision'])!,
      );
    }
    return null;
  }

  static List<Coordonnees> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Coordonnees>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Coordonnees.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Coordonnees> mapFromJson(dynamic json) {
    final map = <String, Coordonnees>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Coordonnees.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Coordonnees-objects as value to a dart map
  static Map<String, List<Coordonnees>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Coordonnees>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Coordonnees.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'lat',
    'lon',
    'precision',
  };
}

enum CoordonneesPrecisionEnum {
  region._(r'region'),
  departement._(r'departement'),
  arrondissement._(r'arrondissement'),
  ville._(r'ville'),
  commune._(r'commune'),
  ;

  /// Instantiate a new enum with the provided value.
  const CoordonneesPrecisionEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [CoordonneesPrecisionEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static CoordonneesPrecisionEnum? fromJson(dynamic value) =>
      CoordonneesPrecisionEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [CoordonneesPrecisionEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<CoordonneesPrecisionEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CoordonneesPrecisionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CoordonneesPrecisionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CoordonneesPrecisionEnum] to String,
/// and [decode] dynamic data back to [CoordonneesPrecisionEnum].
class CoordonneesPrecisionEnumTypeTransformer {
  factory CoordonneesPrecisionEnumTypeTransformer() =>
      _instance ??= const CoordonneesPrecisionEnumTypeTransformer._();

  const CoordonneesPrecisionEnumTypeTransformer._();

  String encode(CoordonneesPrecisionEnum data) => data._value;

  /// Returns the instance of [CoordonneesPrecisionEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CoordonneesPrecisionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is CoordonneesPrecisionEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'region':
          return CoordonneesPrecisionEnum.region;
        case r'departement':
          return CoordonneesPrecisionEnum.departement;
        case r'arrondissement':
          return CoordonneesPrecisionEnum.arrondissement;
        case r'ville':
          return CoordonneesPrecisionEnum.ville;
        case r'commune':
          return CoordonneesPrecisionEnum.commune;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static CoordonneesPrecisionEnumTypeTransformer? _instance;
}
