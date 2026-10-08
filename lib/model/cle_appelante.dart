//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CleAppelante {
  /// Returns a new [CleAppelante] instance.
  CleAppelante({
    required this.mode,
    required this.name,
    required this.projectId,
    this.scopes = const [],
  });

  CleAppelanteModeEnum mode;

  String name;

  String projectId;

  List<String>? scopes;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CleAppelante &&
          other.mode == mode &&
          other.name == name &&
          other.projectId == projectId &&
          _deepEquality.equals(other.scopes, scopes);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (mode.hashCode) +
      (name.hashCode) +
      (projectId.hashCode) +
      (scopes == null ? 0 : scopes!.hashCode);

  @override
  String toString() =>
      'CleAppelante[mode=$mode, name=$name, projectId=$projectId, scopes=$scopes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'mode'] = this.mode;
    json[r'name'] = this.name;
    json[r'project_id'] = this.projectId;
    if (this.scopes != null) {
      json[r'scopes'] = this.scopes;
    } else {
      json[r'scopes'] = null;
    }
    return json;
  }

  /// Returns a new [CleAppelante] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CleAppelante? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'mode'),
            'Required key "CleAppelante[mode]" is missing from JSON.');
        assert(json[r'mode'] != null,
            'Required key "CleAppelante[mode]" has a null value in JSON.');
        assert(json.containsKey(r'name'),
            'Required key "CleAppelante[name]" is missing from JSON.');
        assert(json[r'name'] != null,
            'Required key "CleAppelante[name]" has a null value in JSON.');
        assert(json.containsKey(r'project_id'),
            'Required key "CleAppelante[project_id]" is missing from JSON.');
        assert(json[r'project_id'] != null,
            'Required key "CleAppelante[project_id]" has a null value in JSON.');
        return true;
      }());

      return CleAppelante(
        mode: CleAppelanteModeEnum.fromJson(json[r'mode'])!,
        name: mapValueOfType<String>(json, r'name')!,
        projectId: mapValueOfType<String>(json, r'project_id')!,
        scopes: json[r'scopes'] is Iterable
            ? (json[r'scopes'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<CleAppelante> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CleAppelante>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CleAppelante.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CleAppelante> mapFromJson(dynamic json) {
    final map = <String, CleAppelante>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CleAppelante.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CleAppelante-objects as value to a dart map
  static Map<String, List<CleAppelante>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CleAppelante>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CleAppelante.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'mode',
    'name',
    'project_id',
  };
}

enum CleAppelanteModeEnum {
  test._(r'test'),
  live._(r'live'),
  ;

  /// Instantiate a new enum with the provided value.
  const CleAppelanteModeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [CleAppelanteModeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static CleAppelanteModeEnum? fromJson(dynamic value) =>
      CleAppelanteModeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [CleAppelanteModeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<CleAppelanteModeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CleAppelanteModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CleAppelanteModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CleAppelanteModeEnum] to String,
/// and [decode] dynamic data back to [CleAppelanteModeEnum].
class CleAppelanteModeEnumTypeTransformer {
  factory CleAppelanteModeEnumTypeTransformer() =>
      _instance ??= const CleAppelanteModeEnumTypeTransformer._();

  const CleAppelanteModeEnumTypeTransformer._();

  String encode(CleAppelanteModeEnum data) => data._value;

  /// Returns the instance of [CleAppelanteModeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CleAppelanteModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is CleAppelanteModeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'test':
          return CleAppelanteModeEnum.test;
        case r'live':
          return CleAppelanteModeEnum.live;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static CleAppelanteModeEnumTypeTransformer? _instance;
}
