//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RefundCore {
  /// Returns a new [RefundCore] instance.
  RefundCore({
    required this.amount,
    required this.createdAt,
    required this.currency,
    required this.customerReceives,
    required this.fee,
    required this.feePayer,
    required this.id,
    required this.merchantDebited,
    required this.paymentId,
    required this.reason,
    required this.status,
    required this.updatedAt,
  });

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String amount;

  DateTime createdAt;

  RefundCoreCurrencyEnum currency;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String customerReceives;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String fee;

  RefundCoreFeePayerEnum feePayer;

  String id;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String merchantDebited;

  String paymentId;

  RefundCoreReasonEnum reason;

  RefundCoreStatusEnum status;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RefundCore &&
          other.amount == amount &&
          other.createdAt == createdAt &&
          other.currency == currency &&
          other.customerReceives == customerReceives &&
          other.fee == fee &&
          other.feePayer == feePayer &&
          other.id == id &&
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
      (merchantDebited.hashCode) +
      (paymentId.hashCode) +
      (reason.hashCode) +
      (status.hashCode) +
      (updatedAt.hashCode);

  @override
  String toString() =>
      'RefundCore[amount=$amount, createdAt=$createdAt, currency=$currency, customerReceives=$customerReceives, fee=$fee, feePayer=$feePayer, id=$id, merchantDebited=$merchantDebited, paymentId=$paymentId, reason=$reason, status=$status, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'amount'] = this.amount;
    json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    json[r'currency'] = this.currency;
    json[r'customer_receives'] = this.customerReceives;
    json[r'fee'] = this.fee;
    json[r'fee_payer'] = this.feePayer;
    json[r'id'] = this.id;
    json[r'merchant_debited'] = this.merchantDebited;
    json[r'payment_id'] = this.paymentId;
    json[r'reason'] = this.reason;
    json[r'status'] = this.status;
    json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [RefundCore] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefundCore? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'amount'),
            'Required key "RefundCore[amount]" is missing from JSON.');
        assert(json[r'amount'] != null,
            'Required key "RefundCore[amount]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'),
            'Required key "RefundCore[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null,
            'Required key "RefundCore[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'currency'),
            'Required key "RefundCore[currency]" is missing from JSON.');
        assert(json[r'currency'] != null,
            'Required key "RefundCore[currency]" has a null value in JSON.');
        assert(json.containsKey(r'customer_receives'),
            'Required key "RefundCore[customer_receives]" is missing from JSON.');
        assert(json[r'customer_receives'] != null,
            'Required key "RefundCore[customer_receives]" has a null value in JSON.');
        assert(json.containsKey(r'fee'),
            'Required key "RefundCore[fee]" is missing from JSON.');
        assert(json[r'fee'] != null,
            'Required key "RefundCore[fee]" has a null value in JSON.');
        assert(json.containsKey(r'fee_payer'),
            'Required key "RefundCore[fee_payer]" is missing from JSON.');
        assert(json[r'fee_payer'] != null,
            'Required key "RefundCore[fee_payer]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "RefundCore[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "RefundCore[id]" has a null value in JSON.');
        assert(json.containsKey(r'merchant_debited'),
            'Required key "RefundCore[merchant_debited]" is missing from JSON.');
        assert(json[r'merchant_debited'] != null,
            'Required key "RefundCore[merchant_debited]" has a null value in JSON.');
        assert(json.containsKey(r'payment_id'),
            'Required key "RefundCore[payment_id]" is missing from JSON.');
        assert(json[r'payment_id'] != null,
            'Required key "RefundCore[payment_id]" has a null value in JSON.');
        assert(json.containsKey(r'reason'),
            'Required key "RefundCore[reason]" is missing from JSON.');
        assert(json[r'reason'] != null,
            'Required key "RefundCore[reason]" has a null value in JSON.');
        assert(json.containsKey(r'status'),
            'Required key "RefundCore[status]" is missing from JSON.');
        assert(json[r'status'] != null,
            'Required key "RefundCore[status]" has a null value in JSON.');
        assert(json.containsKey(r'updated_at'),
            'Required key "RefundCore[updated_at]" is missing from JSON.');
        assert(json[r'updated_at'] != null,
            'Required key "RefundCore[updated_at]" has a null value in JSON.');
        return true;
      }());

      return RefundCore(
        amount: mapValueOfType<String>(json, r'amount')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        currency: RefundCoreCurrencyEnum.fromJson(json[r'currency'])!,
        customerReceives: mapValueOfType<String>(json, r'customer_receives')!,
        fee: mapValueOfType<String>(json, r'fee')!,
        feePayer: RefundCoreFeePayerEnum.fromJson(json[r'fee_payer'])!,
        id: mapValueOfType<String>(json, r'id')!,
        merchantDebited: mapValueOfType<String>(json, r'merchant_debited')!,
        paymentId: mapValueOfType<String>(json, r'payment_id')!,
        reason: RefundCoreReasonEnum.fromJson(json[r'reason'])!,
        status: RefundCoreStatusEnum.fromJson(json[r'status'])!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
      );
    }
    return null;
  }

  static List<RefundCore> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundCore>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundCore.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefundCore> mapFromJson(dynamic json) {
    final map = <String, RefundCore>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefundCore.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefundCore-objects as value to a dart map
  static Map<String, List<RefundCore>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RefundCore>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefundCore.listFromJson(
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
    'merchant_debited',
    'payment_id',
    'reason',
    'status',
    'updated_at',
  };
}

enum RefundCoreCurrencyEnum {
  XOF._(r'XOF'),
  ;

  /// Instantiate a new enum with the provided value.
  const RefundCoreCurrencyEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [RefundCoreCurrencyEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static RefundCoreCurrencyEnum? fromJson(dynamic value) =>
      RefundCoreCurrencyEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [RefundCoreCurrencyEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<RefundCoreCurrencyEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundCoreCurrencyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundCoreCurrencyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RefundCoreCurrencyEnum] to String,
/// and [decode] dynamic data back to [RefundCoreCurrencyEnum].
class RefundCoreCurrencyEnumTypeTransformer {
  factory RefundCoreCurrencyEnumTypeTransformer() =>
      _instance ??= const RefundCoreCurrencyEnumTypeTransformer._();

  const RefundCoreCurrencyEnumTypeTransformer._();

  String encode(RefundCoreCurrencyEnum data) => data._value;

  /// Returns the instance of [RefundCoreCurrencyEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RefundCoreCurrencyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is RefundCoreCurrencyEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'XOF':
          return RefundCoreCurrencyEnum.XOF;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static RefundCoreCurrencyEnumTypeTransformer? _instance;
}

enum RefundCoreFeePayerEnum {
  merchant._(r'merchant'),
  customer._(r'customer'),
  ;

  /// Instantiate a new enum with the provided value.
  const RefundCoreFeePayerEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [RefundCoreFeePayerEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static RefundCoreFeePayerEnum? fromJson(dynamic value) =>
      RefundCoreFeePayerEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [RefundCoreFeePayerEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<RefundCoreFeePayerEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundCoreFeePayerEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundCoreFeePayerEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RefundCoreFeePayerEnum] to String,
/// and [decode] dynamic data back to [RefundCoreFeePayerEnum].
class RefundCoreFeePayerEnumTypeTransformer {
  factory RefundCoreFeePayerEnumTypeTransformer() =>
      _instance ??= const RefundCoreFeePayerEnumTypeTransformer._();

  const RefundCoreFeePayerEnumTypeTransformer._();

  String encode(RefundCoreFeePayerEnum data) => data._value;

  /// Returns the instance of [RefundCoreFeePayerEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RefundCoreFeePayerEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is RefundCoreFeePayerEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'merchant':
          return RefundCoreFeePayerEnum.merchant;
        case r'customer':
          return RefundCoreFeePayerEnum.customer;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static RefundCoreFeePayerEnumTypeTransformer? _instance;
}

enum RefundCoreReasonEnum {
  customerRequest._(r'customer_request'),
  duplicate._(r'duplicate'),
  productNotDelivered._(r'product_not_delivered'),
  otherDocumented._(r'other_documented'),
  ;

  /// Instantiate a new enum with the provided value.
  const RefundCoreReasonEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [RefundCoreReasonEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static RefundCoreReasonEnum? fromJson(dynamic value) =>
      RefundCoreReasonEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [RefundCoreReasonEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<RefundCoreReasonEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundCoreReasonEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundCoreReasonEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RefundCoreReasonEnum] to String,
/// and [decode] dynamic data back to [RefundCoreReasonEnum].
class RefundCoreReasonEnumTypeTransformer {
  factory RefundCoreReasonEnumTypeTransformer() =>
      _instance ??= const RefundCoreReasonEnumTypeTransformer._();

  const RefundCoreReasonEnumTypeTransformer._();

  String encode(RefundCoreReasonEnum data) => data._value;

  /// Returns the instance of [RefundCoreReasonEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RefundCoreReasonEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is RefundCoreReasonEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'customer_request':
          return RefundCoreReasonEnum.customerRequest;
        case r'duplicate':
          return RefundCoreReasonEnum.duplicate;
        case r'product_not_delivered':
          return RefundCoreReasonEnum.productNotDelivered;
        case r'other_documented':
          return RefundCoreReasonEnum.otherDocumented;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static RefundCoreReasonEnumTypeTransformer? _instance;
}

enum RefundCoreStatusEnum {
  requested._(r'requested'),
  processing._(r'processing'),
  succeeded._(r'succeeded'),
  failed._(r'failed'),
  unknown._(r'unknown'),
  ;

  /// Instantiate a new enum with the provided value.
  const RefundCoreStatusEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [RefundCoreStatusEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static RefundCoreStatusEnum? fromJson(dynamic value) =>
      RefundCoreStatusEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [RefundCoreStatusEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<RefundCoreStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundCoreStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundCoreStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RefundCoreStatusEnum] to String,
/// and [decode] dynamic data back to [RefundCoreStatusEnum].
class RefundCoreStatusEnumTypeTransformer {
  factory RefundCoreStatusEnumTypeTransformer() =>
      _instance ??= const RefundCoreStatusEnumTypeTransformer._();

  const RefundCoreStatusEnumTypeTransformer._();

  String encode(RefundCoreStatusEnum data) => data._value;

  /// Returns the instance of [RefundCoreStatusEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RefundCoreStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is RefundCoreStatusEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'requested':
          return RefundCoreStatusEnum.requested;
        case r'processing':
          return RefundCoreStatusEnum.processing;
        case r'succeeded':
          return RefundCoreStatusEnum.succeeded;
        case r'failed':
          return RefundCoreStatusEnum.failed;
        case r'unknown':
          return RefundCoreStatusEnum.unknown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static RefundCoreStatusEnumTypeTransformer? _instance;
}
