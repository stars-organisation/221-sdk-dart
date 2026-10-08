//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentLink {
  /// Returns a new [PaymentLink] instance.
  PaymentLink({
    required this.amount,
    required this.createdAt,
    required this.currency,
    required this.description,
    this.expiry,
    required this.id,
    required this.linkToPay,
    required this.livemode,
    required this.status,
  });

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String amount;

  DateTime createdAt;

  PaymentLinkCurrencyEnum currency;

  String description;

  DateTime? expiry;

  String id;

  /// Page de paiement à partager : chaque visite crée un paiement.
  String linkToPay;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  PaymentLinkStatusEnum status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentLink &&
          other.amount == amount &&
          other.createdAt == createdAt &&
          other.currency == currency &&
          other.description == description &&
          other.expiry == expiry &&
          other.id == id &&
          other.linkToPay == linkToPay &&
          other.livemode == livemode &&
          other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (amount.hashCode) +
      (createdAt.hashCode) +
      (currency.hashCode) +
      (description.hashCode) +
      (expiry == null ? 0 : expiry!.hashCode) +
      (id.hashCode) +
      (linkToPay.hashCode) +
      (livemode.hashCode) +
      (status.hashCode);

  @override
  String toString() =>
      'PaymentLink[amount=$amount, createdAt=$createdAt, currency=$currency, description=$description, expiry=$expiry, id=$id, linkToPay=$linkToPay, livemode=$livemode, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'amount'] = this.amount;
    json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    json[r'currency'] = this.currency;
    json[r'description'] = this.description;
    if (this.expiry != null) {
      json[r'expiry'] = this.expiry!.toUtc().toIso8601String();
    } else {
      json[r'expiry'] = null;
    }
    json[r'id'] = this.id;
    json[r'link_to_pay'] = this.linkToPay;
    json[r'livemode'] = this.livemode;
    json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [PaymentLink] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentLink? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'amount'),
            'Required key "PaymentLink[amount]" is missing from JSON.');
        assert(json[r'amount'] != null,
            'Required key "PaymentLink[amount]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'),
            'Required key "PaymentLink[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null,
            'Required key "PaymentLink[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'currency'),
            'Required key "PaymentLink[currency]" is missing from JSON.');
        assert(json[r'currency'] != null,
            'Required key "PaymentLink[currency]" has a null value in JSON.');
        assert(json.containsKey(r'description'),
            'Required key "PaymentLink[description]" is missing from JSON.');
        assert(json[r'description'] != null,
            'Required key "PaymentLink[description]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "PaymentLink[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "PaymentLink[id]" has a null value in JSON.');
        assert(json.containsKey(r'link_to_pay'),
            'Required key "PaymentLink[link_to_pay]" is missing from JSON.');
        assert(json[r'link_to_pay'] != null,
            'Required key "PaymentLink[link_to_pay]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "PaymentLink[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "PaymentLink[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'status'),
            'Required key "PaymentLink[status]" is missing from JSON.');
        assert(json[r'status'] != null,
            'Required key "PaymentLink[status]" has a null value in JSON.');
        return true;
      }());

      return PaymentLink(
        amount: mapValueOfType<String>(json, r'amount')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        currency: PaymentLinkCurrencyEnum.fromJson(json[r'currency'])!,
        description: mapValueOfType<String>(json, r'description')!,
        expiry: mapDateTime(json, r'expiry', r''),
        id: mapValueOfType<String>(json, r'id')!,
        linkToPay: mapValueOfType<String>(json, r'link_to_pay')!,
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        status: PaymentLinkStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<PaymentLink> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentLink>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentLink.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentLink> mapFromJson(dynamic json) {
    final map = <String, PaymentLink>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentLink.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentLink-objects as value to a dart map
  static Map<String, List<PaymentLink>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PaymentLink>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentLink.listFromJson(
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
    'description',
    'id',
    'link_to_pay',
    'livemode',
    'status',
  };
}

enum PaymentLinkCurrencyEnum {
  XOF._(r'XOF'),
  ;

  /// Instantiate a new enum with the provided value.
  const PaymentLinkCurrencyEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PaymentLinkCurrencyEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PaymentLinkCurrencyEnum? fromJson(dynamic value) =>
      PaymentLinkCurrencyEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PaymentLinkCurrencyEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PaymentLinkCurrencyEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentLinkCurrencyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentLinkCurrencyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentLinkCurrencyEnum] to String,
/// and [decode] dynamic data back to [PaymentLinkCurrencyEnum].
class PaymentLinkCurrencyEnumTypeTransformer {
  factory PaymentLinkCurrencyEnumTypeTransformer() =>
      _instance ??= const PaymentLinkCurrencyEnumTypeTransformer._();

  const PaymentLinkCurrencyEnumTypeTransformer._();

  String encode(PaymentLinkCurrencyEnum data) => data._value;

  /// Returns the instance of [PaymentLinkCurrencyEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentLinkCurrencyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PaymentLinkCurrencyEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'XOF':
          return PaymentLinkCurrencyEnum.XOF;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PaymentLinkCurrencyEnumTypeTransformer? _instance;
}

enum PaymentLinkStatusEnum {
  active._(r'active'),
  inactive._(r'inactive'),
  expired._(r'expired'),
  ;

  /// Instantiate a new enum with the provided value.
  const PaymentLinkStatusEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PaymentLinkStatusEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PaymentLinkStatusEnum? fromJson(dynamic value) =>
      PaymentLinkStatusEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PaymentLinkStatusEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PaymentLinkStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentLinkStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentLinkStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentLinkStatusEnum] to String,
/// and [decode] dynamic data back to [PaymentLinkStatusEnum].
class PaymentLinkStatusEnumTypeTransformer {
  factory PaymentLinkStatusEnumTypeTransformer() =>
      _instance ??= const PaymentLinkStatusEnumTypeTransformer._();

  const PaymentLinkStatusEnumTypeTransformer._();

  String encode(PaymentLinkStatusEnum data) => data._value;

  /// Returns the instance of [PaymentLinkStatusEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentLinkStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PaymentLinkStatusEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'active':
          return PaymentLinkStatusEnum.active;
        case r'inactive':
          return PaymentLinkStatusEnum.inactive;
        case r'expired':
          return PaymentLinkStatusEnum.expired;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PaymentLinkStatusEnumTypeTransformer? _instance;
}
