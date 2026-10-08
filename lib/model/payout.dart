//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Payout {
  /// Returns a new [Payout] instance.
  Payout({
    required this.amount,
    required this.createdAt,
    required this.destinationId,
    required this.destinationType,
    this.failureReason,
    required this.fee,
    required this.id,
    required this.livemode,
    required this.net,
    this.rail,
    this.releaseAt,
    required this.status,
  });

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String amount;

  DateTime createdAt;

  String destinationId;

  PayoutDestinationType destinationType;

  /// Retrait refusé par l'opérateur : plafond du destinataire atteint, numéro ou compte invalide, ou indisponibilité. Aucun frais, le montant entier revient au solde. EN: why the operator refused the payout; no fee is charged and the whole amount returns to the balance.
  PayoutFailureReasonEnum? failureReason;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String fee;

  String id;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String net;

  /// Numéro mobile seulement.
  PayoutRailEnum? rail;

  /// Retrait en file : le numéro vient d'être vérifié, l'envoi part à partir de cette date.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? releaseAt;

  /// État du retrait ; not_sent quand il a été refusé avant envoi. Pas une liste fermée : interrogez GET /v1/payouts/{id} jusqu'à un état final.
  String status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Payout &&
          other.amount == amount &&
          other.createdAt == createdAt &&
          other.destinationId == destinationId &&
          other.destinationType == destinationType &&
          other.failureReason == failureReason &&
          other.fee == fee &&
          other.id == id &&
          other.livemode == livemode &&
          other.net == net &&
          other.rail == rail &&
          other.releaseAt == releaseAt &&
          other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (amount.hashCode) +
      (createdAt.hashCode) +
      (destinationId.hashCode) +
      (destinationType.hashCode) +
      (failureReason == null ? 0 : failureReason!.hashCode) +
      (fee.hashCode) +
      (id.hashCode) +
      (livemode.hashCode) +
      (net.hashCode) +
      (rail == null ? 0 : rail!.hashCode) +
      (releaseAt == null ? 0 : releaseAt!.hashCode) +
      (status.hashCode);

  @override
  String toString() =>
      'Payout[amount=$amount, createdAt=$createdAt, destinationId=$destinationId, destinationType=$destinationType, failureReason=$failureReason, fee=$fee, id=$id, livemode=$livemode, net=$net, rail=$rail, releaseAt=$releaseAt, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'amount'] = this.amount;
    json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    json[r'destination_id'] = this.destinationId;
    json[r'destination_type'] = this.destinationType;
    if (this.failureReason != null) {
      json[r'failure_reason'] = this.failureReason;
    } else {
      json[r'failure_reason'] = null;
    }
    json[r'fee'] = this.fee;
    json[r'id'] = this.id;
    json[r'livemode'] = this.livemode;
    json[r'net'] = this.net;
    if (this.rail != null) {
      json[r'rail'] = this.rail;
    } else {
      json[r'rail'] = null;
    }
    if (this.releaseAt != null) {
      json[r'release_at'] = this.releaseAt!.toUtc().toIso8601String();
    } else {
      json[r'release_at'] = null;
    }
    json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [Payout] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Payout? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'amount'),
            'Required key "Payout[amount]" is missing from JSON.');
        assert(json[r'amount'] != null,
            'Required key "Payout[amount]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'),
            'Required key "Payout[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null,
            'Required key "Payout[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'destination_id'),
            'Required key "Payout[destination_id]" is missing from JSON.');
        assert(json[r'destination_id'] != null,
            'Required key "Payout[destination_id]" has a null value in JSON.');
        assert(json.containsKey(r'destination_type'),
            'Required key "Payout[destination_type]" is missing from JSON.');
        assert(json[r'destination_type'] != null,
            'Required key "Payout[destination_type]" has a null value in JSON.');
        assert(json.containsKey(r'fee'),
            'Required key "Payout[fee]" is missing from JSON.');
        assert(json[r'fee'] != null,
            'Required key "Payout[fee]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "Payout[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "Payout[id]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "Payout[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "Payout[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'net'),
            'Required key "Payout[net]" is missing from JSON.');
        assert(json[r'net'] != null,
            'Required key "Payout[net]" has a null value in JSON.');
        assert(json.containsKey(r'status'),
            'Required key "Payout[status]" is missing from JSON.');
        assert(json[r'status'] != null,
            'Required key "Payout[status]" has a null value in JSON.');
        return true;
      }());

      return Payout(
        amount: mapValueOfType<String>(json, r'amount')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        destinationId: mapValueOfType<String>(json, r'destination_id')!,
        destinationType:
            PayoutDestinationType.fromJson(json[r'destination_type'])!,
        failureReason:
            PayoutFailureReasonEnum.fromJson(json[r'failure_reason']),
        fee: mapValueOfType<String>(json, r'fee')!,
        id: mapValueOfType<String>(json, r'id')!,
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        net: mapValueOfType<String>(json, r'net')!,
        rail: PayoutRailEnum.fromJson(json[r'rail']),
        releaseAt: mapDateTime(json, r'release_at', r''),
        status: mapValueOfType<String>(json, r'status')!,
      );
    }
    return null;
  }

  static List<Payout> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Payout>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Payout.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Payout> mapFromJson(dynamic json) {
    final map = <String, Payout>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Payout.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Payout-objects as value to a dart map
  static Map<String, List<Payout>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Payout>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Payout.listFromJson(
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
    'destination_id',
    'destination_type',
    'fee',
    'id',
    'livemode',
    'net',
    'status',
  };
}

/// Retrait refusé par l'opérateur : plafond du destinataire atteint, numéro ou compte invalide, ou indisponibilité. Aucun frais, le montant entier revient au solde. EN: why the operator refused the payout; no fee is charged and the whole amount returns to the balance.
enum PayoutFailureReasonEnum {
  destinationLimit._(r'destination_limit'),
  destinationInvalid._(r'destination_invalid'),
  providerUnavailable._(r'provider_unavailable'),
  ;

  /// Instantiate a new enum with the provided value.
  const PayoutFailureReasonEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PayoutFailureReasonEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PayoutFailureReasonEnum? fromJson(dynamic value) =>
      PayoutFailureReasonEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PayoutFailureReasonEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PayoutFailureReasonEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayoutFailureReasonEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayoutFailureReasonEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PayoutFailureReasonEnum] to String,
/// and [decode] dynamic data back to [PayoutFailureReasonEnum].
class PayoutFailureReasonEnumTypeTransformer {
  factory PayoutFailureReasonEnumTypeTransformer() =>
      _instance ??= const PayoutFailureReasonEnumTypeTransformer._();

  const PayoutFailureReasonEnumTypeTransformer._();

  String encode(PayoutFailureReasonEnum data) => data._value;

  /// Returns the instance of [PayoutFailureReasonEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PayoutFailureReasonEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PayoutFailureReasonEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'destination_limit':
          return PayoutFailureReasonEnum.destinationLimit;
        case r'destination_invalid':
          return PayoutFailureReasonEnum.destinationInvalid;
        case r'provider_unavailable':
          return PayoutFailureReasonEnum.providerUnavailable;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PayoutFailureReasonEnumTypeTransformer? _instance;
}

/// Numéro mobile seulement.
enum PayoutRailEnum {
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
  const PayoutRailEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PayoutRailEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PayoutRailEnum? fromJson(dynamic value) =>
      PayoutRailEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PayoutRailEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PayoutRailEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayoutRailEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayoutRailEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PayoutRailEnum] to String,
/// and [decode] dynamic data back to [PayoutRailEnum].
class PayoutRailEnumTypeTransformer {
  factory PayoutRailEnumTypeTransformer() =>
      _instance ??= const PayoutRailEnumTypeTransformer._();

  const PayoutRailEnumTypeTransformer._();

  String encode(PayoutRailEnum data) => data._value;

  /// Returns the instance of [PayoutRailEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PayoutRailEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PayoutRailEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'sn_wave':
          return PayoutRailEnum.snWave;
        case r'sn_orange':
          return PayoutRailEnum.snOrange;
        case r'ci_wave':
          return PayoutRailEnum.ciWave;
        case r'ci_orange':
          return PayoutRailEnum.ciOrange;
        case r'ci_mtn':
          return PayoutRailEnum.ciMtn;
        case r'ci_moov':
          return PayoutRailEnum.ciMoov;
        case r'bf_orange':
          return PayoutRailEnum.bfOrange;
        case r'bf_wave':
          return PayoutRailEnum.bfWave;
        case r'bf_moov':
          return PayoutRailEnum.bfMoov;
        case r'tg_moov':
          return PayoutRailEnum.tgMoov;
        case r'tg_togocell':
          return PayoutRailEnum.tgTogocell;
        case r'bj_moov':
          return PayoutRailEnum.bjMoov;
        case r'bj_mtn':
          return PayoutRailEnum.bjMtn;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PayoutRailEnumTypeTransformer? _instance;
}
