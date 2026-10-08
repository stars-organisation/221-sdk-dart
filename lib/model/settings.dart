//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Settings {
  /// Returns a new [Settings] instance.
  Settings({
    required this.livemode,
    this.railsEnabled = const [],
    this.rateLimitPerMinute,
    required this.refundFeePayerDefault,
  });

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  /// Moyens de paiement activés (absent de la réponse du PUT). Se modifie par PUT /v1/rails/{id}/enabled.
  List<SettingsRailsEnabledEnum> railsEnabled;

  /// Requêtes autorisées par minute et par projet (absent de la réponse du PUT) ; au-delà : RATE_LIMITED.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rateLimitPerMinute;

  SettingsRefundFeePayerDefaultEnum refundFeePayerDefault;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Settings &&
          other.livemode == livemode &&
          _deepEquality.equals(other.railsEnabled, railsEnabled) &&
          other.rateLimitPerMinute == rateLimitPerMinute &&
          other.refundFeePayerDefault == refundFeePayerDefault;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (livemode.hashCode) +
      (railsEnabled.hashCode) +
      (rateLimitPerMinute == null ? 0 : rateLimitPerMinute!.hashCode) +
      (refundFeePayerDefault.hashCode);

  @override
  String toString() =>
      'Settings[livemode=$livemode, railsEnabled=$railsEnabled, rateLimitPerMinute=$rateLimitPerMinute, refundFeePayerDefault=$refundFeePayerDefault]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'livemode'] = this.livemode;
    json[r'rails_enabled'] = this.railsEnabled;
    if (this.rateLimitPerMinute != null) {
      json[r'rate_limit_per_minute'] = this.rateLimitPerMinute;
    } else {
      json[r'rate_limit_per_minute'] = null;
    }
    json[r'refund_fee_payer_default'] = this.refundFeePayerDefault;
    return json;
  }

  /// Returns a new [Settings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Settings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'livemode'),
            'Required key "Settings[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "Settings[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'refund_fee_payer_default'),
            'Required key "Settings[refund_fee_payer_default]" is missing from JSON.');
        assert(json[r'refund_fee_payer_default'] != null,
            'Required key "Settings[refund_fee_payer_default]" has a null value in JSON.');
        return true;
      }());

      return Settings(
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        railsEnabled:
            SettingsRailsEnabledEnum.listFromJson(json[r'rails_enabled']),
        rateLimitPerMinute: mapValueOfType<int>(json, r'rate_limit_per_minute'),
        refundFeePayerDefault: SettingsRefundFeePayerDefaultEnum.fromJson(
            json[r'refund_fee_payer_default'])!,
      );
    }
    return null;
  }

  static List<Settings> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Settings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Settings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Settings> mapFromJson(dynamic json) {
    final map = <String, Settings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Settings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Settings-objects as value to a dart map
  static Map<String, List<Settings>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Settings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Settings.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'livemode',
    'refund_fee_payer_default',
  };
}

/// Moyen de paiement : pays et opérateur (liste et état : GET /v1/rails).
enum SettingsRailsEnabledEnum {
  snWave._(r'sn_wave'),
  snOrange._(r'sn_orange'),
  ciWave._(r'ci_wave'),
  ciOrange._(r'ci_orange'),
  ciMtn._(r'ci_mtn'),
  ciMoov._(r'ci_moov'),
  bfOrange._(r'bf_orange'),
  bfWave._(r'bf_wave'),
  bfMoov._(r'bf_moov'),
  tgMoov._(r'tg_moov'),
  tgTogocell._(r'tg_togocell'),
  bjMoov._(r'bj_moov'),
  bjMtn._(r'bj_mtn'),
  ;

  /// Instantiate a new enum with the provided value.
  const SettingsRailsEnabledEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [SettingsRailsEnabledEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static SettingsRailsEnabledEnum? fromJson(dynamic value) =>
      SettingsRailsEnabledEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [SettingsRailsEnabledEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<SettingsRailsEnabledEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SettingsRailsEnabledEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SettingsRailsEnabledEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SettingsRailsEnabledEnum] to String,
/// and [decode] dynamic data back to [SettingsRailsEnabledEnum].
class SettingsRailsEnabledEnumTypeTransformer {
  factory SettingsRailsEnabledEnumTypeTransformer() =>
      _instance ??= const SettingsRailsEnabledEnumTypeTransformer._();

  const SettingsRailsEnabledEnumTypeTransformer._();

  String encode(SettingsRailsEnabledEnum data) => data._value;

  /// Returns the instance of [SettingsRailsEnabledEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SettingsRailsEnabledEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is SettingsRailsEnabledEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'sn_wave':
          return SettingsRailsEnabledEnum.snWave;
        case r'sn_orange':
          return SettingsRailsEnabledEnum.snOrange;
        case r'ci_wave':
          return SettingsRailsEnabledEnum.ciWave;
        case r'ci_orange':
          return SettingsRailsEnabledEnum.ciOrange;
        case r'ci_mtn':
          return SettingsRailsEnabledEnum.ciMtn;
        case r'ci_moov':
          return SettingsRailsEnabledEnum.ciMoov;
        case r'bf_orange':
          return SettingsRailsEnabledEnum.bfOrange;
        case r'bf_wave':
          return SettingsRailsEnabledEnum.bfWave;
        case r'bf_moov':
          return SettingsRailsEnabledEnum.bfMoov;
        case r'tg_moov':
          return SettingsRailsEnabledEnum.tgMoov;
        case r'tg_togocell':
          return SettingsRailsEnabledEnum.tgTogocell;
        case r'bj_moov':
          return SettingsRailsEnabledEnum.bjMoov;
        case r'bj_mtn':
          return SettingsRailsEnabledEnum.bjMtn;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static SettingsRailsEnabledEnumTypeTransformer? _instance;
}

enum SettingsRefundFeePayerDefaultEnum {
  merchant._(r'merchant'),
  customer._(r'customer'),
  ;

  /// Instantiate a new enum with the provided value.
  const SettingsRefundFeePayerDefaultEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [SettingsRefundFeePayerDefaultEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static SettingsRefundFeePayerDefaultEnum? fromJson(dynamic value) =>
      SettingsRefundFeePayerDefaultEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [SettingsRefundFeePayerDefaultEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<SettingsRefundFeePayerDefaultEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SettingsRefundFeePayerDefaultEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SettingsRefundFeePayerDefaultEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SettingsRefundFeePayerDefaultEnum] to String,
/// and [decode] dynamic data back to [SettingsRefundFeePayerDefaultEnum].
class SettingsRefundFeePayerDefaultEnumTypeTransformer {
  factory SettingsRefundFeePayerDefaultEnumTypeTransformer() =>
      _instance ??= const SettingsRefundFeePayerDefaultEnumTypeTransformer._();

  const SettingsRefundFeePayerDefaultEnumTypeTransformer._();

  String encode(SettingsRefundFeePayerDefaultEnum data) => data._value;

  /// Returns the instance of [SettingsRefundFeePayerDefaultEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SettingsRefundFeePayerDefaultEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data is SettingsRefundFeePayerDefaultEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'merchant':
          return SettingsRefundFeePayerDefaultEnum.merchant;
        case r'customer':
          return SettingsRefundFeePayerDefaultEnum.customer;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static SettingsRefundFeePayerDefaultEnumTypeTransformer? _instance;
}
