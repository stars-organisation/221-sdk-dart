//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RefundQuote {
  /// Returns a new [RefundQuote] instance.
  RefundQuote({
    required this.amount,
    required this.customerReceives,
    required this.expiresAt,
    required this.fee,
    required this.feePayer,
    required this.livemode,
    required this.merchantDebited,
    required this.paymentId,
    required this.quoteHash,
  });

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String amount;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String customerReceives;

  DateTime expiresAt;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String fee;

  RefundQuoteFeePayerEnum feePayer;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String merchantDebited;

  String paymentId;

  /// À renvoyer dans POST /v1/refunds : à usage unique, valable jusqu'à expires_at.
  String quoteHash;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RefundQuote &&
          other.amount == amount &&
          other.customerReceives == customerReceives &&
          other.expiresAt == expiresAt &&
          other.fee == fee &&
          other.feePayer == feePayer &&
          other.livemode == livemode &&
          other.merchantDebited == merchantDebited &&
          other.paymentId == paymentId &&
          other.quoteHash == quoteHash;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (amount.hashCode) +
      (customerReceives.hashCode) +
      (expiresAt.hashCode) +
      (fee.hashCode) +
      (feePayer.hashCode) +
      (livemode.hashCode) +
      (merchantDebited.hashCode) +
      (paymentId.hashCode) +
      (quoteHash.hashCode);

  @override
  String toString() =>
      'RefundQuote[amount=$amount, customerReceives=$customerReceives, expiresAt=$expiresAt, fee=$fee, feePayer=$feePayer, livemode=$livemode, merchantDebited=$merchantDebited, paymentId=$paymentId, quoteHash=$quoteHash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'amount'] = this.amount;
    json[r'customer_receives'] = this.customerReceives;
    json[r'expires_at'] = this.expiresAt.toUtc().toIso8601String();
    json[r'fee'] = this.fee;
    json[r'fee_payer'] = this.feePayer;
    json[r'livemode'] = this.livemode;
    json[r'merchant_debited'] = this.merchantDebited;
    json[r'payment_id'] = this.paymentId;
    json[r'quote_hash'] = this.quoteHash;
    return json;
  }

  /// Returns a new [RefundQuote] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefundQuote? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'amount'),
            'Required key "RefundQuote[amount]" is missing from JSON.');
        assert(json[r'amount'] != null,
            'Required key "RefundQuote[amount]" has a null value in JSON.');
        assert(json.containsKey(r'customer_receives'),
            'Required key "RefundQuote[customer_receives]" is missing from JSON.');
        assert(json[r'customer_receives'] != null,
            'Required key "RefundQuote[customer_receives]" has a null value in JSON.');
        assert(json.containsKey(r'expires_at'),
            'Required key "RefundQuote[expires_at]" is missing from JSON.');
        assert(json[r'expires_at'] != null,
            'Required key "RefundQuote[expires_at]" has a null value in JSON.');
        assert(json.containsKey(r'fee'),
            'Required key "RefundQuote[fee]" is missing from JSON.');
        assert(json[r'fee'] != null,
            'Required key "RefundQuote[fee]" has a null value in JSON.');
        assert(json.containsKey(r'fee_payer'),
            'Required key "RefundQuote[fee_payer]" is missing from JSON.');
        assert(json[r'fee_payer'] != null,
            'Required key "RefundQuote[fee_payer]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "RefundQuote[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "RefundQuote[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'merchant_debited'),
            'Required key "RefundQuote[merchant_debited]" is missing from JSON.');
        assert(json[r'merchant_debited'] != null,
            'Required key "RefundQuote[merchant_debited]" has a null value in JSON.');
        assert(json.containsKey(r'payment_id'),
            'Required key "RefundQuote[payment_id]" is missing from JSON.');
        assert(json[r'payment_id'] != null,
            'Required key "RefundQuote[payment_id]" has a null value in JSON.');
        assert(json.containsKey(r'quote_hash'),
            'Required key "RefundQuote[quote_hash]" is missing from JSON.');
        assert(json[r'quote_hash'] != null,
            'Required key "RefundQuote[quote_hash]" has a null value in JSON.');
        return true;
      }());

      return RefundQuote(
        amount: mapValueOfType<String>(json, r'amount')!,
        customerReceives: mapValueOfType<String>(json, r'customer_receives')!,
        expiresAt: mapDateTime(json, r'expires_at', r'')!,
        fee: mapValueOfType<String>(json, r'fee')!,
        feePayer: RefundQuoteFeePayerEnum.fromJson(json[r'fee_payer'])!,
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        merchantDebited: mapValueOfType<String>(json, r'merchant_debited')!,
        paymentId: mapValueOfType<String>(json, r'payment_id')!,
        quoteHash: mapValueOfType<String>(json, r'quote_hash')!,
      );
    }
    return null;
  }

  static List<RefundQuote> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundQuote>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundQuote.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefundQuote> mapFromJson(dynamic json) {
    final map = <String, RefundQuote>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefundQuote.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefundQuote-objects as value to a dart map
  static Map<String, List<RefundQuote>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RefundQuote>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefundQuote.listFromJson(
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
    'customer_receives',
    'expires_at',
    'fee',
    'fee_payer',
    'livemode',
    'merchant_debited',
    'payment_id',
    'quote_hash',
  };
}

enum RefundQuoteFeePayerEnum {
  merchant._(r'merchant'),
  customer._(r'customer'),
  ;

  /// Instantiate a new enum with the provided value.
  const RefundQuoteFeePayerEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [RefundQuoteFeePayerEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static RefundQuoteFeePayerEnum? fromJson(dynamic value) =>
      RefundQuoteFeePayerEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [RefundQuoteFeePayerEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<RefundQuoteFeePayerEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundQuoteFeePayerEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundQuoteFeePayerEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RefundQuoteFeePayerEnum] to String,
/// and [decode] dynamic data back to [RefundQuoteFeePayerEnum].
class RefundQuoteFeePayerEnumTypeTransformer {
  factory RefundQuoteFeePayerEnumTypeTransformer() =>
      _instance ??= const RefundQuoteFeePayerEnumTypeTransformer._();

  const RefundQuoteFeePayerEnumTypeTransformer._();

  String encode(RefundQuoteFeePayerEnum data) => data._value;

  /// Returns the instance of [RefundQuoteFeePayerEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RefundQuoteFeePayerEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is RefundQuoteFeePayerEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'merchant':
          return RefundQuoteFeePayerEnum.merchant;
        case r'customer':
          return RefundQuoteFeePayerEnum.customer;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static RefundQuoteFeePayerEnumTypeTransformer? _instance;
}
