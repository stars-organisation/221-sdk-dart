//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Distance {
  /// Returns a new [Distance] instance.
  Distance({
    this.avertissements = const [],
    required this.description,
    required this.distanceKm,
    required this.distanceM,
    required this.from,
    required this.methode,
    required this.to,
  });

  List<String>? avertissements;

  String description;

  double distanceKm;

  int distanceM;

  Extremite from;

  DistanceMethodeEnum methode;

  Extremite to;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Distance &&
          _deepEquality.equals(other.avertissements, avertissements) &&
          other.description == description &&
          other.distanceKm == distanceKm &&
          other.distanceM == distanceM &&
          other.from == from &&
          other.methode == methode &&
          other.to == to;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (avertissements == null ? 0 : avertissements!.hashCode) +
      (description.hashCode) +
      (distanceKm.hashCode) +
      (distanceM.hashCode) +
      (from.hashCode) +
      (methode.hashCode) +
      (to.hashCode);

  @override
  String toString() =>
      'Distance[avertissements=$avertissements, description=$description, distanceKm=$distanceKm, distanceM=$distanceM, from=$from, methode=$methode, to=$to]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.avertissements != null) {
      json[r'avertissements'] = this.avertissements;
    } else {
      json[r'avertissements'] = null;
    }
    json[r'description'] = this.description;
    json[r'distance_km'] = this.distanceKm;
    json[r'distance_m'] = this.distanceM;
    json[r'from'] = this.from;
    json[r'methode'] = this.methode;
    json[r'to'] = this.to;
    return json;
  }

  /// Returns a new [Distance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Distance? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'description'),
            'Required key "Distance[description]" is missing from JSON.');
        assert(json[r'description'] != null,
            'Required key "Distance[description]" has a null value in JSON.');
        assert(json.containsKey(r'distance_km'),
            'Required key "Distance[distance_km]" is missing from JSON.');
        assert(json[r'distance_km'] != null,
            'Required key "Distance[distance_km]" has a null value in JSON.');
        assert(json.containsKey(r'distance_m'),
            'Required key "Distance[distance_m]" is missing from JSON.');
        assert(json[r'distance_m'] != null,
            'Required key "Distance[distance_m]" has a null value in JSON.');
        assert(json.containsKey(r'from'),
            'Required key "Distance[from]" is missing from JSON.');
        assert(json[r'from'] != null,
            'Required key "Distance[from]" has a null value in JSON.');
        assert(json.containsKey(r'methode'),
            'Required key "Distance[methode]" is missing from JSON.');
        assert(json[r'methode'] != null,
            'Required key "Distance[methode]" has a null value in JSON.');
        assert(json.containsKey(r'to'),
            'Required key "Distance[to]" is missing from JSON.');
        assert(json[r'to'] != null,
            'Required key "Distance[to]" has a null value in JSON.');
        return true;
      }());

      return Distance(
        avertissements: json[r'avertissements'] is Iterable
            ? (json[r'avertissements'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        description: mapValueOfType<String>(json, r'description')!,
        distanceKm: mapValueOfType<double>(json, r'distance_km')!,
        distanceM: mapValueOfType<int>(json, r'distance_m')!,
        from: Extremite.fromJson(json[r'from'])!,
        methode: DistanceMethodeEnum.fromJson(json[r'methode'])!,
        to: Extremite.fromJson(json[r'to'])!,
      );
    }
    return null;
  }

  static List<Distance> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Distance>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Distance.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Distance> mapFromJson(dynamic json) {
    final map = <String, Distance>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Distance.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Distance-objects as value to a dart map
  static Map<String, List<Distance>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Distance>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Distance.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'description',
    'distance_km',
    'distance_m',
    'from',
    'methode',
    'to',
  };
}

enum DistanceMethodeEnum {
  volOiseau._(r'vol_oiseau'),
  ;

  /// Instantiate a new enum with the provided value.
  const DistanceMethodeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [DistanceMethodeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static DistanceMethodeEnum? fromJson(dynamic value) =>
      DistanceMethodeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [DistanceMethodeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<DistanceMethodeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DistanceMethodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DistanceMethodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DistanceMethodeEnum] to String,
/// and [decode] dynamic data back to [DistanceMethodeEnum].
class DistanceMethodeEnumTypeTransformer {
  factory DistanceMethodeEnumTypeTransformer() =>
      _instance ??= const DistanceMethodeEnumTypeTransformer._();

  const DistanceMethodeEnumTypeTransformer._();

  String encode(DistanceMethodeEnum data) => data._value;

  /// Returns the instance of [DistanceMethodeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DistanceMethodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is DistanceMethodeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'vol_oiseau':
          return DistanceMethodeEnum.volOiseau;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static DistanceMethodeEnumTypeTransformer? _instance;
}
