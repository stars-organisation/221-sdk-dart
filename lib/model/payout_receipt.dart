//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PayoutReceipt {
  /// Returns a new [PayoutReceipt] instance.
  PayoutReceipt({
    required this.amount,
    required this.destinationLastDigits,
    required this.destinationType,
    required this.fee,
    required this.id,
    required this.livemode,
    required this.net,
    this.rail,
    required this.railLabel,
    required this.succeededAt,
  });

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String amount;

  /// Quatre derniers caractères du numéro ou du RIB crédité.
  String destinationLastDigits;

  PayoutReceiptDestinationTypeEnum destinationType;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String fee;

  /// Référence 221 Pay du retrait.
  String id;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  /// Montant reçu sur le numéro ou le compte.
  String net;

  /// Numéro mobile seulement.
  PayoutReceiptRailEnum? rail;

  /// Nom du moyen de paiement (ou « Virement bancaire »), dans la langue de la requête.
  String railLabel;

  /// Date de réussite, en UTC : l'heure de Dakar.
  DateTime succeededAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PayoutReceipt &&
          other.amount == amount &&
          other.destinationLastDigits == destinationLastDigits &&
          other.destinationType == destinationType &&
          other.fee == fee &&
          other.id == id &&
          other.livemode == livemode &&
          other.net == net &&
          other.rail == rail &&
          other.railLabel == railLabel &&
          other.succeededAt == succeededAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (amount.hashCode) +
      (destinationLastDigits.hashCode) +
      (destinationType.hashCode) +
      (fee.hashCode) +
      (id.hashCode) +
      (livemode.hashCode) +
      (net.hashCode) +
      (rail == null ? 0 : rail!.hashCode) +
      (railLabel.hashCode) +
      (succeededAt.hashCode);

  @override
  String toString() =>
      'PayoutReceipt[amount=$amount, destinationLastDigits=$destinationLastDigits, destinationType=$destinationType, fee=$fee, id=$id, livemode=$livemode, net=$net, rail=$rail, railLabel=$railLabel, succeededAt=$succeededAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'amount'] = this.amount;
    json[r'destination_last_digits'] = this.destinationLastDigits;
    json[r'destination_type'] = this.destinationType;
    json[r'fee'] = this.fee;
    json[r'id'] = this.id;
    json[r'livemode'] = this.livemode;
    json[r'net'] = this.net;
    if (this.rail != null) {
      json[r'rail'] = this.rail;
    } else {
      json[r'rail'] = null;
    }
    json[r'rail_label'] = this.railLabel;
    json[r'succeeded_at'] = this.succeededAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [PayoutReceipt] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PayoutReceipt? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'amount'),
            'Required key "PayoutReceipt[amount]" is missing from JSON.');
        assert(json[r'amount'] != null,
            'Required key "PayoutReceipt[amount]" has a null value in JSON.');
        assert(json.containsKey(r'destination_last_digits'),
            'Required key "PayoutReceipt[destination_last_digits]" is missing from JSON.');
        assert(json[r'destination_last_digits'] != null,
            'Required key "PayoutReceipt[destination_last_digits]" has a null value in JSON.');
        assert(json.containsKey(r'destination_type'),
            'Required key "PayoutReceipt[destination_type]" is missing from JSON.');
        assert(json[r'destination_type'] != null,
            'Required key "PayoutReceipt[destination_type]" has a null value in JSON.');
        assert(json.containsKey(r'fee'),
            'Required key "PayoutReceipt[fee]" is missing from JSON.');
        assert(json[r'fee'] != null,
            'Required key "PayoutReceipt[fee]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "PayoutReceipt[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "PayoutReceipt[id]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "PayoutReceipt[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "PayoutReceipt[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'net'),
            'Required key "PayoutReceipt[net]" is missing from JSON.');
        assert(json[r'net'] != null,
            'Required key "PayoutReceipt[net]" has a null value in JSON.');
        assert(json.containsKey(r'rail_label'),
            'Required key "PayoutReceipt[rail_label]" is missing from JSON.');
        assert(json[r'rail_label'] != null,
            'Required key "PayoutReceipt[rail_label]" has a null value in JSON.');
        assert(json.containsKey(r'succeeded_at'),
            'Required key "PayoutReceipt[succeeded_at]" is missing from JSON.');
        assert(json[r'succeeded_at'] != null,
            'Required key "PayoutReceipt[succeeded_at]" has a null value in JSON.');
        return true;
      }());

      return PayoutReceipt(
        amount: mapValueOfType<String>(json, r'amount')!,
        destinationLastDigits:
            mapValueOfType<String>(json, r'destination_last_digits')!,
        destinationType: PayoutReceiptDestinationTypeEnum.fromJson(
            json[r'destination_type'])!,
        fee: mapValueOfType<String>(json, r'fee')!,
        id: mapValueOfType<String>(json, r'id')!,
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        net: mapValueOfType<String>(json, r'net')!,
        rail: PayoutReceiptRailEnum.fromJson(json[r'rail']),
        railLabel: mapValueOfType<String>(json, r'rail_label')!,
        succeededAt: mapDateTime(json, r'succeeded_at', r'')!,
      );
    }
    return null;
  }

  static List<PayoutReceipt> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayoutReceipt>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayoutReceipt.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PayoutReceipt> mapFromJson(dynamic json) {
    final map = <String, PayoutReceipt>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PayoutReceipt.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PayoutReceipt-objects as value to a dart map
  static Map<String, List<PayoutReceipt>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PayoutReceipt>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PayoutReceipt.listFromJson(
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
    'destination_last_digits',
    'destination_type',
    'fee',
    'id',
    'livemode',
    'net',
    'rail_label',
    'succeeded_at',
  };
}

enum PayoutReceiptDestinationTypeEnum {
  mobile._(r'mobile'),
  bank._(r'bank'),
  ;

  /// Instantiate a new enum with the provided value.
  const PayoutReceiptDestinationTypeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PayoutReceiptDestinationTypeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PayoutReceiptDestinationTypeEnum? fromJson(dynamic value) =>
      PayoutReceiptDestinationTypeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PayoutReceiptDestinationTypeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PayoutReceiptDestinationTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayoutReceiptDestinationTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayoutReceiptDestinationTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PayoutReceiptDestinationTypeEnum] to String,
/// and [decode] dynamic data back to [PayoutReceiptDestinationTypeEnum].
class PayoutReceiptDestinationTypeEnumTypeTransformer {
  factory PayoutReceiptDestinationTypeEnumTypeTransformer() =>
      _instance ??= const PayoutReceiptDestinationTypeEnumTypeTransformer._();

  const PayoutReceiptDestinationTypeEnumTypeTransformer._();

  String encode(PayoutReceiptDestinationTypeEnum data) => data._value;

  /// Returns the instance of [PayoutReceiptDestinationTypeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PayoutReceiptDestinationTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data is PayoutReceiptDestinationTypeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'mobile':
          return PayoutReceiptDestinationTypeEnum.mobile;
        case r'bank':
          return PayoutReceiptDestinationTypeEnum.bank;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PayoutReceiptDestinationTypeEnumTypeTransformer? _instance;
}

/// Numéro mobile seulement.
enum PayoutReceiptRailEnum {
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
  const PayoutReceiptRailEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PayoutReceiptRailEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PayoutReceiptRailEnum? fromJson(dynamic value) =>
      PayoutReceiptRailEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PayoutReceiptRailEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PayoutReceiptRailEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayoutReceiptRailEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayoutReceiptRailEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PayoutReceiptRailEnum] to String,
/// and [decode] dynamic data back to [PayoutReceiptRailEnum].
class PayoutReceiptRailEnumTypeTransformer {
  factory PayoutReceiptRailEnumTypeTransformer() =>
      _instance ??= const PayoutReceiptRailEnumTypeTransformer._();

  const PayoutReceiptRailEnumTypeTransformer._();

  String encode(PayoutReceiptRailEnum data) => data._value;

  /// Returns the instance of [PayoutReceiptRailEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PayoutReceiptRailEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PayoutReceiptRailEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'sn_wave':
          return PayoutReceiptRailEnum.snWave;
        case r'sn_orange':
          return PayoutReceiptRailEnum.snOrange;
        case r'ci_wave':
          return PayoutReceiptRailEnum.ciWave;
        case r'ci_orange':
          return PayoutReceiptRailEnum.ciOrange;
        case r'ci_mtn':
          return PayoutReceiptRailEnum.ciMtn;
        case r'ci_moov':
          return PayoutReceiptRailEnum.ciMoov;
        case r'bf_orange':
          return PayoutReceiptRailEnum.bfOrange;
        case r'bf_wave':
          return PayoutReceiptRailEnum.bfWave;
        case r'bf_moov':
          return PayoutReceiptRailEnum.bfMoov;
        case r'tg_moov':
          return PayoutReceiptRailEnum.tgMoov;
        case r'tg_togocell':
          return PayoutReceiptRailEnum.tgTogocell;
        case r'bj_moov':
          return PayoutReceiptRailEnum.bjMoov;
        case r'bj_mtn':
          return PayoutReceiptRailEnum.bjMtn;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PayoutReceiptRailEnumTypeTransformer? _instance;
}
