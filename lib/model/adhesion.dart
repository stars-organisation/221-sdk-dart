//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Adhesion {
  /// Returns a new [Adhesion] instance.
  Adhesion({
    required this.projectId,
    required this.role,
  });

  String projectId;

  AdhesionRoleEnum role;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Adhesion && other.projectId == projectId && other.role == role;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (projectId.hashCode) + (role.hashCode);

  @override
  String toString() => 'Adhesion[projectId=$projectId, role=$role]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'project_id'] = this.projectId;
    json[r'role'] = this.role;
    return json;
  }

  /// Returns a new [Adhesion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Adhesion? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'project_id'),
            'Required key "Adhesion[project_id]" is missing from JSON.');
        assert(json[r'project_id'] != null,
            'Required key "Adhesion[project_id]" has a null value in JSON.');
        assert(json.containsKey(r'role'),
            'Required key "Adhesion[role]" is missing from JSON.');
        assert(json[r'role'] != null,
            'Required key "Adhesion[role]" has a null value in JSON.');
        return true;
      }());

      return Adhesion(
        projectId: mapValueOfType<String>(json, r'project_id')!,
        role: AdhesionRoleEnum.fromJson(json[r'role'])!,
      );
    }
    return null;
  }

  static List<Adhesion> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Adhesion>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Adhesion.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Adhesion> mapFromJson(dynamic json) {
    final map = <String, Adhesion>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Adhesion.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Adhesion-objects as value to a dart map
  static Map<String, List<Adhesion>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Adhesion>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Adhesion.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'project_id',
    'role',
  };
}

enum AdhesionRoleEnum {
  admin._(r'admin'),
  user._(r'user'),
  readOnly._(r'read_only'),
  ;

  /// Instantiate a new enum with the provided value.
  const AdhesionRoleEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [AdhesionRoleEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static AdhesionRoleEnum? fromJson(dynamic value) =>
      AdhesionRoleEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [AdhesionRoleEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<AdhesionRoleEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AdhesionRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdhesionRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AdhesionRoleEnum] to String,
/// and [decode] dynamic data back to [AdhesionRoleEnum].
class AdhesionRoleEnumTypeTransformer {
  factory AdhesionRoleEnumTypeTransformer() =>
      _instance ??= const AdhesionRoleEnumTypeTransformer._();

  const AdhesionRoleEnumTypeTransformer._();

  String encode(AdhesionRoleEnum data) => data._value;

  /// Returns the instance of [AdhesionRoleEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AdhesionRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is AdhesionRoleEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'admin':
          return AdhesionRoleEnum.admin;
        case r'user':
          return AdhesionRoleEnum.user;
        case r'read_only':
          return AdhesionRoleEnum.readOnly;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static AdhesionRoleEnumTypeTransformer? _instance;
}
