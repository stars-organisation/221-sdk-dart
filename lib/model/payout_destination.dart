//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PayoutDestination {
  /// Returns a new [PayoutDestination] instance.
  PayoutDestination({
    this.availableAt,
    this.bankCode,
    this.holderName,
    required this.id,
    required this.livemode,
    this.phoneLastDigits,
    this.rail,
    this.ribLast4,
    required this.type,
    this.verification,
    required this.verified,
  });

  /// Numéro vérifié : un retrait demandé avant cette date (24 h après la vérification) attend en file.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? availableAt;

  /// Compte bancaire seulement.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bankCode;

  /// Compte bancaire seulement.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? holderName;

  String id;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  /// Numéro mobile seulement.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phoneLastDigits;

  /// Numéro mobile seulement.
  PayoutDestinationRailEnum? rail;

  /// Compte bancaire seulement : quatre derniers caractères du RIB.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ribLast4;

  PayoutDestinationType type;

  /// Dernier code envoyé, tant que le numéro n'est pas vérifié.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DestinationVerification? verification;

  /// Vrai une fois le code à 6 chiffres saisi : devis et retraits refusent un numéro non vérifié.
  bool verified;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PayoutDestination &&
          other.availableAt == availableAt &&
          other.bankCode == bankCode &&
          other.holderName == holderName &&
          other.id == id &&
          other.livemode == livemode &&
          other.phoneLastDigits == phoneLastDigits &&
          other.rail == rail &&
          other.ribLast4 == ribLast4 &&
          other.type == type &&
          other.verification == verification &&
          other.verified == verified;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (availableAt == null ? 0 : availableAt!.hashCode) +
      (bankCode == null ? 0 : bankCode!.hashCode) +
      (holderName == null ? 0 : holderName!.hashCode) +
      (id.hashCode) +
      (livemode.hashCode) +
      (phoneLastDigits == null ? 0 : phoneLastDigits!.hashCode) +
      (rail == null ? 0 : rail!.hashCode) +
      (ribLast4 == null ? 0 : ribLast4!.hashCode) +
      (type.hashCode) +
      (verification == null ? 0 : verification!.hashCode) +
      (verified.hashCode);

  @override
  String toString() =>
      'PayoutDestination[availableAt=$availableAt, bankCode=$bankCode, holderName=$holderName, id=$id, livemode=$livemode, phoneLastDigits=$phoneLastDigits, rail=$rail, ribLast4=$ribLast4, type=$type, verification=$verification, verified=$verified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.availableAt != null) {
      json[r'available_at'] = this.availableAt!.toUtc().toIso8601String();
    } else {
      json[r'available_at'] = null;
    }
    if (this.bankCode != null) {
      json[r'bank_code'] = this.bankCode;
    } else {
      json[r'bank_code'] = null;
    }
    if (this.holderName != null) {
      json[r'holder_name'] = this.holderName;
    } else {
      json[r'holder_name'] = null;
    }
    json[r'id'] = this.id;
    json[r'livemode'] = this.livemode;
    if (this.phoneLastDigits != null) {
      json[r'phone_last_digits'] = this.phoneLastDigits;
    } else {
      json[r'phone_last_digits'] = null;
    }
    if (this.rail != null) {
      json[r'rail'] = this.rail;
    } else {
      json[r'rail'] = null;
    }
    if (this.ribLast4 != null) {
      json[r'rib_last4'] = this.ribLast4;
    } else {
      json[r'rib_last4'] = null;
    }
    json[r'type'] = this.type;
    if (this.verification != null) {
      json[r'verification'] = this.verification;
    } else {
      json[r'verification'] = null;
    }
    json[r'verified'] = this.verified;
    return json;
  }

  /// Returns a new [PayoutDestination] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PayoutDestination? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'),
            'Required key "PayoutDestination[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "PayoutDestination[id]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "PayoutDestination[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "PayoutDestination[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'type'),
            'Required key "PayoutDestination[type]" is missing from JSON.');
        assert(json[r'type'] != null,
            'Required key "PayoutDestination[type]" has a null value in JSON.');
        assert(json.containsKey(r'verified'),
            'Required key "PayoutDestination[verified]" is missing from JSON.');
        assert(json[r'verified'] != null,
            'Required key "PayoutDestination[verified]" has a null value in JSON.');
        return true;
      }());

      return PayoutDestination(
        availableAt: mapDateTime(json, r'available_at', r''),
        bankCode: mapValueOfType<String>(json, r'bank_code'),
        holderName: mapValueOfType<String>(json, r'holder_name'),
        id: mapValueOfType<String>(json, r'id')!,
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        phoneLastDigits: mapValueOfType<String>(json, r'phone_last_digits'),
        rail: PayoutDestinationRailEnum.fromJson(json[r'rail']),
        ribLast4: mapValueOfType<String>(json, r'rib_last4'),
        type: PayoutDestinationType.fromJson(json[r'type'])!,
        verification: DestinationVerification.fromJson(json[r'verification']),
        verified: mapValueOfType<bool>(json, r'verified')!,
      );
    }
    return null;
  }

  static List<PayoutDestination> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayoutDestination>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayoutDestination.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PayoutDestination> mapFromJson(dynamic json) {
    final map = <String, PayoutDestination>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PayoutDestination.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PayoutDestination-objects as value to a dart map
  static Map<String, List<PayoutDestination>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PayoutDestination>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PayoutDestination.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'livemode',
    'type',
    'verified',
  };
}

/// Numéro mobile seulement.
enum PayoutDestinationRailEnum {
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
  const PayoutDestinationRailEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PayoutDestinationRailEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PayoutDestinationRailEnum? fromJson(dynamic value) =>
      PayoutDestinationRailEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PayoutDestinationRailEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PayoutDestinationRailEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayoutDestinationRailEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayoutDestinationRailEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PayoutDestinationRailEnum] to String,
/// and [decode] dynamic data back to [PayoutDestinationRailEnum].
class PayoutDestinationRailEnumTypeTransformer {
  factory PayoutDestinationRailEnumTypeTransformer() =>
      _instance ??= const PayoutDestinationRailEnumTypeTransformer._();

  const PayoutDestinationRailEnumTypeTransformer._();

  String encode(PayoutDestinationRailEnum data) => data._value;

  /// Returns the instance of [PayoutDestinationRailEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PayoutDestinationRailEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PayoutDestinationRailEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'sn_wave':
          return PayoutDestinationRailEnum.snWave;
        case r'sn_orange':
          return PayoutDestinationRailEnum.snOrange;
        case r'ci_wave':
          return PayoutDestinationRailEnum.ciWave;
        case r'ci_orange':
          return PayoutDestinationRailEnum.ciOrange;
        case r'ci_mtn':
          return PayoutDestinationRailEnum.ciMtn;
        case r'ci_moov':
          return PayoutDestinationRailEnum.ciMoov;
        case r'bf_orange':
          return PayoutDestinationRailEnum.bfOrange;
        case r'bf_wave':
          return PayoutDestinationRailEnum.bfWave;
        case r'bf_moov':
          return PayoutDestinationRailEnum.bfMoov;
        case r'tg_moov':
          return PayoutDestinationRailEnum.tgMoov;
        case r'tg_togocell':
          return PayoutDestinationRailEnum.tgTogocell;
        case r'bj_moov':
          return PayoutDestinationRailEnum.bjMoov;
        case r'bj_mtn':
          return PayoutDestinationRailEnum.bjMtn;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PayoutDestinationRailEnumTypeTransformer? _instance;
}
