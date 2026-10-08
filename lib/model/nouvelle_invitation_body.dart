//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NouvelleInvitationBody {
  /// Returns a new [NouvelleInvitationBody] instance.
  NouvelleInvitationBody({
    required this.email,
    required this.role,
  });

  String email;

  NouvelleInvitationBodyRoleEnum role;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NouvelleInvitationBody &&
          other.email == email &&
          other.role == role;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (email.hashCode) + (role.hashCode);

  @override
  String toString() => 'NouvelleInvitationBody[email=$email, role=$role]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'email'] = this.email;
    json[r'role'] = this.role;
    return json;
  }

  /// Returns a new [NouvelleInvitationBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NouvelleInvitationBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'email'),
            'Required key "NouvelleInvitationBody[email]" is missing from JSON.');
        assert(json[r'email'] != null,
            'Required key "NouvelleInvitationBody[email]" has a null value in JSON.');
        assert(json.containsKey(r'role'),
            'Required key "NouvelleInvitationBody[role]" is missing from JSON.');
        assert(json[r'role'] != null,
            'Required key "NouvelleInvitationBody[role]" has a null value in JSON.');
        return true;
      }());

      return NouvelleInvitationBody(
        email: mapValueOfType<String>(json, r'email')!,
        role: NouvelleInvitationBodyRoleEnum.fromJson(json[r'role'])!,
      );
    }
    return null;
  }

  static List<NouvelleInvitationBody> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NouvelleInvitationBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NouvelleInvitationBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NouvelleInvitationBody> mapFromJson(dynamic json) {
    final map = <String, NouvelleInvitationBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NouvelleInvitationBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NouvelleInvitationBody-objects as value to a dart map
  static Map<String, List<NouvelleInvitationBody>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NouvelleInvitationBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NouvelleInvitationBody.listFromJson(
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
    'role',
  };
}

enum NouvelleInvitationBodyRoleEnum {
  admin._(r'admin'),
  user._(r'user'),
  readOnly._(r'read_only'),
  ;

  /// Instantiate a new enum with the provided value.
  const NouvelleInvitationBodyRoleEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [NouvelleInvitationBodyRoleEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static NouvelleInvitationBodyRoleEnum? fromJson(dynamic value) =>
      NouvelleInvitationBodyRoleEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [NouvelleInvitationBodyRoleEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<NouvelleInvitationBodyRoleEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NouvelleInvitationBodyRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NouvelleInvitationBodyRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NouvelleInvitationBodyRoleEnum] to String,
/// and [decode] dynamic data back to [NouvelleInvitationBodyRoleEnum].
class NouvelleInvitationBodyRoleEnumTypeTransformer {
  factory NouvelleInvitationBodyRoleEnumTypeTransformer() =>
      _instance ??= const NouvelleInvitationBodyRoleEnumTypeTransformer._();

  const NouvelleInvitationBodyRoleEnumTypeTransformer._();

  String encode(NouvelleInvitationBodyRoleEnum data) => data._value;

  /// Returns the instance of [NouvelleInvitationBodyRoleEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NouvelleInvitationBodyRoleEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data is NouvelleInvitationBodyRoleEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'admin':
          return NouvelleInvitationBodyRoleEnum.admin;
        case r'user':
          return NouvelleInvitationBodyRoleEnum.user;
        case r'read_only':
          return NouvelleInvitationBodyRoleEnum.readOnly;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static NouvelleInvitationBodyRoleEnumTypeTransformer? _instance;
}
