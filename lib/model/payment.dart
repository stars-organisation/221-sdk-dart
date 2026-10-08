//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Payment {
  /// Returns a new [Payment] instance.
  Payment({
    required this.amount,
    this.checkoutUrl,
    required this.createdAt,
    required this.currency,
    this.discountAmount,
    this.fee,
    required this.id,
    required this.livemode,
    required this.merchantReference,
    this.net,
    required this.nextAction,
    this.offerCode,
    this.originalAmount,
    this.paymentLinkDescription,
    required this.rail,
    required this.status,
    required this.withdrawalEligibility,
  });

  /// Montant à payer, remise déduite.
  String amount;

  /// Page de paiement ; null quand l'opérateur ne donne qu'un QR code ou une consigne (voir next_action).
  String? checkoutUrl;

  DateTime createdAt;

  PaymentCurrencyEnum currency;

  /// Remise accordée, avec offer_code.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? discountAmount;

  /// Frais totaux ; null tant que le paiement n'est pas confirmé.
  String? fee;

  String id;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  String merchantReference;

  /// Montant crédité au marchand ; null tant que le paiement n'est pas confirmé.
  String? net;

  /// Ce que le client doit faire tant que le paiement est pending ; null sinon.
  NextAction? nextAction;

  /// Présent si un code promo a été appliqué.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? offerCode;

  /// Montant avant remise, avec offer_code.
  String? originalAmount;

  /// Présent pour un paiement fait sur un lien de paiement : la description du lien, à afficher à la place de merchant_reference (link:…). EN: present for a payment made on a payment link: the link's description, to show instead of merchant_reference (link:…).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentLinkDescription;

  /// Moyen de paiement : pays et opérateur (liste et état : GET /v1/rails).
  PaymentRailEnum rail;

  PaymentStatusEnum status;

  /// confirmed : l'argent est retirable.
  PaymentWithdrawalEligibilityEnum withdrawalEligibility;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Payment &&
          other.amount == amount &&
          other.checkoutUrl == checkoutUrl &&
          other.createdAt == createdAt &&
          other.currency == currency &&
          other.discountAmount == discountAmount &&
          other.fee == fee &&
          other.id == id &&
          other.livemode == livemode &&
          other.merchantReference == merchantReference &&
          other.net == net &&
          other.nextAction == nextAction &&
          other.offerCode == offerCode &&
          other.originalAmount == originalAmount &&
          other.paymentLinkDescription == paymentLinkDescription &&
          other.rail == rail &&
          other.status == status &&
          other.withdrawalEligibility == withdrawalEligibility;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (amount.hashCode) +
      (checkoutUrl == null ? 0 : checkoutUrl!.hashCode) +
      (createdAt.hashCode) +
      (currency.hashCode) +
      (discountAmount == null ? 0 : discountAmount!.hashCode) +
      (fee == null ? 0 : fee!.hashCode) +
      (id.hashCode) +
      (livemode.hashCode) +
      (merchantReference.hashCode) +
      (net == null ? 0 : net!.hashCode) +
      (nextAction == null ? 0 : nextAction!.hashCode) +
      (offerCode == null ? 0 : offerCode!.hashCode) +
      (originalAmount == null ? 0 : originalAmount!.hashCode) +
      (paymentLinkDescription == null ? 0 : paymentLinkDescription!.hashCode) +
      (rail.hashCode) +
      (status.hashCode) +
      (withdrawalEligibility.hashCode);

  @override
  String toString() =>
      'Payment[amount=$amount, checkoutUrl=$checkoutUrl, createdAt=$createdAt, currency=$currency, discountAmount=$discountAmount, fee=$fee, id=$id, livemode=$livemode, merchantReference=$merchantReference, net=$net, nextAction=$nextAction, offerCode=$offerCode, originalAmount=$originalAmount, paymentLinkDescription=$paymentLinkDescription, rail=$rail, status=$status, withdrawalEligibility=$withdrawalEligibility]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'amount'] = this.amount;
    if (this.checkoutUrl != null) {
      json[r'checkout_url'] = this.checkoutUrl;
    } else {
      json[r'checkout_url'] = null;
    }
    json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    json[r'currency'] = this.currency;
    if (this.discountAmount != null) {
      json[r'discount_amount'] = this.discountAmount;
    } else {
      json[r'discount_amount'] = null;
    }
    if (this.fee != null) {
      json[r'fee'] = this.fee;
    } else {
      json[r'fee'] = null;
    }
    json[r'id'] = this.id;
    json[r'livemode'] = this.livemode;
    json[r'merchant_reference'] = this.merchantReference;
    if (this.net != null) {
      json[r'net'] = this.net;
    } else {
      json[r'net'] = null;
    }
    if (this.nextAction != null) {
      json[r'next_action'] = this.nextAction;
    } else {
      json[r'next_action'] = null;
    }
    if (this.offerCode != null) {
      json[r'offer_code'] = this.offerCode;
    } else {
      json[r'offer_code'] = null;
    }
    if (this.originalAmount != null) {
      json[r'original_amount'] = this.originalAmount;
    } else {
      json[r'original_amount'] = null;
    }
    if (this.paymentLinkDescription != null) {
      json[r'payment_link_description'] = this.paymentLinkDescription;
    } else {
      json[r'payment_link_description'] = null;
    }
    json[r'rail'] = this.rail;
    json[r'status'] = this.status;
    json[r'withdrawal_eligibility'] = this.withdrawalEligibility;
    return json;
  }

  /// Returns a new [Payment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Payment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'amount'),
            'Required key "Payment[amount]" is missing from JSON.');
        assert(json[r'amount'] != null,
            'Required key "Payment[amount]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'),
            'Required key "Payment[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null,
            'Required key "Payment[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'currency'),
            'Required key "Payment[currency]" is missing from JSON.');
        assert(json[r'currency'] != null,
            'Required key "Payment[currency]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "Payment[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "Payment[id]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "Payment[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "Payment[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'merchant_reference'),
            'Required key "Payment[merchant_reference]" is missing from JSON.');
        assert(json[r'merchant_reference'] != null,
            'Required key "Payment[merchant_reference]" has a null value in JSON.');
        assert(json.containsKey(r'next_action'),
            'Required key "Payment[next_action]" is missing from JSON.');
        assert(json.containsKey(r'rail'),
            'Required key "Payment[rail]" is missing from JSON.');
        assert(json[r'rail'] != null,
            'Required key "Payment[rail]" has a null value in JSON.');
        assert(json.containsKey(r'status'),
            'Required key "Payment[status]" is missing from JSON.');
        assert(json[r'status'] != null,
            'Required key "Payment[status]" has a null value in JSON.');
        assert(json.containsKey(r'withdrawal_eligibility'),
            'Required key "Payment[withdrawal_eligibility]" is missing from JSON.');
        assert(json[r'withdrawal_eligibility'] != null,
            'Required key "Payment[withdrawal_eligibility]" has a null value in JSON.');
        return true;
      }());

      return Payment(
        amount: mapValueOfType<String>(json, r'amount')!,
        checkoutUrl: mapValueOfType<String>(json, r'checkout_url'),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        currency: PaymentCurrencyEnum.fromJson(json[r'currency'])!,
        discountAmount: mapValueOfType<String>(json, r'discount_amount'),
        fee: mapValueOfType<String>(json, r'fee'),
        id: mapValueOfType<String>(json, r'id')!,
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        merchantReference: mapValueOfType<String>(json, r'merchant_reference')!,
        net: mapValueOfType<String>(json, r'net'),
        nextAction: NextAction.fromJson(json[r'next_action']),
        offerCode: mapValueOfType<String>(json, r'offer_code'),
        originalAmount: mapValueOfType<String>(json, r'original_amount'),
        paymentLinkDescription:
            mapValueOfType<String>(json, r'payment_link_description'),
        rail: PaymentRailEnum.fromJson(json[r'rail'])!,
        status: PaymentStatusEnum.fromJson(json[r'status'])!,
        withdrawalEligibility: PaymentWithdrawalEligibilityEnum.fromJson(
            json[r'withdrawal_eligibility'])!,
      );
    }
    return null;
  }

  static List<Payment> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Payment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Payment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Payment> mapFromJson(dynamic json) {
    final map = <String, Payment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Payment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Payment-objects as value to a dart map
  static Map<String, List<Payment>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Payment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Payment.listFromJson(
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
    'created_at',
    'currency',
    'id',
    'livemode',
    'merchant_reference',
    'next_action',
    'rail',
    'status',
    'withdrawal_eligibility',
  };
}

enum PaymentCurrencyEnum {
  XOF._(r'XOF'),
  ;

  /// Instantiate a new enum with the provided value.
  const PaymentCurrencyEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PaymentCurrencyEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PaymentCurrencyEnum? fromJson(dynamic value) =>
      PaymentCurrencyEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PaymentCurrencyEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PaymentCurrencyEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentCurrencyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentCurrencyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentCurrencyEnum] to String,
/// and [decode] dynamic data back to [PaymentCurrencyEnum].
class PaymentCurrencyEnumTypeTransformer {
  factory PaymentCurrencyEnumTypeTransformer() =>
      _instance ??= const PaymentCurrencyEnumTypeTransformer._();

  const PaymentCurrencyEnumTypeTransformer._();

  String encode(PaymentCurrencyEnum data) => data._value;

  /// Returns the instance of [PaymentCurrencyEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentCurrencyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PaymentCurrencyEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'XOF':
          return PaymentCurrencyEnum.XOF;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PaymentCurrencyEnumTypeTransformer? _instance;
}

/// Moyen de paiement : pays et opérateur (liste et état : GET /v1/rails).
enum PaymentRailEnum {
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
  const PaymentRailEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PaymentRailEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PaymentRailEnum? fromJson(dynamic value) =>
      PaymentRailEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PaymentRailEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PaymentRailEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentRailEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentRailEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentRailEnum] to String,
/// and [decode] dynamic data back to [PaymentRailEnum].
class PaymentRailEnumTypeTransformer {
  factory PaymentRailEnumTypeTransformer() =>
      _instance ??= const PaymentRailEnumTypeTransformer._();

  const PaymentRailEnumTypeTransformer._();

  String encode(PaymentRailEnum data) => data._value;

  /// Returns the instance of [PaymentRailEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentRailEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PaymentRailEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'sn_wave':
          return PaymentRailEnum.snWave;
        case r'sn_orange':
          return PaymentRailEnum.snOrange;
        case r'ci_wave':
          return PaymentRailEnum.ciWave;
        case r'ci_orange':
          return PaymentRailEnum.ciOrange;
        case r'ci_mtn':
          return PaymentRailEnum.ciMtn;
        case r'ci_moov':
          return PaymentRailEnum.ciMoov;
        case r'bf_orange':
          return PaymentRailEnum.bfOrange;
        case r'bf_wave':
          return PaymentRailEnum.bfWave;
        case r'bf_moov':
          return PaymentRailEnum.bfMoov;
        case r'tg_moov':
          return PaymentRailEnum.tgMoov;
        case r'tg_togocell':
          return PaymentRailEnum.tgTogocell;
        case r'bj_moov':
          return PaymentRailEnum.bjMoov;
        case r'bj_mtn':
          return PaymentRailEnum.bjMtn;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PaymentRailEnumTypeTransformer? _instance;
}

enum PaymentStatusEnum {
  created._(r'created'),
  pending._(r'pending'),
  confirmed._(r'confirmed'),
  failed._(r'failed'),
  expired._(r'expired'),
  unknown._(r'unknown'),
  ;

  /// Instantiate a new enum with the provided value.
  const PaymentStatusEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PaymentStatusEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PaymentStatusEnum? fromJson(dynamic value) =>
      PaymentStatusEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PaymentStatusEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PaymentStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentStatusEnum] to String,
/// and [decode] dynamic data back to [PaymentStatusEnum].
class PaymentStatusEnumTypeTransformer {
  factory PaymentStatusEnumTypeTransformer() =>
      _instance ??= const PaymentStatusEnumTypeTransformer._();

  const PaymentStatusEnumTypeTransformer._();

  String encode(PaymentStatusEnum data) => data._value;

  /// Returns the instance of [PaymentStatusEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PaymentStatusEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'created':
          return PaymentStatusEnum.created;
        case r'pending':
          return PaymentStatusEnum.pending;
        case r'confirmed':
          return PaymentStatusEnum.confirmed;
        case r'failed':
          return PaymentStatusEnum.failed;
        case r'expired':
          return PaymentStatusEnum.expired;
        case r'unknown':
          return PaymentStatusEnum.unknown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PaymentStatusEnumTypeTransformer? _instance;
}

/// confirmed : l'argent est retirable.
enum PaymentWithdrawalEligibilityEnum {
  confirmed._(r'confirmed'),
  notConfirmed._(r'not_confirmed'),
  ;

  /// Instantiate a new enum with the provided value.
  const PaymentWithdrawalEligibilityEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PaymentWithdrawalEligibilityEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PaymentWithdrawalEligibilityEnum? fromJson(dynamic value) =>
      PaymentWithdrawalEligibilityEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PaymentWithdrawalEligibilityEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PaymentWithdrawalEligibilityEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentWithdrawalEligibilityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentWithdrawalEligibilityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentWithdrawalEligibilityEnum] to String,
/// and [decode] dynamic data back to [PaymentWithdrawalEligibilityEnum].
class PaymentWithdrawalEligibilityEnumTypeTransformer {
  factory PaymentWithdrawalEligibilityEnumTypeTransformer() =>
      _instance ??= const PaymentWithdrawalEligibilityEnumTypeTransformer._();

  const PaymentWithdrawalEligibilityEnumTypeTransformer._();

  String encode(PaymentWithdrawalEligibilityEnum data) => data._value;

  /// Returns the instance of [PaymentWithdrawalEligibilityEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentWithdrawalEligibilityEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data is PaymentWithdrawalEligibilityEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'confirmed':
          return PaymentWithdrawalEligibilityEnum.confirmed;
        case r'not_confirmed':
          return PaymentWithdrawalEligibilityEnum.notConfirmed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PaymentWithdrawalEligibilityEnumTypeTransformer? _instance;
}
