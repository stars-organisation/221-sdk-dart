//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NouvelleCleBody {
  /// Returns a new [NouvelleCleBody] instance.
  NouvelleCleBody({
    this.dailyLimit,
    this.expiresIn,
    this.mode,
    required this.name,
    this.scopes = const {},
  });

  /// Minimum value: 1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dailyLimit;

  /// Durée de validité : never (sans expiration), 30d, 90d ou 1y.
  NouvelleCleBodyExpiresInEnum? expiresIn;

  /// test (par défaut) ou live, une fois le mode live du projet activé.
  NouvelleCleBodyModeEnum? mode;

  String name;

  /// Produits autorisés ; par défaut les deux.
  Set<NouvelleCleBodyScopesEnum>? scopes;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NouvelleCleBody &&
          other.dailyLimit == dailyLimit &&
          other.expiresIn == expiresIn &&
          other.mode == mode &&
          other.name == name &&
          _deepEquality.equals(other.scopes, scopes);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (dailyLimit == null ? 0 : dailyLimit!.hashCode) +
      (expiresIn == null ? 0 : expiresIn!.hashCode) +
      (mode == null ? 0 : mode!.hashCode) +
      (name.hashCode) +
      (scopes == null ? 0 : scopes!.hashCode);

  @override
  String toString() =>
      'NouvelleCleBody[dailyLimit=$dailyLimit, expiresIn=$expiresIn, mode=$mode, name=$name, scopes=$scopes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dailyLimit != null) {
      json[r'daily_limit'] = this.dailyLimit;
    } else {
      json[r'daily_limit'] = null;
    }
    if (this.expiresIn != null) {
      json[r'expires_in'] = this.expiresIn;
    } else {
      json[r'expires_in'] = null;
    }
    if (this.mode != null) {
      json[r'mode'] = this.mode;
    } else {
      json[r'mode'] = null;
    }
    json[r'name'] = this.name;
    if (this.scopes != null) {
      json[r'scopes'] = this.scopes!.toList(growable: false);
    } else {
      json[r'scopes'] = null;
    }
    return json;
  }

  /// Returns a new [NouvelleCleBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NouvelleCleBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'),
            'Required key "NouvelleCleBody[name]" is missing from JSON.');
        assert(json[r'name'] != null,
            'Required key "NouvelleCleBody[name]" has a null value in JSON.');
        return true;
      }());

      return NouvelleCleBody(
        dailyLimit: mapValueOfType<int>(json, r'daily_limit'),
        expiresIn: NouvelleCleBodyExpiresInEnum.fromJson(json[r'expires_in']),
        mode: NouvelleCleBodyModeEnum.fromJson(json[r'mode']),
        name: mapValueOfType<String>(json, r'name')!,
        scopes: NouvelleCleBodyScopesEnum.listFromJson(json[r'scopes']).toSet(),
      );
    }
    return null;
  }

  static List<NouvelleCleBody> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NouvelleCleBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NouvelleCleBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NouvelleCleBody> mapFromJson(dynamic json) {
    final map = <String, NouvelleCleBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NouvelleCleBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NouvelleCleBody-objects as value to a dart map
  static Map<String, List<NouvelleCleBody>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NouvelleCleBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NouvelleCleBody.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

/// Durée de validité : never (sans expiration), 30d, 90d ou 1y.
enum NouvelleCleBodyExpiresInEnum {
  never._(r'never'),
  n30d._(r'30d'),
  n90d._(r'90d'),
  n1y._(r'1y'),
  ;

  /// Instantiate a new enum with the provided value.
  const NouvelleCleBodyExpiresInEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [NouvelleCleBodyExpiresInEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static NouvelleCleBodyExpiresInEnum? fromJson(dynamic value) =>
      NouvelleCleBodyExpiresInEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [NouvelleCleBodyExpiresInEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<NouvelleCleBodyExpiresInEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NouvelleCleBodyExpiresInEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NouvelleCleBodyExpiresInEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NouvelleCleBodyExpiresInEnum] to String,
/// and [decode] dynamic data back to [NouvelleCleBodyExpiresInEnum].
class NouvelleCleBodyExpiresInEnumTypeTransformer {
  factory NouvelleCleBodyExpiresInEnumTypeTransformer() =>
      _instance ??= const NouvelleCleBodyExpiresInEnumTypeTransformer._();

  const NouvelleCleBodyExpiresInEnumTypeTransformer._();

  String encode(NouvelleCleBodyExpiresInEnum data) => data._value;

  /// Returns the instance of [NouvelleCleBodyExpiresInEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NouvelleCleBodyExpiresInEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is NouvelleCleBodyExpiresInEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'never':
          return NouvelleCleBodyExpiresInEnum.never;
        case r'30d':
          return NouvelleCleBodyExpiresInEnum.n30d;
        case r'90d':
          return NouvelleCleBodyExpiresInEnum.n90d;
        case r'1y':
          return NouvelleCleBodyExpiresInEnum.n1y;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static NouvelleCleBodyExpiresInEnumTypeTransformer? _instance;
}

/// test (par défaut) ou live, une fois le mode live du projet activé.
enum NouvelleCleBodyModeEnum {
  test._(r'test'),
  live._(r'live'),
  ;

  /// Instantiate a new enum with the provided value.
  const NouvelleCleBodyModeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [NouvelleCleBodyModeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static NouvelleCleBodyModeEnum? fromJson(dynamic value) =>
      NouvelleCleBodyModeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [NouvelleCleBodyModeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<NouvelleCleBodyModeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NouvelleCleBodyModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NouvelleCleBodyModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NouvelleCleBodyModeEnum] to String,
/// and [decode] dynamic data back to [NouvelleCleBodyModeEnum].
class NouvelleCleBodyModeEnumTypeTransformer {
  factory NouvelleCleBodyModeEnumTypeTransformer() =>
      _instance ??= const NouvelleCleBodyModeEnumTypeTransformer._();

  const NouvelleCleBodyModeEnumTypeTransformer._();

  String encode(NouvelleCleBodyModeEnum data) => data._value;

  /// Returns the instance of [NouvelleCleBodyModeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NouvelleCleBodyModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is NouvelleCleBodyModeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'test':
          return NouvelleCleBodyModeEnum.test;
        case r'live':
          return NouvelleCleBodyModeEnum.live;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static NouvelleCleBodyModeEnumTypeTransformer? _instance;
}

enum NouvelleCleBodyScopesEnum {
  payments._(r'payments'),
  data._(r'data'),
  ;

  /// Instantiate a new enum with the provided value.
  const NouvelleCleBodyScopesEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [NouvelleCleBodyScopesEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static NouvelleCleBodyScopesEnum? fromJson(dynamic value) =>
      NouvelleCleBodyScopesEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [NouvelleCleBodyScopesEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<NouvelleCleBodyScopesEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NouvelleCleBodyScopesEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NouvelleCleBodyScopesEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NouvelleCleBodyScopesEnum] to String,
/// and [decode] dynamic data back to [NouvelleCleBodyScopesEnum].
class NouvelleCleBodyScopesEnumTypeTransformer {
  factory NouvelleCleBodyScopesEnumTypeTransformer() =>
      _instance ??= const NouvelleCleBodyScopesEnumTypeTransformer._();

  const NouvelleCleBodyScopesEnumTypeTransformer._();

  String encode(NouvelleCleBodyScopesEnum data) => data._value;

  /// Returns the instance of [NouvelleCleBodyScopesEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NouvelleCleBodyScopesEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is NouvelleCleBodyScopesEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'payments':
          return NouvelleCleBodyScopesEnum.payments;
        case r'data':
          return NouvelleCleBodyScopesEnum.data;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static NouvelleCleBodyScopesEnumTypeTransformer? _instance;
}
