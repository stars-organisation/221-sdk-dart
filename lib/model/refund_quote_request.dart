//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RefundQuoteRequest {
  /// Returns a new [RefundQuoteRequest] instance.
  RefundQuoteRequest({
    required this.amount,
    this.feePayer,
    required this.paymentId,
  });

  /// Montant à rembourser, au plus le reste remboursable du paiement.
  String amount;

  /// Qui supporte les frais ; par défaut refund_fee_payer_default du projet.
  RefundQuoteRequestFeePayerEnum? feePayer;

  String paymentId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RefundQuoteRequest &&
          other.amount == amount &&
          other.feePayer == feePayer &&
          other.paymentId == paymentId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (amount.hashCode) +
      (feePayer == null ? 0 : feePayer!.hashCode) +
      (paymentId.hashCode);

  @override
  String toString() =>
      'RefundQuoteRequest[amount=$amount, feePayer=$feePayer, paymentId=$paymentId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'amount'] = this.amount;
    if (this.feePayer != null) {
      json[r'fee_payer'] = this.feePayer;
    } else {
      json[r'fee_payer'] = null;
    }
    json[r'payment_id'] = this.paymentId;
    return json;
  }

  /// Returns a new [RefundQuoteRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefundQuoteRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'amount'),
            'Required key "RefundQuoteRequest[amount]" is missing from JSON.');
        assert(json[r'amount'] != null,
            'Required key "RefundQuoteRequest[amount]" has a null value in JSON.');
        assert(json.containsKey(r'payment_id'),
            'Required key "RefundQuoteRequest[payment_id]" is missing from JSON.');
        assert(json[r'payment_id'] != null,
            'Required key "RefundQuoteRequest[payment_id]" has a null value in JSON.');
        return true;
      }());

      return RefundQuoteRequest(
        amount: mapValueOfType<String>(json, r'amount')!,
        feePayer: RefundQuoteRequestFeePayerEnum.fromJson(json[r'fee_payer']),
        paymentId: mapValueOfType<String>(json, r'payment_id')!,
      );
    }
    return null;
  }

  static List<RefundQuoteRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundQuoteRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundQuoteRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefundQuoteRequest> mapFromJson(dynamic json) {
    final map = <String, RefundQuoteRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefundQuoteRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefundQuoteRequest-objects as value to a dart map
  static Map<String, List<RefundQuoteRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RefundQuoteRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefundQuoteRequest.listFromJson(
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
  };
}

/// Qui supporte les frais ; par défaut refund_fee_payer_default du projet.
enum RefundQuoteRequestFeePayerEnum {
  merchant._(r'merchant'),
  customer._(r'customer'),
  ;

  /// Instantiate a new enum with the provided value.
  const RefundQuoteRequestFeePayerEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [RefundQuoteRequestFeePayerEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static RefundQuoteRequestFeePayerEnum? fromJson(dynamic value) =>
      RefundQuoteRequestFeePayerEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [RefundQuoteRequestFeePayerEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<RefundQuoteRequestFeePayerEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundQuoteRequestFeePayerEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundQuoteRequestFeePayerEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RefundQuoteRequestFeePayerEnum] to String,
/// and [decode] dynamic data back to [RefundQuoteRequestFeePayerEnum].
class RefundQuoteRequestFeePayerEnumTypeTransformer {
  factory RefundQuoteRequestFeePayerEnumTypeTransformer() =>
      _instance ??= const RefundQuoteRequestFeePayerEnumTypeTransformer._();

  const RefundQuoteRequestFeePayerEnumTypeTransformer._();

  String encode(RefundQuoteRequestFeePayerEnum data) => data._value;

  /// Returns the instance of [RefundQuoteRequestFeePayerEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RefundQuoteRequestFeePayerEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data is RefundQuoteRequestFeePayerEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'merchant':
          return RefundQuoteRequestFeePayerEnum.merchant;
        case r'customer':
          return RefundQuoteRequestFeePayerEnum.customer;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static RefundQuoteRequestFeePayerEnumTypeTransformer? _instance;
}
