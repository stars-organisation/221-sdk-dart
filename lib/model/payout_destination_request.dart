//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PayoutDestinationRequest {
  /// Returns a new [PayoutDestinationRequest] instance.
  PayoutDestinationRequest({
    this.holderName,
    this.phone,
    this.rail,
    this.rib,
    this.type,
  });

  /// Titulaire du compte : 2 à 70 caractères, lettres, espaces, apostrophe, tiret et point. EN: account holder, 2 to 70 characters.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? holderName;

  /// Numéro mobile valide pour le pays du moyen de paiement.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phone;

  /// Moyen de paiement : pays et opérateur (liste et état : GET /v1/rails).
  PayoutDestinationRequestRailEnum? rail;

  /// RIB UEMOA de 24 caractères, espaces acceptés : code banque (2 lettres, 3 chiffres), guichet (5 chiffres), compte (12), clé (2 chiffres) vérifiée. EN: 24-character UEMOA RIB, spaces accepted; the key is checked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rib;

  /// mobile par défaut : rail et phone ; bank : rib et holder_name.
  PayoutDestinationRequestTypeEnum? type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PayoutDestinationRequest &&
          other.holderName == holderName &&
          other.phone == phone &&
          other.rail == rail &&
          other.rib == rib &&
          other.type == type;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (holderName == null ? 0 : holderName!.hashCode) +
      (phone == null ? 0 : phone!.hashCode) +
      (rail == null ? 0 : rail!.hashCode) +
      (rib == null ? 0 : rib!.hashCode) +
      (type == null ? 0 : type!.hashCode);

  @override
  String toString() =>
      'PayoutDestinationRequest[holderName=$holderName, phone=$phone, rail=$rail, rib=$rib, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.holderName != null) {
      json[r'holder_name'] = this.holderName;
    } else {
      json[r'holder_name'] = null;
    }
    if (this.phone != null) {
      json[r'phone'] = this.phone;
    } else {
      json[r'phone'] = null;
    }
    if (this.rail != null) {
      json[r'rail'] = this.rail;
    } else {
      json[r'rail'] = null;
    }
    if (this.rib != null) {
      json[r'rib'] = this.rib;
    } else {
      json[r'rib'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [PayoutDestinationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PayoutDestinationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return PayoutDestinationRequest(
        holderName: mapValueOfType<String>(json, r'holder_name'),
        phone: mapValueOfType<String>(json, r'phone'),
        rail: PayoutDestinationRequestRailEnum.fromJson(json[r'rail']),
        rib: mapValueOfType<String>(json, r'rib'),
        type: PayoutDestinationRequestTypeEnum.fromJson(json[r'type']),
      );
    }
    return null;
  }

  static List<PayoutDestinationRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayoutDestinationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayoutDestinationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PayoutDestinationRequest> mapFromJson(dynamic json) {
    final map = <String, PayoutDestinationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PayoutDestinationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PayoutDestinationRequest-objects as value to a dart map
  static Map<String, List<PayoutDestinationRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PayoutDestinationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PayoutDestinationRequest.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}

/// Moyen de paiement : pays et opérateur (liste et état : GET /v1/rails).
enum PayoutDestinationRequestRailEnum {
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
  const PayoutDestinationRequestRailEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PayoutDestinationRequestRailEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PayoutDestinationRequestRailEnum? fromJson(dynamic value) =>
      PayoutDestinationRequestRailEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PayoutDestinationRequestRailEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PayoutDestinationRequestRailEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayoutDestinationRequestRailEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayoutDestinationRequestRailEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PayoutDestinationRequestRailEnum] to String,
/// and [decode] dynamic data back to [PayoutDestinationRequestRailEnum].
class PayoutDestinationRequestRailEnumTypeTransformer {
  factory PayoutDestinationRequestRailEnumTypeTransformer() =>
      _instance ??= const PayoutDestinationRequestRailEnumTypeTransformer._();

  const PayoutDestinationRequestRailEnumTypeTransformer._();

  String encode(PayoutDestinationRequestRailEnum data) => data._value;

  /// Returns the instance of [PayoutDestinationRequestRailEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PayoutDestinationRequestRailEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data is PayoutDestinationRequestRailEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'sn_wave':
          return PayoutDestinationRequestRailEnum.snWave;
        case r'sn_orange':
          return PayoutDestinationRequestRailEnum.snOrange;
        case r'ci_wave':
          return PayoutDestinationRequestRailEnum.ciWave;
        case r'ci_orange':
          return PayoutDestinationRequestRailEnum.ciOrange;
        case r'ci_mtn':
          return PayoutDestinationRequestRailEnum.ciMtn;
        case r'ci_moov':
          return PayoutDestinationRequestRailEnum.ciMoov;
        case r'bf_orange':
          return PayoutDestinationRequestRailEnum.bfOrange;
        case r'bf_wave':
          return PayoutDestinationRequestRailEnum.bfWave;
        case r'bf_moov':
          return PayoutDestinationRequestRailEnum.bfMoov;
        case r'tg_moov':
          return PayoutDestinationRequestRailEnum.tgMoov;
        case r'tg_togocell':
          return PayoutDestinationRequestRailEnum.tgTogocell;
        case r'bj_moov':
          return PayoutDestinationRequestRailEnum.bjMoov;
        case r'bj_mtn':
          return PayoutDestinationRequestRailEnum.bjMtn;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PayoutDestinationRequestRailEnumTypeTransformer? _instance;
}

/// mobile par défaut : rail et phone ; bank : rib et holder_name.
enum PayoutDestinationRequestTypeEnum {
  mobile._(r'mobile'),
  bank._(r'bank'),
  ;

  /// Instantiate a new enum with the provided value.
  const PayoutDestinationRequestTypeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PayoutDestinationRequestTypeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PayoutDestinationRequestTypeEnum? fromJson(dynamic value) =>
      PayoutDestinationRequestTypeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PayoutDestinationRequestTypeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PayoutDestinationRequestTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayoutDestinationRequestTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayoutDestinationRequestTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PayoutDestinationRequestTypeEnum] to String,
/// and [decode] dynamic data back to [PayoutDestinationRequestTypeEnum].
class PayoutDestinationRequestTypeEnumTypeTransformer {
  factory PayoutDestinationRequestTypeEnumTypeTransformer() =>
      _instance ??= const PayoutDestinationRequestTypeEnumTypeTransformer._();

  const PayoutDestinationRequestTypeEnumTypeTransformer._();

  String encode(PayoutDestinationRequestTypeEnum data) => data._value;

  /// Returns the instance of [PayoutDestinationRequestTypeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PayoutDestinationRequestTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data is PayoutDestinationRequestTypeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'mobile':
          return PayoutDestinationRequestTypeEnum.mobile;
        case r'bank':
          return PayoutDestinationRequestTypeEnum.bank;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PayoutDestinationRequestTypeEnumTypeTransformer? _instance;
}
