//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentDetail {
  /// Returns a new [PaymentDetail] instance.
  PaymentDetail({
    required this.amount,
    this.attempts = const [],
    this.checkoutUrl,
    required this.createdAt,
    required this.currency,
    required this.customer,
    this.discountAmount,
    this.disputes = const [],
    this.errorCode,
    this.errorMessage,
    this.fee,
    required this.id,
    required this.livemode,
    required this.merchantReference,
    required this.modifiedAt,
    this.net,
    required this.nextAction,
    this.offerCode,
    this.originalAmount,
    this.paymentLinkDescription,
    required this.rail,
    this.refunds = const [],
    required this.status,
    required this.withdrawalEligibility,
  });

  /// Montant à payer, remise déduite.
  String amount;

  List<PaymentAttempt> attempts;

  /// Page de paiement ; null quand l'opérateur ne donne qu'un QR code ou une consigne (voir next_action).
  String? checkoutUrl;

  DateTime createdAt;

  PaymentDetailCurrencyEnum currency;

  PaymentCustomer customer;

  /// Remise accordée, avec offer_code.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? discountAmount;

  /// Réservé : toujours vide. Les litiges sont sous GET /v1/disputes?payment_id=.
  List<Dispute> disputes;

  /// provider_failed ou expired ; null tant que le paiement n'a pas échoué.
  String? errorCode;

  /// Texte de error_code, dans la langue de la requête.
  String? errorMessage;

  /// Frais totaux ; null tant que le paiement n'est pas confirmé.
  String? fee;

  String id;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  String merchantReference;

  DateTime modifiedAt;

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
  PaymentDetailRailEnum rail;

  List<RefundCore> refunds;

  PaymentDetailStatusEnum status;

  /// confirmed : l'argent est retirable.
  PaymentDetailWithdrawalEligibilityEnum withdrawalEligibility;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentDetail &&
          other.amount == amount &&
          _deepEquality.equals(other.attempts, attempts) &&
          other.checkoutUrl == checkoutUrl &&
          other.createdAt == createdAt &&
          other.currency == currency &&
          other.customer == customer &&
          other.discountAmount == discountAmount &&
          _deepEquality.equals(other.disputes, disputes) &&
          other.errorCode == errorCode &&
          other.errorMessage == errorMessage &&
          other.fee == fee &&
          other.id == id &&
          other.livemode == livemode &&
          other.merchantReference == merchantReference &&
          other.modifiedAt == modifiedAt &&
          other.net == net &&
          other.nextAction == nextAction &&
          other.offerCode == offerCode &&
          other.originalAmount == originalAmount &&
          other.paymentLinkDescription == paymentLinkDescription &&
          other.rail == rail &&
          _deepEquality.equals(other.refunds, refunds) &&
          other.status == status &&
          other.withdrawalEligibility == withdrawalEligibility;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (amount.hashCode) +
      (attempts.hashCode) +
      (checkoutUrl == null ? 0 : checkoutUrl!.hashCode) +
      (createdAt.hashCode) +
      (currency.hashCode) +
      (customer.hashCode) +
      (discountAmount == null ? 0 : discountAmount!.hashCode) +
      (disputes.hashCode) +
      (errorCode == null ? 0 : errorCode!.hashCode) +
      (errorMessage == null ? 0 : errorMessage!.hashCode) +
      (fee == null ? 0 : fee!.hashCode) +
      (id.hashCode) +
      (livemode.hashCode) +
      (merchantReference.hashCode) +
      (modifiedAt.hashCode) +
      (net == null ? 0 : net!.hashCode) +
      (nextAction == null ? 0 : nextAction!.hashCode) +
      (offerCode == null ? 0 : offerCode!.hashCode) +
      (originalAmount == null ? 0 : originalAmount!.hashCode) +
      (paymentLinkDescription == null ? 0 : paymentLinkDescription!.hashCode) +
      (rail.hashCode) +
      (refunds.hashCode) +
      (status.hashCode) +
      (withdrawalEligibility.hashCode);

  @override
  String toString() =>
      'PaymentDetail[amount=$amount, attempts=$attempts, checkoutUrl=$checkoutUrl, createdAt=$createdAt, currency=$currency, customer=$customer, discountAmount=$discountAmount, disputes=$disputes, errorCode=$errorCode, errorMessage=$errorMessage, fee=$fee, id=$id, livemode=$livemode, merchantReference=$merchantReference, modifiedAt=$modifiedAt, net=$net, nextAction=$nextAction, offerCode=$offerCode, originalAmount=$originalAmount, paymentLinkDescription=$paymentLinkDescription, rail=$rail, refunds=$refunds, status=$status, withdrawalEligibility=$withdrawalEligibility]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'amount'] = this.amount;
    json[r'attempts'] = this.attempts;
    if (this.checkoutUrl != null) {
      json[r'checkout_url'] = this.checkoutUrl;
    } else {
      json[r'checkout_url'] = null;
    }
    json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    json[r'currency'] = this.currency;
    json[r'customer'] = this.customer;
    if (this.discountAmount != null) {
      json[r'discount_amount'] = this.discountAmount;
    } else {
      json[r'discount_amount'] = null;
    }
    json[r'disputes'] = this.disputes;
    if (this.errorCode != null) {
      json[r'error_code'] = this.errorCode;
    } else {
      json[r'error_code'] = null;
    }
    if (this.errorMessage != null) {
      json[r'error_message'] = this.errorMessage;
    } else {
      json[r'error_message'] = null;
    }
    if (this.fee != null) {
      json[r'fee'] = this.fee;
    } else {
      json[r'fee'] = null;
    }
    json[r'id'] = this.id;
    json[r'livemode'] = this.livemode;
    json[r'merchant_reference'] = this.merchantReference;
    json[r'modified_at'] = this.modifiedAt.toUtc().toIso8601String();
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
    json[r'refunds'] = this.refunds;
    json[r'status'] = this.status;
    json[r'withdrawal_eligibility'] = this.withdrawalEligibility;
    return json;
  }

  /// Returns a new [PaymentDetail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'amount'),
            'Required key "PaymentDetail[amount]" is missing from JSON.');
        assert(json[r'amount'] != null,
            'Required key "PaymentDetail[amount]" has a null value in JSON.');
        assert(json.containsKey(r'attempts'),
            'Required key "PaymentDetail[attempts]" is missing from JSON.');
        assert(json[r'attempts'] != null,
            'Required key "PaymentDetail[attempts]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'),
            'Required key "PaymentDetail[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null,
            'Required key "PaymentDetail[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'currency'),
            'Required key "PaymentDetail[currency]" is missing from JSON.');
        assert(json[r'currency'] != null,
            'Required key "PaymentDetail[currency]" has a null value in JSON.');
        assert(json.containsKey(r'customer'),
            'Required key "PaymentDetail[customer]" is missing from JSON.');
        assert(json[r'customer'] != null,
            'Required key "PaymentDetail[customer]" has a null value in JSON.');
        assert(json.containsKey(r'disputes'),
            'Required key "PaymentDetail[disputes]" is missing from JSON.');
        assert(json[r'disputes'] != null,
            'Required key "PaymentDetail[disputes]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "PaymentDetail[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "PaymentDetail[id]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "PaymentDetail[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "PaymentDetail[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'merchant_reference'),
            'Required key "PaymentDetail[merchant_reference]" is missing from JSON.');
        assert(json[r'merchant_reference'] != null,
            'Required key "PaymentDetail[merchant_reference]" has a null value in JSON.');
        assert(json.containsKey(r'modified_at'),
            'Required key "PaymentDetail[modified_at]" is missing from JSON.');
        assert(json[r'modified_at'] != null,
            'Required key "PaymentDetail[modified_at]" has a null value in JSON.');
        assert(json.containsKey(r'next_action'),
            'Required key "PaymentDetail[next_action]" is missing from JSON.');
        assert(json.containsKey(r'rail'),
            'Required key "PaymentDetail[rail]" is missing from JSON.');
        assert(json[r'rail'] != null,
            'Required key "PaymentDetail[rail]" has a null value in JSON.');
        assert(json.containsKey(r'refunds'),
            'Required key "PaymentDetail[refunds]" is missing from JSON.');
        assert(json[r'refunds'] != null,
            'Required key "PaymentDetail[refunds]" has a null value in JSON.');
        assert(json.containsKey(r'status'),
            'Required key "PaymentDetail[status]" is missing from JSON.');
        assert(json[r'status'] != null,
            'Required key "PaymentDetail[status]" has a null value in JSON.');
        assert(json.containsKey(r'withdrawal_eligibility'),
            'Required key "PaymentDetail[withdrawal_eligibility]" is missing from JSON.');
        assert(json[r'withdrawal_eligibility'] != null,
            'Required key "PaymentDetail[withdrawal_eligibility]" has a null value in JSON.');
        return true;
      }());

      return PaymentDetail(
        amount: mapValueOfType<String>(json, r'amount')!,
        attempts: PaymentAttempt.listFromJson(json[r'attempts']),
        checkoutUrl: mapValueOfType<String>(json, r'checkout_url'),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        currency: PaymentDetailCurrencyEnum.fromJson(json[r'currency'])!,
        customer: PaymentCustomer.fromJson(json[r'customer'])!,
        discountAmount: mapValueOfType<String>(json, r'discount_amount'),
        disputes: Dispute.listFromJson(json[r'disputes']),
        errorCode: mapValueOfType<String>(json, r'error_code'),
        errorMessage: mapValueOfType<String>(json, r'error_message'),
        fee: mapValueOfType<String>(json, r'fee'),
        id: mapValueOfType<String>(json, r'id')!,
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        merchantReference: mapValueOfType<String>(json, r'merchant_reference')!,
        modifiedAt: mapDateTime(json, r'modified_at', r'')!,
        net: mapValueOfType<String>(json, r'net'),
        nextAction: NextAction.fromJson(json[r'next_action']),
        offerCode: mapValueOfType<String>(json, r'offer_code'),
        originalAmount: mapValueOfType<String>(json, r'original_amount'),
        paymentLinkDescription:
            mapValueOfType<String>(json, r'payment_link_description'),
        rail: PaymentDetailRailEnum.fromJson(json[r'rail'])!,
        refunds: RefundCore.listFromJson(json[r'refunds']),
        status: PaymentDetailStatusEnum.fromJson(json[r'status'])!,
        withdrawalEligibility: PaymentDetailWithdrawalEligibilityEnum.fromJson(
            json[r'withdrawal_eligibility'])!,
      );
    }
    return null;
  }

  static List<PaymentDetail> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentDetail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentDetail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentDetail> mapFromJson(dynamic json) {
    final map = <String, PaymentDetail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentDetail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentDetail-objects as value to a dart map
  static Map<String, List<PaymentDetail>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PaymentDetail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentDetail.listFromJson(
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
    'attempts',
    'created_at',
    'currency',
    'customer',
    'disputes',
    'id',
    'livemode',
    'merchant_reference',
    'modified_at',
    'next_action',
    'rail',
    'refunds',
    'status',
    'withdrawal_eligibility',
  };
}

enum PaymentDetailCurrencyEnum {
  XOF._(r'XOF'),
  ;

  /// Instantiate a new enum with the provided value.
  const PaymentDetailCurrencyEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PaymentDetailCurrencyEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PaymentDetailCurrencyEnum? fromJson(dynamic value) =>
      PaymentDetailCurrencyEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PaymentDetailCurrencyEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PaymentDetailCurrencyEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentDetailCurrencyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentDetailCurrencyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentDetailCurrencyEnum] to String,
/// and [decode] dynamic data back to [PaymentDetailCurrencyEnum].
class PaymentDetailCurrencyEnumTypeTransformer {
  factory PaymentDetailCurrencyEnumTypeTransformer() =>
      _instance ??= const PaymentDetailCurrencyEnumTypeTransformer._();

  const PaymentDetailCurrencyEnumTypeTransformer._();

  String encode(PaymentDetailCurrencyEnum data) => data._value;

  /// Returns the instance of [PaymentDetailCurrencyEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentDetailCurrencyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PaymentDetailCurrencyEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'XOF':
          return PaymentDetailCurrencyEnum.XOF;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PaymentDetailCurrencyEnumTypeTransformer? _instance;
}

/// Moyen de paiement : pays et opérateur (liste et état : GET /v1/rails).
enum PaymentDetailRailEnum {
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
  const PaymentDetailRailEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PaymentDetailRailEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PaymentDetailRailEnum? fromJson(dynamic value) =>
      PaymentDetailRailEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PaymentDetailRailEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PaymentDetailRailEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentDetailRailEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentDetailRailEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentDetailRailEnum] to String,
/// and [decode] dynamic data back to [PaymentDetailRailEnum].
class PaymentDetailRailEnumTypeTransformer {
  factory PaymentDetailRailEnumTypeTransformer() =>
      _instance ??= const PaymentDetailRailEnumTypeTransformer._();

  const PaymentDetailRailEnumTypeTransformer._();

  String encode(PaymentDetailRailEnum data) => data._value;

  /// Returns the instance of [PaymentDetailRailEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentDetailRailEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PaymentDetailRailEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'sn_wave':
          return PaymentDetailRailEnum.snWave;
        case r'sn_orange':
          return PaymentDetailRailEnum.snOrange;
        case r'ci_wave':
          return PaymentDetailRailEnum.ciWave;
        case r'ci_orange':
          return PaymentDetailRailEnum.ciOrange;
        case r'ci_mtn':
          return PaymentDetailRailEnum.ciMtn;
        case r'ci_moov':
          return PaymentDetailRailEnum.ciMoov;
        case r'bf_orange':
          return PaymentDetailRailEnum.bfOrange;
        case r'bf_wave':
          return PaymentDetailRailEnum.bfWave;
        case r'bf_moov':
          return PaymentDetailRailEnum.bfMoov;
        case r'tg_moov':
          return PaymentDetailRailEnum.tgMoov;
        case r'tg_togocell':
          return PaymentDetailRailEnum.tgTogocell;
        case r'bj_moov':
          return PaymentDetailRailEnum.bjMoov;
        case r'bj_mtn':
          return PaymentDetailRailEnum.bjMtn;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PaymentDetailRailEnumTypeTransformer? _instance;
}

enum PaymentDetailStatusEnum {
  created._(r'created'),
  pending._(r'pending'),
  confirmed._(r'confirmed'),
  failed._(r'failed'),
  expired._(r'expired'),
  unknown._(r'unknown'),
  ;

  /// Instantiate a new enum with the provided value.
  const PaymentDetailStatusEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PaymentDetailStatusEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PaymentDetailStatusEnum? fromJson(dynamic value) =>
      PaymentDetailStatusEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PaymentDetailStatusEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PaymentDetailStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentDetailStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentDetailStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentDetailStatusEnum] to String,
/// and [decode] dynamic data back to [PaymentDetailStatusEnum].
class PaymentDetailStatusEnumTypeTransformer {
  factory PaymentDetailStatusEnumTypeTransformer() =>
      _instance ??= const PaymentDetailStatusEnumTypeTransformer._();

  const PaymentDetailStatusEnumTypeTransformer._();

  String encode(PaymentDetailStatusEnum data) => data._value;

  /// Returns the instance of [PaymentDetailStatusEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentDetailStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PaymentDetailStatusEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'created':
          return PaymentDetailStatusEnum.created;
        case r'pending':
          return PaymentDetailStatusEnum.pending;
        case r'confirmed':
          return PaymentDetailStatusEnum.confirmed;
        case r'failed':
          return PaymentDetailStatusEnum.failed;
        case r'expired':
          return PaymentDetailStatusEnum.expired;
        case r'unknown':
          return PaymentDetailStatusEnum.unknown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PaymentDetailStatusEnumTypeTransformer? _instance;
}

/// confirmed : l'argent est retirable.
enum PaymentDetailWithdrawalEligibilityEnum {
  confirmed._(r'confirmed'),
  notConfirmed._(r'not_confirmed'),
  ;

  /// Instantiate a new enum with the provided value.
  const PaymentDetailWithdrawalEligibilityEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PaymentDetailWithdrawalEligibilityEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PaymentDetailWithdrawalEligibilityEnum? fromJson(dynamic value) =>
      PaymentDetailWithdrawalEligibilityEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PaymentDetailWithdrawalEligibilityEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PaymentDetailWithdrawalEligibilityEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentDetailWithdrawalEligibilityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentDetailWithdrawalEligibilityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentDetailWithdrawalEligibilityEnum] to String,
/// and [decode] dynamic data back to [PaymentDetailWithdrawalEligibilityEnum].
class PaymentDetailWithdrawalEligibilityEnumTypeTransformer {
  factory PaymentDetailWithdrawalEligibilityEnumTypeTransformer() =>
      _instance ??=
          const PaymentDetailWithdrawalEligibilityEnumTypeTransformer._();

  const PaymentDetailWithdrawalEligibilityEnumTypeTransformer._();

  String encode(PaymentDetailWithdrawalEligibilityEnum data) => data._value;

  /// Returns the instance of [PaymentDetailWithdrawalEligibilityEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentDetailWithdrawalEligibilityEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data is PaymentDetailWithdrawalEligibilityEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'confirmed':
          return PaymentDetailWithdrawalEligibilityEnum.confirmed;
        case r'not_confirmed':
          return PaymentDetailWithdrawalEligibilityEnum.notConfirmed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PaymentDetailWithdrawalEligibilityEnumTypeTransformer? _instance;
}
