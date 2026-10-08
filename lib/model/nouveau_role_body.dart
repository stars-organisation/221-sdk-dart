//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NouveauRoleBody {
  /// Returns a new [NouveauRoleBody] instance.
  NouveauRoleBody({
    required this.role,
  });

  NouveauRoleBodyRoleEnum role;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is NouveauRoleBody && other.role == role;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (role.hashCode);

  @override
  String toString() => 'NouveauRoleBody[role=$role]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'role'] = this.role;
    return json;
  }

  /// Returns a new [NouveauRoleBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NouveauRoleBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'role'),
            'Required key "NouveauRoleBody[role]" is missing from JSON.');
        assert(json[r'role'] != null,
            'Required key "NouveauRoleBody[role]" has a null value in JSON.');
        return true;
      }());

      return NouveauRoleBody(
        role: NouveauRoleBodyRoleEnum.fromJson(json[r'role'])!,
      );
    }
    return null;
  }

  static List<NouveauRoleBody> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NouveauRoleBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NouveauRoleBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NouveauRoleBody> mapFromJson(dynamic json) {
    final map = <String, NouveauRoleBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NouveauRoleBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NouveauRoleBody-objects as value to a dart map
  static Map<String, List<NouveauRoleBody>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NouveauRoleBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NouveauRoleBody.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'role',
  };
}

enum NouveauRoleBodyRoleEnum {
  admin._(r'admin'),
  user._(r'user'),
  readOnly._(r'read_only'),
  ;

  /// Instantiate a new enum with the provided value.
  const NouveauRoleBodyRoleEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [NouveauRoleBodyRoleEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static NouveauRoleBodyRoleEnum? fromJson(dynamic value) =>
      NouveauRoleBodyRoleEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [NouveauRoleBodyRoleEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<NouveauRoleBodyRoleEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NouveauRoleBodyRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NouveauRoleBodyRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NouveauRoleBodyRoleEnum] to String,
/// and [decode] dynamic data back to [NouveauRoleBodyRoleEnum].
class NouveauRoleBodyRoleEnumTypeTransformer {
  factory NouveauRoleBodyRoleEnumTypeTransformer() =>
      _instance ??= const NouveauRoleBodyRoleEnumTypeTransformer._();

  const NouveauRoleBodyRoleEnumTypeTransformer._();

  String encode(NouveauRoleBodyRoleEnum data) => data._value;

  /// Returns the instance of [NouveauRoleBodyRoleEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NouveauRoleBodyRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is NouveauRoleBodyRoleEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'admin':
          return NouveauRoleBodyRoleEnum.admin;
        case r'user':
          return NouveauRoleBodyRoleEnum.user;
        case r'read_only':
          return NouveauRoleBodyRoleEnum.readOnly;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static NouveauRoleBodyRoleEnumTypeTransformer? _instance;
}
