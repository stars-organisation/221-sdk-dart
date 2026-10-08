//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PayoutDebit {
  /// Returns a new [PayoutDebit] instance.
  PayoutDebit({
    required this.amount,
    required this.rail,
  });

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String amount;

  /// Moyen de paiement : pays et opérateur (liste et état : GET /v1/rails).
  PayoutDebitRailEnum rail;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PayoutDebit && other.amount == amount && other.rail == rail;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (amount.hashCode) + (rail.hashCode);

  @override
  String toString() => 'PayoutDebit[amount=$amount, rail=$rail]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'amount'] = this.amount;
    json[r'rail'] = this.rail;
    return json;
  }

  /// Returns a new [PayoutDebit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PayoutDebit? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'amount'),
            'Required key "PayoutDebit[amount]" is missing from JSON.');
        assert(json[r'amount'] != null,
            'Required key "PayoutDebit[amount]" has a null value in JSON.');
        assert(json.containsKey(r'rail'),
            'Required key "PayoutDebit[rail]" is missing from JSON.');
        assert(json[r'rail'] != null,
            'Required key "PayoutDebit[rail]" has a null value in JSON.');
        return true;
      }());

      return PayoutDebit(
        amount: mapValueOfType<String>(json, r'amount')!,
        rail: PayoutDebitRailEnum.fromJson(json[r'rail'])!,
      );
    }
    return null;
  }

  static List<PayoutDebit> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayoutDebit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayoutDebit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PayoutDebit> mapFromJson(dynamic json) {
    final map = <String, PayoutDebit>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PayoutDebit.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PayoutDebit-objects as value to a dart map
  static Map<String, List<PayoutDebit>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PayoutDebit>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PayoutDebit.listFromJson(
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
    'rail',
  };
}

/// Moyen de paiement : pays et opérateur (liste et état : GET /v1/rails).
enum PayoutDebitRailEnum {
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
  const PayoutDebitRailEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PayoutDebitRailEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PayoutDebitRailEnum? fromJson(dynamic value) =>
      PayoutDebitRailEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PayoutDebitRailEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PayoutDebitRailEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayoutDebitRailEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayoutDebitRailEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PayoutDebitRailEnum] to String,
/// and [decode] dynamic data back to [PayoutDebitRailEnum].
class PayoutDebitRailEnumTypeTransformer {
  factory PayoutDebitRailEnumTypeTransformer() =>
      _instance ??= const PayoutDebitRailEnumTypeTransformer._();

  const PayoutDebitRailEnumTypeTransformer._();

  String encode(PayoutDebitRailEnum data) => data._value;

  /// Returns the instance of [PayoutDebitRailEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PayoutDebitRailEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PayoutDebitRailEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'sn_wave':
          return PayoutDebitRailEnum.snWave;
        case r'sn_orange':
          return PayoutDebitRailEnum.snOrange;
        case r'ci_wave':
          return PayoutDebitRailEnum.ciWave;
        case r'ci_orange':
          return PayoutDebitRailEnum.ciOrange;
        case r'ci_mtn':
          return PayoutDebitRailEnum.ciMtn;
        case r'ci_moov':
          return PayoutDebitRailEnum.ciMoov;
        case r'bf_orange':
          return PayoutDebitRailEnum.bfOrange;
        case r'bf_wave':
          return PayoutDebitRailEnum.bfWave;
        case r'bf_moov':
          return PayoutDebitRailEnum.bfMoov;
        case r'tg_moov':
          return PayoutDebitRailEnum.tgMoov;
        case r'tg_togocell':
          return PayoutDebitRailEnum.tgTogocell;
        case r'bj_moov':
          return PayoutDebitRailEnum.bjMoov;
        case r'bj_mtn':
          return PayoutDebitRailEnum.bjMtn;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PayoutDebitRailEnumTypeTransformer? _instance;
}
