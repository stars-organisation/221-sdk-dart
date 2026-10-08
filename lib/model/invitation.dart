//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Invitation {
  /// Returns a new [Invitation] instance.
  Invitation({
    required this.email,
    required this.expiresAt,
    required this.id,
    required this.role,
  });

  String email;

  DateTime expiresAt;

  String id;

  InvitationRoleEnum role;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Invitation &&
    other.email == email &&
    other.expiresAt == expiresAt &&
    other.id == id &&
    other.role == role;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (expiresAt.hashCode) +
    (id.hashCode) +
    (role.hashCode);

  @override
  String toString() => 'Invitation[email=$email, expiresAt=$expiresAt, id=$id, role=$role]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = this.email;
      json[r'expires_at'] = this.expiresAt.toUtc().toIso8601String();
      json[r'id'] = this.id;
      json[r'role'] = this.role;
    return json;
  }

  /// Returns a new [Invitation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Invitation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'email'), 'Required key "Invitation[email]" is missing from JSON.');
        assert(json[r'email'] != null, 'Required key "Invitation[email]" has a null value in JSON.');
        assert(json.containsKey(r'expires_at'), 'Required key "Invitation[expires_at]" is missing from JSON.');
        assert(json[r'expires_at'] != null, 'Required key "Invitation[expires_at]" has a null value in JSON.');
        assert(json.containsKey(r'id'), 'Required key "Invitation[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Invitation[id]" has a null value in JSON.');
        assert(json.containsKey(r'role'), 'Required key "Invitation[role]" is missing from JSON.');
        assert(json[r'role'] != null, 'Required key "Invitation[role]" has a null value in JSON.');
        return true;
      }());

      return Invitation(
        email: mapValueOfType<String>(json, r'email')!,
        expiresAt: mapDateTime(json, r'expires_at', r'')!,
        id: mapValueOfType<String>(json, r'id')!,
        role: InvitationRoleEnum.fromJson(json[r'role'])!,
      );
    }
    return null;
  }

  static List<Invitation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Invitation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Invitation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Invitation> mapFromJson(dynamic json) {
    final map = <String, Invitation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Invitation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Invitation-objects as value to a dart map
  static Map<String, List<Invitation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Invitation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Invitation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'expires_at',
    'id',
    'role',
  };
}


enum InvitationRoleEnum {
  admin._(r'admin'),
  user._(r'user'),
  readOnly._(r'read_only'),
  ;

  /// Instantiate a new enum with the provided value.
  const InvitationRoleEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [InvitationRoleEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static InvitationRoleEnum? fromJson(dynamic value) => InvitationRoleEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [InvitationRoleEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<InvitationRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvitationRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvitationRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvitationRoleEnum] to String,
/// and [decode] dynamic data back to [InvitationRoleEnum].
class InvitationRoleEnumTypeTransformer {
  factory InvitationRoleEnumTypeTransformer() => _instance ??= const InvitationRoleEnumTypeTransformer._();

  const InvitationRoleEnumTypeTransformer._();

  String encode(InvitationRoleEnum data) => data._value;

  /// Returns the instance of [InvitationRoleEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvitationRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is InvitationRoleEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'admin': return InvitationRoleEnum.admin;
        case r'user': return InvitationRoleEnum.user;
        case r'read_only': return InvitationRoleEnum.readOnly;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static InvitationRoleEnumTypeTransformer? _instance;
}


