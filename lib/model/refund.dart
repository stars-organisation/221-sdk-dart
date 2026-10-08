//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Refund {
  /// Returns a new [Refund] instance.
  Refund({
    required this.amount,
    required this.createdAt,
    required this.currency,
    required this.customerReceives,
    required this.fee,
    required this.feePayer,
    required this.id,
    required this.livemode,
    required this.merchantDebited,
    required this.paymentId,
    required this.reason,
    required this.status,
    required this.updatedAt,
  });

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String amount;

  DateTime createdAt;

  RefundCurrencyEnum currency;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String customerReceives;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String fee;

  RefundFeePayerEnum feePayer;

  String id;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String merchantDebited;

  String paymentId;

  RefundReasonEnum reason;

  RefundStatusEnum status;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Refund &&
          other.amount == amount &&
          other.createdAt == createdAt &&
          other.currency == currency &&
          other.customerReceives == customerReceives &&
          other.fee == fee &&
          other.feePayer == feePayer &&
          other.id == id &&
          other.livemode == livemode &&
          other.merchantDebited == merchantDebited &&
          other.paymentId == paymentId &&
          other.reason == reason &&
          other.status == status &&
          other.updatedAt == updatedAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (amount.hashCode) +
      (createdAt.hashCode) +
      (currency.hashCode) +
      (customerReceives.hashCode) +
      (fee.hashCode) +
      (feePayer.hashCode) +
      (id.hashCode) +
      (livemode.hashCode) +
      (merchantDebited.hashCode) +
      (paymentId.hashCode) +
      (reason.hashCode) +
      (status.hashCode) +
      (updatedAt.hashCode);

  @override
  String toString() =>
      'Refund[amount=$amount, createdAt=$createdAt, currency=$currency, customerReceives=$customerReceives, fee=$fee, feePayer=$feePayer, id=$id, livemode=$livemode, merchantDebited=$merchantDebited, paymentId=$paymentId, reason=$reason, status=$status, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'amount'] = this.amount;
    json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    json[r'currency'] = this.currency;
    json[r'customer_receives'] = this.customerReceives;
    json[r'fee'] = this.fee;
    json[r'fee_payer'] = this.feePayer;
    json[r'id'] = this.id;
    json[r'livemode'] = this.livemode;
    json[r'merchant_debited'] = this.merchantDebited;
    json[r'payment_id'] = this.paymentId;
    json[r'reason'] = this.reason;
    json[r'status'] = this.status;
    json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Refund] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Refund? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'amount'),
            'Required key "Refund[amount]" is missing from JSON.');
        assert(json[r'amount'] != null,
            'Required key "Refund[amount]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'),
            'Required key "Refund[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null,
            'Required key "Refund[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'currency'),
            'Required key "Refund[currency]" is missing from JSON.');
        assert(json[r'currency'] != null,
            'Required key "Refund[currency]" has a null value in JSON.');
        assert(json.containsKey(r'customer_receives'),
            'Required key "Refund[customer_receives]" is missing from JSON.');
        assert(json[r'customer_receives'] != null,
            'Required key "Refund[customer_receives]" has a null value in JSON.');
        assert(json.containsKey(r'fee'),
            'Required key "Refund[fee]" is missing from JSON.');
        assert(json[r'fee'] != null,
            'Required key "Refund[fee]" has a null value in JSON.');
        assert(json.containsKey(r'fee_payer'),
            'Required key "Refund[fee_payer]" is missing from JSON.');
        assert(json[r'fee_payer'] != null,
            'Required key "Refund[fee_payer]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "Refund[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "Refund[id]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "Refund[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "Refund[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'merchant_debited'),
            'Required key "Refund[merchant_debited]" is missing from JSON.');
        assert(json[r'merchant_debited'] != null,
            'Required key "Refund[merchant_debited]" has a null value in JSON.');
        assert(json.containsKey(r'payment_id'),
            'Required key "Refund[payment_id]" is missing from JSON.');
        assert(json[r'payment_id'] != null,
            'Required key "Refund[payment_id]" has a null value in JSON.');
        assert(json.containsKey(r'reason'),
            'Required key "Refund[reason]" is missing from JSON.');
        assert(json[r'reason'] != null,
            'Required key "Refund[reason]" has a null value in JSON.');
        assert(json.containsKey(r'status'),
            'Required key "Refund[status]" is missing from JSON.');
        assert(json[r'status'] != null,
            'Required key "Refund[status]" has a null value in JSON.');
        assert(json.containsKey(r'updated_at'),
            'Required key "Refund[updated_at]" is missing from JSON.');
        assert(json[r'updated_at'] != null,
            'Required key "Refund[updated_at]" has a null value in JSON.');
        return true;
      }());

      return Refund(
        amount: mapValueOfType<String>(json, r'amount')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        currency: RefundCurrencyEnum.fromJson(json[r'currency'])!,
        customerReceives: mapValueOfType<String>(json, r'customer_receives')!,
        fee: mapValueOfType<String>(json, r'fee')!,
        feePayer: RefundFeePayerEnum.fromJson(json[r'fee_payer'])!,
        id: mapValueOfType<String>(json, r'id')!,
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        merchantDebited: mapValueOfType<String>(json, r'merchant_debited')!,
        paymentId: mapValueOfType<String>(json, r'payment_id')!,
        reason: RefundReasonEnum.fromJson(json[r'reason'])!,
        status: RefundStatusEnum.fromJson(json[r'status'])!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
      );
    }
    return null;
  }

  static List<Refund> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Refund>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Refund.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Refund> mapFromJson(dynamic json) {
    final map = <String, Refund>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Refund.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Refund-objects as value to a dart map
  static Map<String, List<Refund>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Refund>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Refund.listFromJson(
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
    'customer_receives',
    'fee',
    'fee_payer',
    'id',
    'livemode',
    'merchant_debited',
    'payment_id',
    'reason',
    'status',
    'updated_at',
  };
}

enum RefundCurrencyEnum {
  XOF._(r'XOF'),
  ;

  /// Instantiate a new enum with the provided value.
  const RefundCurrencyEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [RefundCurrencyEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static RefundCurrencyEnum? fromJson(dynamic value) =>
      RefundCurrencyEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [RefundCurrencyEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<RefundCurrencyEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundCurrencyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundCurrencyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RefundCurrencyEnum] to String,
/// and [decode] dynamic data back to [RefundCurrencyEnum].
class RefundCurrencyEnumTypeTransformer {
  factory RefundCurrencyEnumTypeTransformer() =>
      _instance ??= const RefundCurrencyEnumTypeTransformer._();

  const RefundCurrencyEnumTypeTransformer._();

  String encode(RefundCurrencyEnum data) => data._value;

  /// Returns the instance of [RefundCurrencyEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RefundCurrencyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is RefundCurrencyEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'XOF':
          return RefundCurrencyEnum.XOF;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static RefundCurrencyEnumTypeTransformer? _instance;
}

enum RefundFeePayerEnum {
  merchant._(r'merchant'),
  customer._(r'customer'),
  ;

  /// Instantiate a new enum with the provided value.
  const RefundFeePayerEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [RefundFeePayerEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static RefundFeePayerEnum? fromJson(dynamic value) =>
      RefundFeePayerEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [RefundFeePayerEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<RefundFeePayerEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundFeePayerEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundFeePayerEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RefundFeePayerEnum] to String,
/// and [decode] dynamic data back to [RefundFeePayerEnum].
class RefundFeePayerEnumTypeTransformer {
  factory RefundFeePayerEnumTypeTransformer() =>
      _instance ??= const RefundFeePayerEnumTypeTransformer._();

  const RefundFeePayerEnumTypeTransformer._();

  String encode(RefundFeePayerEnum data) => data._value;

  /// Returns the instance of [RefundFeePayerEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RefundFeePayerEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is RefundFeePayerEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'merchant':
          return RefundFeePayerEnum.merchant;
        case r'customer':
          return RefundFeePayerEnum.customer;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static RefundFeePayerEnumTypeTransformer? _instance;
}

enum RefundReasonEnum {
  customerRequest._(r'customer_request'),
  duplicate._(r'duplicate'),
  productNotDelivered._(r'product_not_delivered'),
  otherDocumented._(r'other_documented'),
  ;

  /// Instantiate a new enum with the provided value.
  const RefundReasonEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [RefundReasonEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static RefundReasonEnum? fromJson(dynamic value) =>
      RefundReasonEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [RefundReasonEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<RefundReasonEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundReasonEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundReasonEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RefundReasonEnum] to String,
/// and [decode] dynamic data back to [RefundReasonEnum].
class RefundReasonEnumTypeTransformer {
  factory RefundReasonEnumTypeTransformer() =>
      _instance ??= const RefundReasonEnumTypeTransformer._();

  const RefundReasonEnumTypeTransformer._();

  String encode(RefundReasonEnum data) => data._value;

  /// Returns the instance of [RefundReasonEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RefundReasonEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is RefundReasonEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'customer_request':
          return RefundReasonEnum.customerRequest;
        case r'duplicate':
          return RefundReasonEnum.duplicate;
        case r'product_not_delivered':
          return RefundReasonEnum.productNotDelivered;
        case r'other_documented':
          return RefundReasonEnum.otherDocumented;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static RefundReasonEnumTypeTransformer? _instance;
}

enum RefundStatusEnum {
  requested._(r'requested'),
  processing._(r'processing'),
  succeeded._(r'succeeded'),
  failed._(r'failed'),
  unknown._(r'unknown'),
  ;

  /// Instantiate a new enum with the provided value.
  const RefundStatusEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [RefundStatusEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static RefundStatusEnum? fromJson(dynamic value) =>
      RefundStatusEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [RefundStatusEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<RefundStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RefundStatusEnum] to String,
/// and [decode] dynamic data back to [RefundStatusEnum].
class RefundStatusEnumTypeTransformer {
  factory RefundStatusEnumTypeTransformer() =>
      _instance ??= const RefundStatusEnumTypeTransformer._();

  const RefundStatusEnumTypeTransformer._();

  String encode(RefundStatusEnum data) => data._value;

  /// Returns the instance of [RefundStatusEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RefundStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is RefundStatusEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'requested':
          return RefundStatusEnum.requested;
        case r'processing':
          return RefundStatusEnum.processing;
        case r'succeeded':
          return RefundStatusEnum.succeeded;
        case r'failed':
          return RefundStatusEnum.failed;
        case r'unknown':
          return RefundStatusEnum.unknown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static RefundStatusEnumTypeTransformer? _instance;
}
