//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CleApi {
  /// Returns a new [CleApi] instance.
  CleApi({
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
  CleApiModeEnum mode;

  String name;

  String prefix;

  DateTime? revokedAt;

  /// Clé remplacée par celle-ci lors d'une rotation ; null sinon.
  String? rotatedFrom;

  /// Produits que la clé peut appeler : payments, data.
  List<String>? scopes;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CleApi &&
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
          _deepEquality.equals(other.scopes, scopes);

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
      (scopes == null ? 0 : scopes!.hashCode);

  @override
  String toString() =>
      'CleApi[createdAt=$createdAt, dailyLimit=$dailyLimit, disabledAt=$disabledAt, disabledReason=$disabledReason, expiresAt=$expiresAt, id=$id, lastUsedAt=$lastUsedAt, mode=$mode, name=$name, prefix=$prefix, revokedAt=$revokedAt, rotatedFrom=$rotatedFrom, scopes=$scopes]';

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
    return json;
  }

  /// Returns a new [CleApi] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CleApi? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'created_at'),
            'Required key "CleApi[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null,
            'Required key "CleApi[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'daily_limit'),
            'Required key "CleApi[daily_limit]" is missing from JSON.');
        assert(json[r'daily_limit'] != null,
            'Required key "CleApi[daily_limit]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "CleApi[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "CleApi[id]" has a null value in JSON.');
        assert(json.containsKey(r'mode'),
            'Required key "CleApi[mode]" is missing from JSON.');
        assert(json[r'mode'] != null,
            'Required key "CleApi[mode]" has a null value in JSON.');
        assert(json.containsKey(r'name'),
            'Required key "CleApi[name]" is missing from JSON.');
        assert(json[r'name'] != null,
            'Required key "CleApi[name]" has a null value in JSON.');
        assert(json.containsKey(r'prefix'),
            'Required key "CleApi[prefix]" is missing from JSON.');
        assert(json[r'prefix'] != null,
            'Required key "CleApi[prefix]" has a null value in JSON.');
        return true;
      }());

      return CleApi(
        createdAt: mapDateTime(json, r'created_at', r'')!,
        dailyLimit: mapValueOfType<int>(json, r'daily_limit')!,
        disabledAt: mapDateTime(json, r'disabled_at', r''),
        disabledReason: mapValueOfType<String>(json, r'disabled_reason'),
        expiresAt: mapDateTime(json, r'expires_at', r''),
        id: mapValueOfType<String>(json, r'id')!,
        lastUsedAt: mapDateTime(json, r'last_used_at', r''),
        mode: CleApiModeEnum.fromJson(json[r'mode'])!,
        name: mapValueOfType<String>(json, r'name')!,
        prefix: mapValueOfType<String>(json, r'prefix')!,
        revokedAt: mapDateTime(json, r'revoked_at', r''),
        rotatedFrom: mapValueOfType<String>(json, r'rotated_from'),
        scopes: json[r'scopes'] is Iterable
            ? (json[r'scopes'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<CleApi> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CleApi>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CleApi.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CleApi> mapFromJson(dynamic json) {
    final map = <String, CleApi>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CleApi.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CleApi-objects as value to a dart map
  static Map<String, List<CleApi>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CleApi>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CleApi.listFromJson(
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
  };
}

/// test : aucun argent réel ; live : argent réel.
enum CleApiModeEnum {
  test._(r'test'),
  live._(r'live'),
  ;

  /// Instantiate a new enum with the provided value.
  const CleApiModeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [CleApiModeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static CleApiModeEnum? fromJson(dynamic value) =>
      CleApiModeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [CleApiModeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<CleApiModeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CleApiModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CleApiModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CleApiModeEnum] to String,
/// and [decode] dynamic data back to [CleApiModeEnum].
class CleApiModeEnumTypeTransformer {
  factory CleApiModeEnumTypeTransformer() =>
      _instance ??= const CleApiModeEnumTypeTransformer._();

  const CleApiModeEnumTypeTransformer._();

  String encode(CleApiModeEnum data) => data._value;

  /// Returns the instance of [CleApiModeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CleApiModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is CleApiModeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'test':
          return CleApiModeEnum.test;
        case r'live':
          return CleApiModeEnum.live;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static CleApiModeEnumTypeTransformer? _instance;
}
