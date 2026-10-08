//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PayoutQuote {
  /// Returns a new [PayoutQuote] instance.
  PayoutQuote({
    required this.amount,
    this.debits = const [],
    this.delay,
    required this.destinationId,
    this.destinationType,
    required this.expiresAt,
    required this.fee,
    this.feeRate,
    required this.livemode,
    required this.net,
    required this.quoteHash,
    this.rail,
  });

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String amount;

  /// Virement bancaire : part débitée de chaque solde (sn_wave, sn_orange), au prorata. EN: bank transfer: the part taken from each balance, pro rata.
  List<PayoutDebit> debits;

  /// Virement bancaire : traité à la main, 3 à 5 jours ouvrés. EN: bank transfer: processed by hand in 3 to 5 business days.
  PayoutQuoteDelayEnum? delay;

  String destinationId;

  /// bank : virement vers un compte bancaire (absent pour un numéro mobile).
  PayoutQuoteDestinationTypeEnum? destinationType;

  DateTime expiresAt;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String fee;

  /// Virement bancaire : taux du palier du montant, en points de base. EN: bank transfer: the amount's tier rate, in basis points.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? feeRate;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  /// Montant reçu sur le numéro ou le compte.
  String net;

  /// À renvoyer dans POST /v1/payouts : à usage unique, valable jusqu'à expires_at.
  String quoteHash;

  /// Numéro mobile seulement.
  PayoutQuoteRailEnum? rail;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PayoutQuote &&
          other.amount == amount &&
          _deepEquality.equals(other.debits, debits) &&
          other.delay == delay &&
          other.destinationId == destinationId &&
          other.destinationType == destinationType &&
          other.expiresAt == expiresAt &&
          other.fee == fee &&
          other.feeRate == feeRate &&
          other.livemode == livemode &&
          other.net == net &&
          other.quoteHash == quoteHash &&
          other.rail == rail;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (amount.hashCode) +
      (debits.hashCode) +
      (delay == null ? 0 : delay!.hashCode) +
      (destinationId.hashCode) +
      (destinationType == null ? 0 : destinationType!.hashCode) +
      (expiresAt.hashCode) +
      (fee.hashCode) +
      (feeRate == null ? 0 : feeRate!.hashCode) +
      (livemode.hashCode) +
      (net.hashCode) +
      (quoteHash.hashCode) +
      (rail == null ? 0 : rail!.hashCode);

  @override
  String toString() =>
      'PayoutQuote[amount=$amount, debits=$debits, delay=$delay, destinationId=$destinationId, destinationType=$destinationType, expiresAt=$expiresAt, fee=$fee, feeRate=$feeRate, livemode=$livemode, net=$net, quoteHash=$quoteHash, rail=$rail]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'amount'] = this.amount;
    json[r'debits'] = this.debits;
    if (this.delay != null) {
      json[r'delay'] = this.delay;
    } else {
      json[r'delay'] = null;
    }
    json[r'destination_id'] = this.destinationId;
    if (this.destinationType != null) {
      json[r'destination_type'] = this.destinationType;
    } else {
      json[r'destination_type'] = null;
    }
    json[r'expires_at'] = this.expiresAt.toUtc().toIso8601String();
    json[r'fee'] = this.fee;
    if (this.feeRate != null) {
      json[r'fee_rate'] = this.feeRate;
    } else {
      json[r'fee_rate'] = null;
    }
    json[r'livemode'] = this.livemode;
    json[r'net'] = this.net;
    json[r'quote_hash'] = this.quoteHash;
    if (this.rail != null) {
      json[r'rail'] = this.rail;
    } else {
      json[r'rail'] = null;
    }
    return json;
  }

  /// Returns a new [PayoutQuote] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PayoutQuote? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'amount'),
            'Required key "PayoutQuote[amount]" is missing from JSON.');
        assert(json[r'amount'] != null,
            'Required key "PayoutQuote[amount]" has a null value in JSON.');
        assert(json.containsKey(r'destination_id'),
            'Required key "PayoutQuote[destination_id]" is missing from JSON.');
        assert(json[r'destination_id'] != null,
            'Required key "PayoutQuote[destination_id]" has a null value in JSON.');
        assert(json.containsKey(r'expires_at'),
            'Required key "PayoutQuote[expires_at]" is missing from JSON.');
        assert(json[r'expires_at'] != null,
            'Required key "PayoutQuote[expires_at]" has a null value in JSON.');
        assert(json.containsKey(r'fee'),
            'Required key "PayoutQuote[fee]" is missing from JSON.');
        assert(json[r'fee'] != null,
            'Required key "PayoutQuote[fee]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "PayoutQuote[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "PayoutQuote[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'net'),
            'Required key "PayoutQuote[net]" is missing from JSON.');
        assert(json[r'net'] != null,
            'Required key "PayoutQuote[net]" has a null value in JSON.');
        assert(json.containsKey(r'quote_hash'),
            'Required key "PayoutQuote[quote_hash]" is missing from JSON.');
        assert(json[r'quote_hash'] != null,
            'Required key "PayoutQuote[quote_hash]" has a null value in JSON.');
        return true;
      }());

      return PayoutQuote(
        amount: mapValueOfType<String>(json, r'amount')!,
        debits: PayoutDebit.listFromJson(json[r'debits']),
        delay: PayoutQuoteDelayEnum.fromJson(json[r'delay']),
        destinationId: mapValueOfType<String>(json, r'destination_id')!,
        destinationType:
            PayoutQuoteDestinationTypeEnum.fromJson(json[r'destination_type']),
        expiresAt: mapDateTime(json, r'expires_at', r'')!,
        fee: mapValueOfType<String>(json, r'fee')!,
        feeRate: mapValueOfType<int>(json, r'fee_rate'),
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        net: mapValueOfType<String>(json, r'net')!,
        quoteHash: mapValueOfType<String>(json, r'quote_hash')!,
        rail: PayoutQuoteRailEnum.fromJson(json[r'rail']),
      );
    }
    return null;
  }

  static List<PayoutQuote> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayoutQuote>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayoutQuote.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PayoutQuote> mapFromJson(dynamic json) {
    final map = <String, PayoutQuote>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PayoutQuote.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PayoutQuote-objects as value to a dart map
  static Map<String, List<PayoutQuote>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PayoutQuote>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PayoutQuote.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'amount',
    'destination_id',
    'expires_at',
    'fee',
    'livemode',
    'net',
    'quote_hash',
  };
}

/// Virement bancaire : traité à la main, 3 à 5 jours ouvrés. EN: bank transfer: processed by hand in 3 to 5 business days.
enum PayoutQuoteDelayEnum {
  n35businessDays._(r'3-5 business days'),
  ;

  /// Instantiate a new enum with the provided value.
  const PayoutQuoteDelayEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PayoutQuoteDelayEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PayoutQuoteDelayEnum? fromJson(dynamic value) =>
      PayoutQuoteDelayEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PayoutQuoteDelayEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PayoutQuoteDelayEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayoutQuoteDelayEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayoutQuoteDelayEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PayoutQuoteDelayEnum] to String,
/// and [decode] dynamic data back to [PayoutQuoteDelayEnum].
class PayoutQuoteDelayEnumTypeTransformer {
  factory PayoutQuoteDelayEnumTypeTransformer() =>
      _instance ??= const PayoutQuoteDelayEnumTypeTransformer._();

  const PayoutQuoteDelayEnumTypeTransformer._();

  String encode(PayoutQuoteDelayEnum data) => data._value;

  /// Returns the instance of [PayoutQuoteDelayEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PayoutQuoteDelayEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PayoutQuoteDelayEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'3-5 business days':
          return PayoutQuoteDelayEnum.n35businessDays;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PayoutQuoteDelayEnumTypeTransformer? _instance;
}

/// bank : virement vers un compte bancaire (absent pour un numéro mobile).
enum PayoutQuoteDestinationTypeEnum {
  bank._(r'bank'),
  ;

  /// Instantiate a new enum with the provided value.
  const PayoutQuoteDestinationTypeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PayoutQuoteDestinationTypeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PayoutQuoteDestinationTypeEnum? fromJson(dynamic value) =>
      PayoutQuoteDestinationTypeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PayoutQuoteDestinationTypeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PayoutQuoteDestinationTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayoutQuoteDestinationTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayoutQuoteDestinationTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PayoutQuoteDestinationTypeEnum] to String,
/// and [decode] dynamic data back to [PayoutQuoteDestinationTypeEnum].
class PayoutQuoteDestinationTypeEnumTypeTransformer {
  factory PayoutQuoteDestinationTypeEnumTypeTransformer() =>
      _instance ??= const PayoutQuoteDestinationTypeEnumTypeTransformer._();

  const PayoutQuoteDestinationTypeEnumTypeTransformer._();

  String encode(PayoutQuoteDestinationTypeEnum data) => data._value;

  /// Returns the instance of [PayoutQuoteDestinationTypeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PayoutQuoteDestinationTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data is PayoutQuoteDestinationTypeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'bank':
          return PayoutQuoteDestinationTypeEnum.bank;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PayoutQuoteDestinationTypeEnumTypeTransformer? _instance;
}

/// Numéro mobile seulement.
enum PayoutQuoteRailEnum {
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
  const PayoutQuoteRailEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PayoutQuoteRailEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PayoutQuoteRailEnum? fromJson(dynamic value) =>
      PayoutQuoteRailEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PayoutQuoteRailEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PayoutQuoteRailEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayoutQuoteRailEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayoutQuoteRailEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PayoutQuoteRailEnum] to String,
/// and [decode] dynamic data back to [PayoutQuoteRailEnum].
class PayoutQuoteRailEnumTypeTransformer {
  factory PayoutQuoteRailEnumTypeTransformer() =>
      _instance ??= const PayoutQuoteRailEnumTypeTransformer._();

  const PayoutQuoteRailEnumTypeTransformer._();

  String encode(PayoutQuoteRailEnum data) => data._value;

  /// Returns the instance of [PayoutQuoteRailEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PayoutQuoteRailEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PayoutQuoteRailEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'sn_wave':
          return PayoutQuoteRailEnum.snWave;
        case r'sn_orange':
          return PayoutQuoteRailEnum.snOrange;
        case r'ci_wave':
          return PayoutQuoteRailEnum.ciWave;
        case r'ci_orange':
          return PayoutQuoteRailEnum.ciOrange;
        case r'ci_mtn':
          return PayoutQuoteRailEnum.ciMtn;
        case r'ci_moov':
          return PayoutQuoteRailEnum.ciMoov;
        case r'bf_orange':
          return PayoutQuoteRailEnum.bfOrange;
        case r'bf_wave':
          return PayoutQuoteRailEnum.bfWave;
        case r'bf_moov':
          return PayoutQuoteRailEnum.bfMoov;
        case r'tg_moov':
          return PayoutQuoteRailEnum.tgMoov;
        case r'tg_togocell':
          return PayoutQuoteRailEnum.tgTogocell;
        case r'bj_moov':
          return PayoutQuoteRailEnum.bjMoov;
        case r'bj_mtn':
          return PayoutQuoteRailEnum.bjMtn;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PayoutQuoteRailEnumTypeTransformer? _instance;
}
