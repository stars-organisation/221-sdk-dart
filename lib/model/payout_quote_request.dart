//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PayoutQuoteRequest {
  /// Returns a new [PayoutQuoteRequest] instance.
  PayoutQuoteRequest({
    required this.amount,
    required this.destinationId,
    this.rail,
  });

  /// Montant débité du solde disponible, frais compris.
  String amount;

  /// Numéro ou compte enregistré par POST /v1/payout-destinations, sur le même moyen de paiement.
  String destinationId;

  /// Requis pour un numéro mobile ; absent pour un compte bancaire.
  PayoutQuoteRequestRailEnum? rail;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PayoutQuoteRequest &&
          other.amount == amount &&
          other.destinationId == destinationId &&
          other.rail == rail;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (amount.hashCode) +
      (destinationId.hashCode) +
      (rail == null ? 0 : rail!.hashCode);

  @override
  String toString() =>
      'PayoutQuoteRequest[amount=$amount, destinationId=$destinationId, rail=$rail]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'amount'] = this.amount;
    json[r'destination_id'] = this.destinationId;
    if (this.rail != null) {
      json[r'rail'] = this.rail;
    } else {
      json[r'rail'] = null;
    }
    return json;
  }

  /// Returns a new [PayoutQuoteRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PayoutQuoteRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'amount'),
            'Required key "PayoutQuoteRequest[amount]" is missing from JSON.');
        assert(json[r'amount'] != null,
            'Required key "PayoutQuoteRequest[amount]" has a null value in JSON.');
        assert(json.containsKey(r'destination_id'),
            'Required key "PayoutQuoteRequest[destination_id]" is missing from JSON.');
        assert(json[r'destination_id'] != null,
            'Required key "PayoutQuoteRequest[destination_id]" has a null value in JSON.');
        return true;
      }());

      return PayoutQuoteRequest(
        amount: mapValueOfType<String>(json, r'amount')!,
        destinationId: mapValueOfType<String>(json, r'destination_id')!,
        rail: PayoutQuoteRequestRailEnum.fromJson(json[r'rail']),
      );
    }
    return null;
  }

  static List<PayoutQuoteRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayoutQuoteRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayoutQuoteRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PayoutQuoteRequest> mapFromJson(dynamic json) {
    final map = <String, PayoutQuoteRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PayoutQuoteRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PayoutQuoteRequest-objects as value to a dart map
  static Map<String, List<PayoutQuoteRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PayoutQuoteRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PayoutQuoteRequest.listFromJson(
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
    'destination_id',
  };
}

/// Requis pour un numéro mobile ; absent pour un compte bancaire.
enum PayoutQuoteRequestRailEnum {
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
  const PayoutQuoteRequestRailEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PayoutQuoteRequestRailEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PayoutQuoteRequestRailEnum? fromJson(dynamic value) =>
      PayoutQuoteRequestRailEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PayoutQuoteRequestRailEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PayoutQuoteRequestRailEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayoutQuoteRequestRailEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayoutQuoteRequestRailEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PayoutQuoteRequestRailEnum] to String,
/// and [decode] dynamic data back to [PayoutQuoteRequestRailEnum].
class PayoutQuoteRequestRailEnumTypeTransformer {
  factory PayoutQuoteRequestRailEnumTypeTransformer() =>
      _instance ??= const PayoutQuoteRequestRailEnumTypeTransformer._();

  const PayoutQuoteRequestRailEnumTypeTransformer._();

  String encode(PayoutQuoteRequestRailEnum data) => data._value;

  /// Returns the instance of [PayoutQuoteRequestRailEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PayoutQuoteRequestRailEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PayoutQuoteRequestRailEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'sn_wave':
          return PayoutQuoteRequestRailEnum.snWave;
        case r'sn_orange':
          return PayoutQuoteRequestRailEnum.snOrange;
        case r'ci_wave':
          return PayoutQuoteRequestRailEnum.ciWave;
        case r'ci_orange':
          return PayoutQuoteRequestRailEnum.ciOrange;
        case r'ci_mtn':
          return PayoutQuoteRequestRailEnum.ciMtn;
        case r'ci_moov':
          return PayoutQuoteRequestRailEnum.ciMoov;
        case r'bf_orange':
          return PayoutQuoteRequestRailEnum.bfOrange;
        case r'bf_wave':
          return PayoutQuoteRequestRailEnum.bfWave;
        case r'bf_moov':
          return PayoutQuoteRequestRailEnum.bfMoov;
        case r'tg_moov':
          return PayoutQuoteRequestRailEnum.tgMoov;
        case r'tg_togocell':
          return PayoutQuoteRequestRailEnum.tgTogocell;
        case r'bj_moov':
          return PayoutQuoteRequestRailEnum.bjMoov;
        case r'bj_mtn':
          return PayoutQuoteRequestRailEnum.bjMtn;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PayoutQuoteRequestRailEnumTypeTransformer? _instance;
}
