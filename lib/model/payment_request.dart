//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentRequest {
  /// Returns a new [PaymentRequest] instance.
  PaymentRequest({
    required this.amount,
    required this.currency,
    this.customerDevice,
    this.customerOtp,
    this.customerPhone,
    required this.merchantReference,
    this.offerCode,
    required this.rail,
    required this.returnUrl,
  });

  /// Montant à encaisser, au moins min_amount du moyen de paiement.
  String amount;

  PaymentRequestCurrencyEnum currency;

  /// Appareil du client. sn_orange : mobile (par défaut) ouvre l'app Max it, desktop donne un QR code à scanner (next_action de type qr). Sans effet sur les autres moyens. EN: the customer's device. sn_orange: mobile (default) opens the Max it app, desktop returns a QR code to scan (next_action of type qr). No effect on other rails.
  PaymentRequestCustomerDeviceEnum? customerDevice;

  /// Code composé par le client. Requis seulement si otp_required vaut true pour le moyen de paiement, refusé sinon.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customerOtp;

  /// Numéro mobile du client, valide pour le pays du moyen de paiement. Requis en mode live.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customerPhone;

  /// Référence de votre commande, unique par projet et par mode.
  String merchantReference;

  /// Code promo du projet (insensible à la casse).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? offerCode;

  /// Moyen de paiement : pays et opérateur (liste et état : GET /v1/rails).
  PaymentRequestRailEnum rail;

  /// Où renvoyer le client après le paiement : https obligatoire.
  String returnUrl;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentRequest &&
          other.amount == amount &&
          other.currency == currency &&
          other.customerDevice == customerDevice &&
          other.customerOtp == customerOtp &&
          other.customerPhone == customerPhone &&
          other.merchantReference == merchantReference &&
          other.offerCode == offerCode &&
          other.rail == rail &&
          other.returnUrl == returnUrl;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (amount.hashCode) +
      (currency.hashCode) +
      (customerDevice == null ? 0 : customerDevice!.hashCode) +
      (customerOtp == null ? 0 : customerOtp!.hashCode) +
      (customerPhone == null ? 0 : customerPhone!.hashCode) +
      (merchantReference.hashCode) +
      (offerCode == null ? 0 : offerCode!.hashCode) +
      (rail.hashCode) +
      (returnUrl.hashCode);

  @override
  String toString() =>
      'PaymentRequest[amount=$amount, currency=$currency, customerDevice=$customerDevice, customerOtp=$customerOtp, customerPhone=$customerPhone, merchantReference=$merchantReference, offerCode=$offerCode, rail=$rail, returnUrl=$returnUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'amount'] = this.amount;
    json[r'currency'] = this.currency;
    if (this.customerDevice != null) {
      json[r'customer_device'] = this.customerDevice;
    } else {
      json[r'customer_device'] = null;
    }
    if (this.customerOtp != null) {
      json[r'customer_otp'] = this.customerOtp;
    } else {
      json[r'customer_otp'] = null;
    }
    if (this.customerPhone != null) {
      json[r'customer_phone'] = this.customerPhone;
    } else {
      json[r'customer_phone'] = null;
    }
    json[r'merchant_reference'] = this.merchantReference;
    if (this.offerCode != null) {
      json[r'offer_code'] = this.offerCode;
    } else {
      json[r'offer_code'] = null;
    }
    json[r'rail'] = this.rail;
    json[r'return_url'] = this.returnUrl;
    return json;
  }

  /// Returns a new [PaymentRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'amount'),
            'Required key "PaymentRequest[amount]" is missing from JSON.');
        assert(json[r'amount'] != null,
            'Required key "PaymentRequest[amount]" has a null value in JSON.');
        assert(json.containsKey(r'currency'),
            'Required key "PaymentRequest[currency]" is missing from JSON.');
        assert(json[r'currency'] != null,
            'Required key "PaymentRequest[currency]" has a null value in JSON.');
        assert(json.containsKey(r'merchant_reference'),
            'Required key "PaymentRequest[merchant_reference]" is missing from JSON.');
        assert(json[r'merchant_reference'] != null,
            'Required key "PaymentRequest[merchant_reference]" has a null value in JSON.');
        assert(json.containsKey(r'rail'),
            'Required key "PaymentRequest[rail]" is missing from JSON.');
        assert(json[r'rail'] != null,
            'Required key "PaymentRequest[rail]" has a null value in JSON.');
        assert(json.containsKey(r'return_url'),
            'Required key "PaymentRequest[return_url]" is missing from JSON.');
        assert(json[r'return_url'] != null,
            'Required key "PaymentRequest[return_url]" has a null value in JSON.');
        return true;
      }());

      return PaymentRequest(
        amount: mapValueOfType<String>(json, r'amount')!,
        currency: PaymentRequestCurrencyEnum.fromJson(json[r'currency'])!,
        customerDevice:
            PaymentRequestCustomerDeviceEnum.fromJson(json[r'customer_device']),
        customerOtp: mapValueOfType<String>(json, r'customer_otp'),
        customerPhone: mapValueOfType<String>(json, r'customer_phone'),
        merchantReference: mapValueOfType<String>(json, r'merchant_reference')!,
        offerCode: mapValueOfType<String>(json, r'offer_code'),
        rail: PaymentRequestRailEnum.fromJson(json[r'rail'])!,
        returnUrl: mapValueOfType<String>(json, r'return_url')!,
      );
    }
    return null;
  }

  static List<PaymentRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentRequest> mapFromJson(dynamic json) {
    final map = <String, PaymentRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentRequest-objects as value to a dart map
  static Map<String, List<PaymentRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PaymentRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentRequest.listFromJson(
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
    'currency',
    'merchant_reference',
    'rail',
    'return_url',
  };
}

enum PaymentRequestCurrencyEnum {
  XOF._(r'XOF'),
  ;

  /// Instantiate a new enum with the provided value.
  const PaymentRequestCurrencyEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PaymentRequestCurrencyEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PaymentRequestCurrencyEnum? fromJson(dynamic value) =>
      PaymentRequestCurrencyEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PaymentRequestCurrencyEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PaymentRequestCurrencyEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentRequestCurrencyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentRequestCurrencyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentRequestCurrencyEnum] to String,
/// and [decode] dynamic data back to [PaymentRequestCurrencyEnum].
class PaymentRequestCurrencyEnumTypeTransformer {
  factory PaymentRequestCurrencyEnumTypeTransformer() =>
      _instance ??= const PaymentRequestCurrencyEnumTypeTransformer._();

  const PaymentRequestCurrencyEnumTypeTransformer._();

  String encode(PaymentRequestCurrencyEnum data) => data._value;

  /// Returns the instance of [PaymentRequestCurrencyEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentRequestCurrencyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PaymentRequestCurrencyEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'XOF':
          return PaymentRequestCurrencyEnum.XOF;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PaymentRequestCurrencyEnumTypeTransformer? _instance;
}

/// Appareil du client. sn_orange : mobile (par défaut) ouvre l'app Max it, desktop donne un QR code à scanner (next_action de type qr). Sans effet sur les autres moyens. EN: the customer's device. sn_orange: mobile (default) opens the Max it app, desktop returns a QR code to scan (next_action of type qr). No effect on other rails.
enum PaymentRequestCustomerDeviceEnum {
  mobile._(r'mobile'),
  desktop._(r'desktop'),
  ;

  /// Instantiate a new enum with the provided value.
  const PaymentRequestCustomerDeviceEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PaymentRequestCustomerDeviceEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PaymentRequestCustomerDeviceEnum? fromJson(dynamic value) =>
      PaymentRequestCustomerDeviceEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PaymentRequestCustomerDeviceEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PaymentRequestCustomerDeviceEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentRequestCustomerDeviceEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentRequestCustomerDeviceEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentRequestCustomerDeviceEnum] to String,
/// and [decode] dynamic data back to [PaymentRequestCustomerDeviceEnum].
class PaymentRequestCustomerDeviceEnumTypeTransformer {
  factory PaymentRequestCustomerDeviceEnumTypeTransformer() =>
      _instance ??= const PaymentRequestCustomerDeviceEnumTypeTransformer._();

  const PaymentRequestCustomerDeviceEnumTypeTransformer._();

  String encode(PaymentRequestCustomerDeviceEnum data) => data._value;

  /// Returns the instance of [PaymentRequestCustomerDeviceEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentRequestCustomerDeviceEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data is PaymentRequestCustomerDeviceEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'mobile':
          return PaymentRequestCustomerDeviceEnum.mobile;
        case r'desktop':
          return PaymentRequestCustomerDeviceEnum.desktop;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PaymentRequestCustomerDeviceEnumTypeTransformer? _instance;
}

/// Moyen de paiement : pays et opérateur (liste et état : GET /v1/rails).
enum PaymentRequestRailEnum {
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
  const PaymentRequestRailEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PaymentRequestRailEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PaymentRequestRailEnum? fromJson(dynamic value) =>
      PaymentRequestRailEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PaymentRequestRailEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PaymentRequestRailEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentRequestRailEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentRequestRailEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentRequestRailEnum] to String,
/// and [decode] dynamic data back to [PaymentRequestRailEnum].
class PaymentRequestRailEnumTypeTransformer {
  factory PaymentRequestRailEnumTypeTransformer() =>
      _instance ??= const PaymentRequestRailEnumTypeTransformer._();

  const PaymentRequestRailEnumTypeTransformer._();

  String encode(PaymentRequestRailEnum data) => data._value;

  /// Returns the instance of [PaymentRequestRailEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentRequestRailEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PaymentRequestRailEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'sn_wave':
          return PaymentRequestRailEnum.snWave;
        case r'sn_orange':
          return PaymentRequestRailEnum.snOrange;
        case r'ci_wave':
          return PaymentRequestRailEnum.ciWave;
        case r'ci_orange':
          return PaymentRequestRailEnum.ciOrange;
        case r'ci_mtn':
          return PaymentRequestRailEnum.ciMtn;
        case r'ci_moov':
          return PaymentRequestRailEnum.ciMoov;
        case r'bf_orange':
          return PaymentRequestRailEnum.bfOrange;
        case r'bf_wave':
          return PaymentRequestRailEnum.bfWave;
        case r'bf_moov':
          return PaymentRequestRailEnum.bfMoov;
        case r'tg_moov':
          return PaymentRequestRailEnum.tgMoov;
        case r'tg_togocell':
          return PaymentRequestRailEnum.tgTogocell;
        case r'bj_moov':
          return PaymentRequestRailEnum.bjMoov;
        case r'bj_mtn':
          return PaymentRequestRailEnum.bjMtn;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PaymentRequestRailEnumTypeTransformer? _instance;
}
