//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Quota {
  /// Returns a new [Quota] instance.
  Quota({
    required this.accountDailyLimit,
    required this.accountUsed,
    required this.anonymousDailyLimit,
    required this.keyDailyLimit,
    required this.keyLimit,
    required this.rateLimitPerMinute,
    required this.reset,
    required this.tier,
    required this.verifiedAccountDailyLimit,
  });

  int accountDailyLimit;

  int accountUsed;

  int anonymousDailyLimit;

  int keyDailyLimit;

  int keyLimit;

  /// Limite anti-abus des routes 221 Pay, par projet et par minute.
  int rateLimitPerMinute;

  String reset;

  /// verified : identité vérifiée sur au moins un projet du compte.
  QuotaTierEnum tier;

  /// Limite journalière d'un compte vérifié (palier verified).
  int verifiedAccountDailyLimit;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Quota &&
          other.accountDailyLimit == accountDailyLimit &&
          other.accountUsed == accountUsed &&
          other.anonymousDailyLimit == anonymousDailyLimit &&
          other.keyDailyLimit == keyDailyLimit &&
          other.keyLimit == keyLimit &&
          other.rateLimitPerMinute == rateLimitPerMinute &&
          other.reset == reset &&
          other.tier == tier &&
          other.verifiedAccountDailyLimit == verifiedAccountDailyLimit;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (accountDailyLimit.hashCode) +
      (accountUsed.hashCode) +
      (anonymousDailyLimit.hashCode) +
      (keyDailyLimit.hashCode) +
      (keyLimit.hashCode) +
      (rateLimitPerMinute.hashCode) +
      (reset.hashCode) +
      (tier.hashCode) +
      (verifiedAccountDailyLimit.hashCode);

  @override
  String toString() =>
      'Quota[accountDailyLimit=$accountDailyLimit, accountUsed=$accountUsed, anonymousDailyLimit=$anonymousDailyLimit, keyDailyLimit=$keyDailyLimit, keyLimit=$keyLimit, rateLimitPerMinute=$rateLimitPerMinute, reset=$reset, tier=$tier, verifiedAccountDailyLimit=$verifiedAccountDailyLimit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'account_daily_limit'] = this.accountDailyLimit;
    json[r'account_used'] = this.accountUsed;
    json[r'anonymous_daily_limit'] = this.anonymousDailyLimit;
    json[r'key_daily_limit'] = this.keyDailyLimit;
    json[r'key_limit'] = this.keyLimit;
    json[r'rate_limit_per_minute'] = this.rateLimitPerMinute;
    json[r'reset'] = this.reset;
    json[r'tier'] = this.tier;
    json[r'verified_account_daily_limit'] = this.verifiedAccountDailyLimit;
    return json;
  }

  /// Returns a new [Quota] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Quota? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'account_daily_limit'),
            'Required key "Quota[account_daily_limit]" is missing from JSON.');
        assert(json[r'account_daily_limit'] != null,
            'Required key "Quota[account_daily_limit]" has a null value in JSON.');
        assert(json.containsKey(r'account_used'),
            'Required key "Quota[account_used]" is missing from JSON.');
        assert(json[r'account_used'] != null,
            'Required key "Quota[account_used]" has a null value in JSON.');
        assert(json.containsKey(r'anonymous_daily_limit'),
            'Required key "Quota[anonymous_daily_limit]" is missing from JSON.');
        assert(json[r'anonymous_daily_limit'] != null,
            'Required key "Quota[anonymous_daily_limit]" has a null value in JSON.');
        assert(json.containsKey(r'key_daily_limit'),
            'Required key "Quota[key_daily_limit]" is missing from JSON.');
        assert(json[r'key_daily_limit'] != null,
            'Required key "Quota[key_daily_limit]" has a null value in JSON.');
        assert(json.containsKey(r'key_limit'),
            'Required key "Quota[key_limit]" is missing from JSON.');
        assert(json[r'key_limit'] != null,
            'Required key "Quota[key_limit]" has a null value in JSON.');
        assert(json.containsKey(r'rate_limit_per_minute'),
            'Required key "Quota[rate_limit_per_minute]" is missing from JSON.');
        assert(json[r'rate_limit_per_minute'] != null,
            'Required key "Quota[rate_limit_per_minute]" has a null value in JSON.');
        assert(json.containsKey(r'reset'),
            'Required key "Quota[reset]" is missing from JSON.');
        assert(json[r'reset'] != null,
            'Required key "Quota[reset]" has a null value in JSON.');
        assert(json.containsKey(r'tier'),
            'Required key "Quota[tier]" is missing from JSON.');
        assert(json[r'tier'] != null,
            'Required key "Quota[tier]" has a null value in JSON.');
        assert(json.containsKey(r'verified_account_daily_limit'),
            'Required key "Quota[verified_account_daily_limit]" is missing from JSON.');
        assert(json[r'verified_account_daily_limit'] != null,
            'Required key "Quota[verified_account_daily_limit]" has a null value in JSON.');
        return true;
      }());

      return Quota(
        accountDailyLimit: mapValueOfType<int>(json, r'account_daily_limit')!,
        accountUsed: mapValueOfType<int>(json, r'account_used')!,
        anonymousDailyLimit:
            mapValueOfType<int>(json, r'anonymous_daily_limit')!,
        keyDailyLimit: mapValueOfType<int>(json, r'key_daily_limit')!,
        keyLimit: mapValueOfType<int>(json, r'key_limit')!,
        rateLimitPerMinute:
            mapValueOfType<int>(json, r'rate_limit_per_minute')!,
        reset: mapValueOfType<String>(json, r'reset')!,
        tier: QuotaTierEnum.fromJson(json[r'tier'])!,
        verifiedAccountDailyLimit:
            mapValueOfType<int>(json, r'verified_account_daily_limit')!,
      );
    }
    return null;
  }

  static List<Quota> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Quota>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Quota.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Quota> mapFromJson(dynamic json) {
    final map = <String, Quota>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Quota.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Quota-objects as value to a dart map
  static Map<String, List<Quota>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Quota>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Quota.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account_daily_limit',
    'account_used',
    'anonymous_daily_limit',
    'key_daily_limit',
    'key_limit',
    'rate_limit_per_minute',
    'reset',
    'tier',
    'verified_account_daily_limit',
  };
}

/// verified : identité vérifiée sur au moins un projet du compte.
enum QuotaTierEnum {
  standard._(r'standard'),
  verified._(r'verified'),
  ;

  /// Instantiate a new enum with the provided value.
  const QuotaTierEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [QuotaTierEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static QuotaTierEnum? fromJson(dynamic value) =>
      QuotaTierEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [QuotaTierEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<QuotaTierEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <QuotaTierEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuotaTierEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [QuotaTierEnum] to String,
/// and [decode] dynamic data back to [QuotaTierEnum].
class QuotaTierEnumTypeTransformer {
  factory QuotaTierEnumTypeTransformer() =>
      _instance ??= const QuotaTierEnumTypeTransformer._();

  const QuotaTierEnumTypeTransformer._();

  String encode(QuotaTierEnum data) => data._value;

  /// Returns the instance of [QuotaTierEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  QuotaTierEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is QuotaTierEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'standard':
          return QuotaTierEnum.standard;
        case r'verified':
          return QuotaTierEnum.verified;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static QuotaTierEnumTypeTransformer? _instance;
}
