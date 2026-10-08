//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Rail {
  /// Returns a new [Rail] instance.
  Rail({
    required this.country,
    required this.countryLabel,
    this.enabledForProject,
    required this.fees,
    required this.label,
    required this.livemode,
    required this.minAmount,
    required this.operator_,
    required this.operatorLabel,
    required this.otpRequired,
    required this.platformState,
    required this.rail,
  });

  /// Code pays ISO 3166-1 alpha-2.
  String country;

  String countryLabel;

  /// Activé sur le projet de l'appelant ; null sans identification.
  bool? enabledForProject;

  /// Ce que paie le marchand ; null sans tarif en vigueur.
  RailFees? fees;

  String label;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String minAmount;

  String operator_;

  String operatorLabel;

  /// true : le client compose un code et vous le passez dans customer_otp.
  bool otpRequired;

  /// Un moyen de paiement encaisse quand il est activé sur le projet et que platform_state vaut open.
  RailPlatformStateEnum platformState;

  /// Moyen de paiement : pays et opérateur (liste et état : GET /v1/rails).
  RailRailEnum rail;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Rail &&
          other.country == country &&
          other.countryLabel == countryLabel &&
          other.enabledForProject == enabledForProject &&
          other.fees == fees &&
          other.label == label &&
          other.livemode == livemode &&
          other.minAmount == minAmount &&
          other.operator_ == operator_ &&
          other.operatorLabel == operatorLabel &&
          other.otpRequired == otpRequired &&
          other.platformState == platformState &&
          other.rail == rail;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (country.hashCode) +
      (countryLabel.hashCode) +
      (enabledForProject == null ? 0 : enabledForProject!.hashCode) +
      (fees == null ? 0 : fees!.hashCode) +
      (label.hashCode) +
      (livemode.hashCode) +
      (minAmount.hashCode) +
      (operator_.hashCode) +
      (operatorLabel.hashCode) +
      (otpRequired.hashCode) +
      (platformState.hashCode) +
      (rail.hashCode);

  @override
  String toString() =>
      'Rail[country=$country, countryLabel=$countryLabel, enabledForProject=$enabledForProject, fees=$fees, label=$label, livemode=$livemode, minAmount=$minAmount, operator_=$operator_, operatorLabel=$operatorLabel, otpRequired=$otpRequired, platformState=$platformState, rail=$rail]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'country'] = this.country;
    json[r'country_label'] = this.countryLabel;
    if (this.enabledForProject != null) {
      json[r'enabled_for_project'] = this.enabledForProject;
    } else {
      json[r'enabled_for_project'] = null;
    }
    if (this.fees != null) {
      json[r'fees'] = this.fees;
    } else {
      json[r'fees'] = null;
    }
    json[r'label'] = this.label;
    json[r'livemode'] = this.livemode;
    json[r'min_amount'] = this.minAmount;
    json[r'operator'] = this.operator_;
    json[r'operator_label'] = this.operatorLabel;
    json[r'otp_required'] = this.otpRequired;
    json[r'platform_state'] = this.platformState;
    json[r'rail'] = this.rail;
    return json;
  }

  /// Returns a new [Rail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Rail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'country'),
            'Required key "Rail[country]" is missing from JSON.');
        assert(json[r'country'] != null,
            'Required key "Rail[country]" has a null value in JSON.');
        assert(json.containsKey(r'country_label'),
            'Required key "Rail[country_label]" is missing from JSON.');
        assert(json[r'country_label'] != null,
            'Required key "Rail[country_label]" has a null value in JSON.');
        assert(json.containsKey(r'fees'),
            'Required key "Rail[fees]" is missing from JSON.');
        assert(json.containsKey(r'label'),
            'Required key "Rail[label]" is missing from JSON.');
        assert(json[r'label'] != null,
            'Required key "Rail[label]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "Rail[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "Rail[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'min_amount'),
            'Required key "Rail[min_amount]" is missing from JSON.');
        assert(json[r'min_amount'] != null,
            'Required key "Rail[min_amount]" has a null value in JSON.');
        assert(json.containsKey(r'operator'),
            'Required key "Rail[operator]" is missing from JSON.');
        assert(json[r'operator'] != null,
            'Required key "Rail[operator]" has a null value in JSON.');
        assert(json.containsKey(r'operator_label'),
            'Required key "Rail[operator_label]" is missing from JSON.');
        assert(json[r'operator_label'] != null,
            'Required key "Rail[operator_label]" has a null value in JSON.');
        assert(json.containsKey(r'otp_required'),
            'Required key "Rail[otp_required]" is missing from JSON.');
        assert(json[r'otp_required'] != null,
            'Required key "Rail[otp_required]" has a null value in JSON.');
        assert(json.containsKey(r'platform_state'),
            'Required key "Rail[platform_state]" is missing from JSON.');
        assert(json[r'platform_state'] != null,
            'Required key "Rail[platform_state]" has a null value in JSON.');
        assert(json.containsKey(r'rail'),
            'Required key "Rail[rail]" is missing from JSON.');
        assert(json[r'rail'] != null,
            'Required key "Rail[rail]" has a null value in JSON.');
        return true;
      }());

      return Rail(
        country: mapValueOfType<String>(json, r'country')!,
        countryLabel: mapValueOfType<String>(json, r'country_label')!,
        enabledForProject: mapValueOfType<bool>(json, r'enabled_for_project'),
        fees: RailFees.fromJson(json[r'fees']),
        label: mapValueOfType<String>(json, r'label')!,
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        minAmount: mapValueOfType<String>(json, r'min_amount')!,
        operator_: mapValueOfType<String>(json, r'operator')!,
        operatorLabel: mapValueOfType<String>(json, r'operator_label')!,
        otpRequired: mapValueOfType<bool>(json, r'otp_required')!,
        platformState: RailPlatformStateEnum.fromJson(json[r'platform_state'])!,
        rail: RailRailEnum.fromJson(json[r'rail'])!,
      );
    }
    return null;
  }

  static List<Rail> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Rail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Rail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Rail> mapFromJson(dynamic json) {
    final map = <String, Rail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Rail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Rail-objects as value to a dart map
  static Map<String, List<Rail>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Rail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Rail.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'country',
    'country_label',
    'fees',
    'label',
    'livemode',
    'min_amount',
    'operator',
    'operator_label',
    'otp_required',
    'platform_state',
    'rail',
  };
}

/// Un moyen de paiement encaisse quand il est activé sur le projet et que platform_state vaut open.
enum RailPlatformStateEnum {
  open._(r'open'),
  notOpen._(r'not_open'),
  incident._(r'incident'),
  ;

  /// Instantiate a new enum with the provided value.
  const RailPlatformStateEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [RailPlatformStateEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static RailPlatformStateEnum? fromJson(dynamic value) =>
      RailPlatformStateEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [RailPlatformStateEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<RailPlatformStateEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RailPlatformStateEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RailPlatformStateEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RailPlatformStateEnum] to String,
/// and [decode] dynamic data back to [RailPlatformStateEnum].
class RailPlatformStateEnumTypeTransformer {
  factory RailPlatformStateEnumTypeTransformer() =>
      _instance ??= const RailPlatformStateEnumTypeTransformer._();

  const RailPlatformStateEnumTypeTransformer._();

  String encode(RailPlatformStateEnum data) => data._value;

  /// Returns the instance of [RailPlatformStateEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RailPlatformStateEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is RailPlatformStateEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'open':
          return RailPlatformStateEnum.open;
        case r'not_open':
          return RailPlatformStateEnum.notOpen;
        case r'incident':
          return RailPlatformStateEnum.incident;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static RailPlatformStateEnumTypeTransformer? _instance;
}

/// Moyen de paiement : pays et opérateur (liste et état : GET /v1/rails).
enum RailRailEnum {
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
  const RailRailEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [RailRailEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static RailRailEnum? fromJson(dynamic value) =>
      RailRailEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [RailRailEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<RailRailEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RailRailEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RailRailEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RailRailEnum] to String,
/// and [decode] dynamic data back to [RailRailEnum].
class RailRailEnumTypeTransformer {
  factory RailRailEnumTypeTransformer() =>
      _instance ??= const RailRailEnumTypeTransformer._();

  const RailRailEnumTypeTransformer._();

  String encode(RailRailEnum data) => data._value;

  /// Returns the instance of [RailRailEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RailRailEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is RailRailEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'sn_wave':
          return RailRailEnum.snWave;
        case r'sn_orange':
          return RailRailEnum.snOrange;
        case r'ci_wave':
          return RailRailEnum.ciWave;
        case r'ci_orange':
          return RailRailEnum.ciOrange;
        case r'ci_mtn':
          return RailRailEnum.ciMtn;
        case r'ci_moov':
          return RailRailEnum.ciMoov;
        case r'bf_orange':
          return RailRailEnum.bfOrange;
        case r'bf_wave':
          return RailRailEnum.bfWave;
        case r'bf_moov':
          return RailRailEnum.bfMoov;
        case r'tg_moov':
          return RailRailEnum.tgMoov;
        case r'tg_togocell':
          return RailRailEnum.tgTogocell;
        case r'bj_moov':
          return RailRailEnum.bjMoov;
        case r'bj_mtn':
          return RailRailEnum.bjMtn;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static RailRailEnumTypeTransformer? _instance;
}
