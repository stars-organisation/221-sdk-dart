//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RefundRequest {
  /// Returns a new [RefundRequest] instance.
  RefundRequest({
    required this.amount,
    this.feePayer,
    required this.paymentId,
    required this.quoteHash,
    required this.reason,
  });

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String amount;

  /// Doit être celui de la cotation.
  RefundRequestFeePayerEnum? feePayer;

  String paymentId;

  String quoteHash;

  RefundRequestReasonEnum reason;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RefundRequest &&
          other.amount == amount &&
          other.feePayer == feePayer &&
          other.paymentId == paymentId &&
          other.quoteHash == quoteHash &&
          other.reason == reason;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (amount.hashCode) +
      (feePayer == null ? 0 : feePayer!.hashCode) +
      (paymentId.hashCode) +
      (quoteHash.hashCode) +
      (reason.hashCode);

  @override
  String toString() =>
      'RefundRequest[amount=$amount, feePayer=$feePayer, paymentId=$paymentId, quoteHash=$quoteHash, reason=$reason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'amount'] = this.amount;
    if (this.feePayer != null) {
      json[r'fee_payer'] = this.feePayer;
    } else {
      json[r'fee_payer'] = null;
    }
    json[r'payment_id'] = this.paymentId;
    json[r'quote_hash'] = this.quoteHash;
    json[r'reason'] = this.reason;
    return json;
  }

  /// Returns a new [RefundRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefundRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'amount'),
            'Required key "RefundRequest[amount]" is missing from JSON.');
        assert(json[r'amount'] != null,
            'Required key "RefundRequest[amount]" has a null value in JSON.');
        assert(json.containsKey(r'payment_id'),
            'Required key "RefundRequest[payment_id]" is missing from JSON.');
        assert(json[r'payment_id'] != null,
            'Required key "RefundRequest[payment_id]" has a null value in JSON.');
        assert(json.containsKey(r'quote_hash'),
            'Required key "RefundRequest[quote_hash]" is missing from JSON.');
        assert(json[r'quote_hash'] != null,
            'Required key "RefundRequest[quote_hash]" has a null value in JSON.');
        assert(json.containsKey(r'reason'),
            'Required key "RefundRequest[reason]" is missing from JSON.');
        assert(json[r'reason'] != null,
            'Required key "RefundRequest[reason]" has a null value in JSON.');
        return true;
      }());

      return RefundRequest(
        amount: mapValueOfType<String>(json, r'amount')!,
        feePayer: RefundRequestFeePayerEnum.fromJson(json[r'fee_payer']),
        paymentId: mapValueOfType<String>(json, r'payment_id')!,
        quoteHash: mapValueOfType<String>(json, r'quote_hash')!,
        reason: RefundRequestReasonEnum.fromJson(json[r'reason'])!,
      );
    }
    return null;
  }

  static List<RefundRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefundRequest> mapFromJson(dynamic json) {
    final map = <String, RefundRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefundRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefundRequest-objects as value to a dart map
  static Map<String, List<RefundRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RefundRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefundRequest.listFromJson(
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
    'payment_id',
    'quote_hash',
    'reason',
  };
}

/// Doit être celui de la cotation.
enum RefundRequestFeePayerEnum {
  merchant._(r'merchant'),
  customer._(r'customer'),
  ;

  /// Instantiate a new enum with the provided value.
  const RefundRequestFeePayerEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [RefundRequestFeePayerEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static RefundRequestFeePayerEnum? fromJson(dynamic value) =>
      RefundRequestFeePayerEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [RefundRequestFeePayerEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<RefundRequestFeePayerEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundRequestFeePayerEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundRequestFeePayerEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RefundRequestFeePayerEnum] to String,
/// and [decode] dynamic data back to [RefundRequestFeePayerEnum].
class RefundRequestFeePayerEnumTypeTransformer {
  factory RefundRequestFeePayerEnumTypeTransformer() =>
      _instance ??= const RefundRequestFeePayerEnumTypeTransformer._();

  const RefundRequestFeePayerEnumTypeTransformer._();

  String encode(RefundRequestFeePayerEnum data) => data._value;

  /// Returns the instance of [RefundRequestFeePayerEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RefundRequestFeePayerEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is RefundRequestFeePayerEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'merchant':
          return RefundRequestFeePayerEnum.merchant;
        case r'customer':
          return RefundRequestFeePayerEnum.customer;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static RefundRequestFeePayerEnumTypeTransformer? _instance;
}

enum RefundRequestReasonEnum {
  customerRequest._(r'customer_request'),
  duplicate._(r'duplicate'),
  productNotDelivered._(r'product_not_delivered'),
  otherDocumented._(r'other_documented'),
  ;

  /// Instantiate a new enum with the provided value.
  const RefundRequestReasonEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [RefundRequestReasonEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static RefundRequestReasonEnum? fromJson(dynamic value) =>
      RefundRequestReasonEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [RefundRequestReasonEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<RefundRequestReasonEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundRequestReasonEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundRequestReasonEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RefundRequestReasonEnum] to String,
/// and [decode] dynamic data back to [RefundRequestReasonEnum].
class RefundRequestReasonEnumTypeTransformer {
  factory RefundRequestReasonEnumTypeTransformer() =>
      _instance ??= const RefundRequestReasonEnumTypeTransformer._();

  const RefundRequestReasonEnumTypeTransformer._();

  String encode(RefundRequestReasonEnum data) => data._value;

  /// Returns the instance of [RefundRequestReasonEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RefundRequestReasonEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is RefundRequestReasonEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'customer_request':
          return RefundRequestReasonEnum.customerRequest;
        case r'duplicate':
          return RefundRequestReasonEnum.duplicate;
        case r'product_not_delivered':
          return RefundRequestReasonEnum.productNotDelivered;
        case r'other_documented':
          return RefundRequestReasonEnum.otherDocumented;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static RefundRequestReasonEnumTypeTransformer? _instance;
}
