//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CleCreee {
  /// Returns a new [CleCreee] instance.
  CleCreee({
    required this.createdAt,
    required this.dailyLimit,
    this.disabledAt,
    this.disabledReason,
    this.expiresAt,
    required this.id,
    this.lastUsedAt,
    required this.mode,
    required this.name,
    required this.prefix,
    this.revokedAt,
    this.rotatedFrom,
    this.scopes = const [],
    required this.secret,
  });

  DateTime createdAt;

  int dailyLimit;

  /// Désactivation par un administrateur (usage abusif).
  DateTime? disabledAt;

  String? disabledReason;

  /// Fin de validité ; null : sans expiration.
  DateTime? expiresAt;

  String id;

  DateTime? lastUsedAt;

  /// test : aucun argent réel ; live : argent réel.
  CleCreeeModeEnum mode;

  String name;

  String prefix;

  DateTime? revokedAt;

  /// Clé remplacée par celle-ci lors d'une rotation ; null sinon.
  String? rotatedFrom;

  /// Produits que la clé peut appeler : payments, data.
  List<String>? scopes;

  /// À conserver : il ne sera plus jamais affiché.
  String secret;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CleCreee &&
          other.createdAt == createdAt &&
          other.dailyLimit == dailyLimit &&
          other.disabledAt == disabledAt &&
          other.disabledReason == disabledReason &&
          other.expiresAt == expiresAt &&
          other.id == id &&
          other.lastUsedAt == lastUsedAt &&
          other.mode == mode &&
          other.name == name &&
          other.prefix == prefix &&
          other.revokedAt == revokedAt &&
          other.rotatedFrom == rotatedFrom &&
          _deepEquality.equals(other.scopes, scopes) &&
          other.secret == secret;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (createdAt.hashCode) +
      (dailyLimit.hashCode) +
      (disabledAt == null ? 0 : disabledAt!.hashCode) +
      (disabledReason == null ? 0 : disabledReason!.hashCode) +
      (expiresAt == null ? 0 : expiresAt!.hashCode) +
      (id.hashCode) +
      (lastUsedAt == null ? 0 : lastUsedAt!.hashCode) +
      (mode.hashCode) +
      (name.hashCode) +
      (prefix.hashCode) +
      (revokedAt == null ? 0 : revokedAt!.hashCode) +
      (rotatedFrom == null ? 0 : rotatedFrom!.hashCode) +
      (scopes == null ? 0 : scopes!.hashCode) +
      (secret.hashCode);

  @override
  String toString() =>
      'CleCreee[createdAt=$createdAt, dailyLimit=$dailyLimit, disabledAt=$disabledAt, disabledReason=$disabledReason, expiresAt=$expiresAt, id=$id, lastUsedAt=$lastUsedAt, mode=$mode, name=$name, prefix=$prefix, revokedAt=$revokedAt, rotatedFrom=$rotatedFrom, scopes=$scopes, secret=$secret]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    json[r'daily_limit'] = this.dailyLimit;
    if (this.disabledAt != null) {
      json[r'disabled_at'] = this.disabledAt!.toUtc().toIso8601String();
    } else {
      json[r'disabled_at'] = null;
    }
    if (this.disabledReason != null) {
      json[r'disabled_reason'] = this.disabledReason;
    } else {
      json[r'disabled_reason'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expires_at'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expires_at'] = null;
    }
    json[r'id'] = this.id;
    if (this.lastUsedAt != null) {
      json[r'last_used_at'] = this.lastUsedAt!.toUtc().toIso8601String();
    } else {
      json[r'last_used_at'] = null;
    }
    json[r'mode'] = this.mode;
    json[r'name'] = this.name;
    json[r'prefix'] = this.prefix;
    if (this.revokedAt != null) {
      json[r'revoked_at'] = this.revokedAt!.toUtc().toIso8601String();
    } else {
      json[r'revoked_at'] = null;
    }
    if (this.rotatedFrom != null) {
      json[r'rotated_from'] = this.rotatedFrom;
    } else {
      json[r'rotated_from'] = null;
    }
    if (this.scopes != null) {
      json[r'scopes'] = this.scopes;
    } else {
      json[r'scopes'] = null;
    }
    json[r'secret'] = this.secret;
    return json;
  }

  /// Returns a new [CleCreee] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CleCreee? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'created_at'),
            'Required key "CleCreee[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null,
            'Required key "CleCreee[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'daily_limit'),
            'Required key "CleCreee[daily_limit]" is missing from JSON.');
        assert(json[r'daily_limit'] != null,
            'Required key "CleCreee[daily_limit]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "CleCreee[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "CleCreee[id]" has a null value in JSON.');
        assert(json.containsKey(r'mode'),
            'Required key "CleCreee[mode]" is missing from JSON.');
        assert(json[r'mode'] != null,
            'Required key "CleCreee[mode]" has a null value in JSON.');
        assert(json.containsKey(r'name'),
            'Required key "CleCreee[name]" is missing from JSON.');
        assert(json[r'name'] != null,
            'Required key "CleCreee[name]" has a null value in JSON.');
        assert(json.containsKey(r'prefix'),
            'Required key "CleCreee[prefix]" is missing from JSON.');
        assert(json[r'prefix'] != null,
            'Required key "CleCreee[prefix]" has a null value in JSON.');
        assert(json.containsKey(r'secret'),
            'Required key "CleCreee[secret]" is missing from JSON.');
        assert(json[r'secret'] != null,
            'Required key "CleCreee[secret]" has a null value in JSON.');
        return true;
      }());

      return CleCreee(
        createdAt: mapDateTime(json, r'created_at', r'')!,
        dailyLimit: mapValueOfType<int>(json, r'daily_limit')!,
        disabledAt: mapDateTime(json, r'disabled_at', r''),
        disabledReason: mapValueOfType<String>(json, r'disabled_reason'),
        expiresAt: mapDateTime(json, r'expires_at', r''),
        id: mapValueOfType<String>(json, r'id')!,
        lastUsedAt: mapDateTime(json, r'last_used_at', r''),
        mode: CleCreeeModeEnum.fromJson(json[r'mode'])!,
        name: mapValueOfType<String>(json, r'name')!,
        prefix: mapValueOfType<String>(json, r'prefix')!,
        revokedAt: mapDateTime(json, r'revoked_at', r''),
        rotatedFrom: mapValueOfType<String>(json, r'rotated_from'),
        scopes: json[r'scopes'] is Iterable
            ? (json[r'scopes'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        secret: mapValueOfType<String>(json, r'secret')!,
      );
    }
    return null;
  }

  static List<CleCreee> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CleCreee>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CleCreee.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CleCreee> mapFromJson(dynamic json) {
    final map = <String, CleCreee>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CleCreee.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CleCreee-objects as value to a dart map
  static Map<String, List<CleCreee>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CleCreee>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CleCreee.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'created_at',
    'daily_limit',
    'id',
    'mode',
    'name',
    'prefix',
    'secret',
  };
}

/// test : aucun argent réel ; live : argent réel.
enum CleCreeeModeEnum {
  test._(r'test'),
  live._(r'live'),
  ;

  /// Instantiate a new enum with the provided value.
  const CleCreeeModeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [CleCreeeModeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static CleCreeeModeEnum? fromJson(dynamic value) =>
      CleCreeeModeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [CleCreeeModeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<CleCreeeModeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CleCreeeModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CleCreeeModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CleCreeeModeEnum] to String,
/// and [decode] dynamic data back to [CleCreeeModeEnum].
class CleCreeeModeEnumTypeTransformer {
  factory CleCreeeModeEnumTypeTransformer() =>
      _instance ??= const CleCreeeModeEnumTypeTransformer._();

  const CleCreeeModeEnumTypeTransformer._();

  String encode(CleCreeeModeEnum data) => data._value;

  /// Returns the instance of [CleCreeeModeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CleCreeeModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is CleCreeeModeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'test':
          return CleCreeeModeEnum.test;
        case r'live':
          return CleCreeeModeEnum.live;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static CleCreeeModeEnumTypeTransformer? _instance;
}
