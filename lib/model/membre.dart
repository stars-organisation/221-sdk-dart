//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Membre {
  /// Returns a new [Membre] instance.
  Membre({
    required this.email,
    required this.joinedAt,
    required this.name,
    required this.role,
    required this.userId,
  });

  String email;

  DateTime joinedAt;

  String name;

  MembreRoleEnum role;

  String userId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Membre &&
          other.email == email &&
          other.joinedAt == joinedAt &&
          other.name == name &&
          other.role == role &&
          other.userId == userId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (email.hashCode) +
      (joinedAt.hashCode) +
      (name.hashCode) +
      (role.hashCode) +
      (userId.hashCode);

  @override
  String toString() =>
      'Membre[email=$email, joinedAt=$joinedAt, name=$name, role=$role, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'email'] = this.email;
    json[r'joined_at'] = this.joinedAt.toUtc().toIso8601String();
    json[r'name'] = this.name;
    json[r'role'] = this.role;
    json[r'user_id'] = this.userId;
    return json;
  }

  /// Returns a new [Membre] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Membre? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'email'),
            'Required key "Membre[email]" is missing from JSON.');
        assert(json[r'email'] != null,
            'Required key "Membre[email]" has a null value in JSON.');
        assert(json.containsKey(r'joined_at'),
            'Required key "Membre[joined_at]" is missing from JSON.');
        assert(json[r'joined_at'] != null,
            'Required key "Membre[joined_at]" has a null value in JSON.');
        assert(json.containsKey(r'name'),
            'Required key "Membre[name]" is missing from JSON.');
        assert(json[r'name'] != null,
            'Required key "Membre[name]" has a null value in JSON.');
        assert(json.containsKey(r'role'),
            'Required key "Membre[role]" is missing from JSON.');
        assert(json[r'role'] != null,
            'Required key "Membre[role]" has a null value in JSON.');
        assert(json.containsKey(r'user_id'),
            'Required key "Membre[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null,
            'Required key "Membre[user_id]" has a null value in JSON.');
        return true;
      }());

      return Membre(
        email: mapValueOfType<String>(json, r'email')!,
        joinedAt: mapDateTime(json, r'joined_at', r'')!,
        name: mapValueOfType<String>(json, r'name')!,
        role: MembreRoleEnum.fromJson(json[r'role'])!,
        userId: mapValueOfType<String>(json, r'user_id')!,
      );
    }
    return null;
  }

  static List<Membre> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Membre>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Membre.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Membre> mapFromJson(dynamic json) {
    final map = <String, Membre>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Membre.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Membre-objects as value to a dart map
  static Map<String, List<Membre>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Membre>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Membre.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'joined_at',
    'name',
    'role',
    'user_id',
  };
}

enum MembreRoleEnum {
  admin._(r'admin'),
  user._(r'user'),
  readOnly._(r'read_only'),
  ;

  /// Instantiate a new enum with the provided value.
  const MembreRoleEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [MembreRoleEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static MembreRoleEnum? fromJson(dynamic value) =>
      MembreRoleEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [MembreRoleEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<MembreRoleEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MembreRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MembreRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MembreRoleEnum] to String,
/// and [decode] dynamic data back to [MembreRoleEnum].
class MembreRoleEnumTypeTransformer {
  factory MembreRoleEnumTypeTransformer() =>
      _instance ??= const MembreRoleEnumTypeTransformer._();

  const MembreRoleEnumTypeTransformer._();

  String encode(MembreRoleEnum data) => data._value;

  /// Returns the instance of [MembreRoleEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MembreRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is MembreRoleEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'admin':
          return MembreRoleEnum.admin;
        case r'user':
          return MembreRoleEnum.user;
        case r'read_only':
          return MembreRoleEnum.readOnly;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static MembreRoleEnumTypeTransformer? _instance;
}
