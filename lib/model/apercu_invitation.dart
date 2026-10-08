//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApercuInvitation {
  /// Returns a new [ApercuInvitation] instance.
  ApercuInvitation({
    required this.emailMasked,
    required this.expiresAt,
    required this.projectName,
    required this.role,
    required this.status,
  });

  String emailMasked;

  DateTime expiresAt;

  String projectName;

  ApercuInvitationRoleEnum role;

  ApercuInvitationStatusEnum status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApercuInvitation &&
          other.emailMasked == emailMasked &&
          other.expiresAt == expiresAt &&
          other.projectName == projectName &&
          other.role == role &&
          other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (emailMasked.hashCode) +
      (expiresAt.hashCode) +
      (projectName.hashCode) +
      (role.hashCode) +
      (status.hashCode);

  @override
  String toString() =>
      'ApercuInvitation[emailMasked=$emailMasked, expiresAt=$expiresAt, projectName=$projectName, role=$role, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'email_masked'] = this.emailMasked;
    json[r'expires_at'] = this.expiresAt.toUtc().toIso8601String();
    json[r'project_name'] = this.projectName;
    json[r'role'] = this.role;
    json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [ApercuInvitation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApercuInvitation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'email_masked'),
            'Required key "ApercuInvitation[email_masked]" is missing from JSON.');
        assert(json[r'email_masked'] != null,
            'Required key "ApercuInvitation[email_masked]" has a null value in JSON.');
        assert(json.containsKey(r'expires_at'),
            'Required key "ApercuInvitation[expires_at]" is missing from JSON.');
        assert(json[r'expires_at'] != null,
            'Required key "ApercuInvitation[expires_at]" has a null value in JSON.');
        assert(json.containsKey(r'project_name'),
            'Required key "ApercuInvitation[project_name]" is missing from JSON.');
        assert(json[r'project_name'] != null,
            'Required key "ApercuInvitation[project_name]" has a null value in JSON.');
        assert(json.containsKey(r'role'),
            'Required key "ApercuInvitation[role]" is missing from JSON.');
        assert(json[r'role'] != null,
            'Required key "ApercuInvitation[role]" has a null value in JSON.');
        assert(json.containsKey(r'status'),
            'Required key "ApercuInvitation[status]" is missing from JSON.');
        assert(json[r'status'] != null,
            'Required key "ApercuInvitation[status]" has a null value in JSON.');
        return true;
      }());

      return ApercuInvitation(
        emailMasked: mapValueOfType<String>(json, r'email_masked')!,
        expiresAt: mapDateTime(json, r'expires_at', r'')!,
        projectName: mapValueOfType<String>(json, r'project_name')!,
        role: ApercuInvitationRoleEnum.fromJson(json[r'role'])!,
        status: ApercuInvitationStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<ApercuInvitation> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApercuInvitation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApercuInvitation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApercuInvitation> mapFromJson(dynamic json) {
    final map = <String, ApercuInvitation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApercuInvitation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApercuInvitation-objects as value to a dart map
  static Map<String, List<ApercuInvitation>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApercuInvitation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApercuInvitation.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email_masked',
    'expires_at',
    'project_name',
    'role',
    'status',
  };
}

enum ApercuInvitationRoleEnum {
  admin._(r'admin'),
  user._(r'user'),
  readOnly._(r'read_only'),
  ;

  /// Instantiate a new enum with the provided value.
  const ApercuInvitationRoleEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [ApercuInvitationRoleEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static ApercuInvitationRoleEnum? fromJson(dynamic value) =>
      ApercuInvitationRoleEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [ApercuInvitationRoleEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<ApercuInvitationRoleEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApercuInvitationRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApercuInvitationRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ApercuInvitationRoleEnum] to String,
/// and [decode] dynamic data back to [ApercuInvitationRoleEnum].
class ApercuInvitationRoleEnumTypeTransformer {
  factory ApercuInvitationRoleEnumTypeTransformer() =>
      _instance ??= const ApercuInvitationRoleEnumTypeTransformer._();

  const ApercuInvitationRoleEnumTypeTransformer._();

  String encode(ApercuInvitationRoleEnum data) => data._value;

  /// Returns the instance of [ApercuInvitationRoleEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ApercuInvitationRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is ApercuInvitationRoleEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'admin':
          return ApercuInvitationRoleEnum.admin;
        case r'user':
          return ApercuInvitationRoleEnum.user;
        case r'read_only':
          return ApercuInvitationRoleEnum.readOnly;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static ApercuInvitationRoleEnumTypeTransformer? _instance;
}

enum ApercuInvitationStatusEnum {
  pending._(r'pending'),
  used._(r'used'),
  expired._(r'expired'),
  ;

  /// Instantiate a new enum with the provided value.
  const ApercuInvitationStatusEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [ApercuInvitationStatusEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static ApercuInvitationStatusEnum? fromJson(dynamic value) =>
      ApercuInvitationStatusEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [ApercuInvitationStatusEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<ApercuInvitationStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApercuInvitationStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApercuInvitationStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ApercuInvitationStatusEnum] to String,
/// and [decode] dynamic data back to [ApercuInvitationStatusEnum].
class ApercuInvitationStatusEnumTypeTransformer {
  factory ApercuInvitationStatusEnumTypeTransformer() =>
      _instance ??= const ApercuInvitationStatusEnumTypeTransformer._();

  const ApercuInvitationStatusEnumTypeTransformer._();

  String encode(ApercuInvitationStatusEnum data) => data._value;

  /// Returns the instance of [ApercuInvitationStatusEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ApercuInvitationStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is ApercuInvitationStatusEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'pending':
          return ApercuInvitationStatusEnum.pending;
        case r'used':
          return ApercuInvitationStatusEnum.used;
        case r'expired':
          return ApercuInvitationStatusEnum.expired;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static ApercuInvitationStatusEnumTypeTransformer? _instance;
}
