//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JourFerie {
  /// Returns a new [JourFerie] instance.
  JourFerie({
    required this.date,
    required this.dateStatus,
    required this.id,
    required this.name,
    this.sources = const [],
    required this.type,
  });

  DateTime date;

  /// previsionnelle : date dépendant d'une observation, à confirmer.
  JourFerieDateStatusEnum dateStatus;

  String id;

  NomBilingue name;

  List<SourceVerifiee> sources;

  JourFerieTypeEnum type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JourFerie &&
          other.date == date &&
          other.dateStatus == dateStatus &&
          other.id == id &&
          other.name == name &&
          _deepEquality.equals(other.sources, sources) &&
          other.type == type;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (date.hashCode) +
      (dateStatus.hashCode) +
      (id.hashCode) +
      (name.hashCode) +
      (sources.hashCode) +
      (type.hashCode);

  @override
  String toString() =>
      'JourFerie[date=$date, dateStatus=$dateStatus, id=$id, name=$name, sources=$sources, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'date'] = _dateFormatter.format(this.date);
    json[r'date_status'] = this.dateStatus;
    json[r'id'] = this.id;
    json[r'name'] = this.name;
    json[r'sources'] = this.sources;
    json[r'type'] = this.type;
    return json;
  }

  /// Returns a new [JourFerie] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JourFerie? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'date'),
            'Required key "JourFerie[date]" is missing from JSON.');
        assert(json[r'date'] != null,
            'Required key "JourFerie[date]" has a null value in JSON.');
        assert(json.containsKey(r'date_status'),
            'Required key "JourFerie[date_status]" is missing from JSON.');
        assert(json[r'date_status'] != null,
            'Required key "JourFerie[date_status]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "JourFerie[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "JourFerie[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'),
            'Required key "JourFerie[name]" is missing from JSON.');
        assert(json[r'name'] != null,
            'Required key "JourFerie[name]" has a null value in JSON.');
        assert(json.containsKey(r'sources'),
            'Required key "JourFerie[sources]" is missing from JSON.');
        assert(json[r'sources'] != null,
            'Required key "JourFerie[sources]" has a null value in JSON.');
        assert(json.containsKey(r'type'),
            'Required key "JourFerie[type]" is missing from JSON.');
        assert(json[r'type'] != null,
            'Required key "JourFerie[type]" has a null value in JSON.');
        return true;
      }());

      return JourFerie(
        date: mapDateTime(json, r'date', r'')!,
        dateStatus: JourFerieDateStatusEnum.fromJson(json[r'date_status'])!,
        id: mapValueOfType<String>(json, r'id')!,
        name: NomBilingue.fromJson(json[r'name'])!,
        sources: SourceVerifiee.listFromJson(json[r'sources']),
        type: JourFerieTypeEnum.fromJson(json[r'type'])!,
      );
    }
    return null;
  }

  static List<JourFerie> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <JourFerie>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JourFerie.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JourFerie> mapFromJson(dynamic json) {
    final map = <String, JourFerie>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JourFerie.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JourFerie-objects as value to a dart map
  static Map<String, List<JourFerie>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<JourFerie>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JourFerie.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'date',
    'date_status',
    'id',
    'name',
    'sources',
    'type',
  };
}

/// previsionnelle : date dépendant d'une observation, à confirmer.
enum JourFerieDateStatusEnum {
  confirmee._(r'confirmee'),
  previsionnelle._(r'previsionnelle'),
  ;

  /// Instantiate a new enum with the provided value.
  const JourFerieDateStatusEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [JourFerieDateStatusEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static JourFerieDateStatusEnum? fromJson(dynamic value) =>
      JourFerieDateStatusEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [JourFerieDateStatusEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<JourFerieDateStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <JourFerieDateStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JourFerieDateStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [JourFerieDateStatusEnum] to String,
/// and [decode] dynamic data back to [JourFerieDateStatusEnum].
class JourFerieDateStatusEnumTypeTransformer {
  factory JourFerieDateStatusEnumTypeTransformer() =>
      _instance ??= const JourFerieDateStatusEnumTypeTransformer._();

  const JourFerieDateStatusEnumTypeTransformer._();

  String encode(JourFerieDateStatusEnum data) => data._value;

  /// Returns the instance of [JourFerieDateStatusEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  JourFerieDateStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is JourFerieDateStatusEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'confirmee':
          return JourFerieDateStatusEnum.confirmee;
        case r'previsionnelle':
          return JourFerieDateStatusEnum.previsionnelle;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static JourFerieDateStatusEnumTypeTransformer? _instance;
}

enum JourFerieTypeEnum {
  civile._(r'civile'),
  religieuse._(r'religieuse'),
  ;

  /// Instantiate a new enum with the provided value.
  const JourFerieTypeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [JourFerieTypeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static JourFerieTypeEnum? fromJson(dynamic value) =>
      JourFerieTypeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [JourFerieTypeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<JourFerieTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <JourFerieTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JourFerieTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [JourFerieTypeEnum] to String,
/// and [decode] dynamic data back to [JourFerieTypeEnum].
class JourFerieTypeEnumTypeTransformer {
  factory JourFerieTypeEnumTypeTransformer() =>
      _instance ??= const JourFerieTypeEnumTypeTransformer._();

  const JourFerieTypeEnumTypeTransformer._();

  String encode(JourFerieTypeEnum data) => data._value;

  /// Returns the instance of [JourFerieTypeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  JourFerieTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is JourFerieTypeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'civile':
          return JourFerieTypeEnum.civile;
        case r'religieuse':
          return JourFerieTypeEnum.religieuse;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static JourFerieTypeEnumTypeTransformer? _instance;
}
