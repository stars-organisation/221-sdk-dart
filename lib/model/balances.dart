//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Balances {
  /// Returns a new [Balances] instance.
  Balances({
    required this.gatewayMode,
    required this.livemode,
    this.rails = const {},
  });

  /// simulated : mode test sans argent réel ; real : opérateur réel ; not_wired : aucun opérateur branché.
  BalancesGatewayModeEnum gatewayMode;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  /// Un solde par moyen de paiement utilisé, clé = identifiant du moyen de paiement.
  Map<String, RailBalance> rails;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Balances &&
          other.gatewayMode == gatewayMode &&
          other.livemode == livemode &&
          _deepEquality.equals(other.rails, rails);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (gatewayMode.hashCode) + (livemode.hashCode) + (rails.hashCode);

  @override
  String toString() =>
      'Balances[gatewayMode=$gatewayMode, livemode=$livemode, rails=$rails]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'gateway_mode'] = this.gatewayMode;
    json[r'livemode'] = this.livemode;
    json[r'rails'] = this.rails;
    return json;
  }

  /// Returns a new [Balances] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Balances? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'gateway_mode'),
            'Required key "Balances[gateway_mode]" is missing from JSON.');
        assert(json[r'gateway_mode'] != null,
            'Required key "Balances[gateway_mode]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "Balances[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "Balances[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'rails'),
            'Required key "Balances[rails]" is missing from JSON.');
        assert(json[r'rails'] != null,
            'Required key "Balances[rails]" has a null value in JSON.');
        return true;
      }());

      return Balances(
        gatewayMode: BalancesGatewayModeEnum.fromJson(json[r'gateway_mode'])!,
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        rails: RailBalance.mapFromJson(json[r'rails']),
      );
    }
    return null;
  }

  static List<Balances> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Balances>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Balances.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Balances> mapFromJson(dynamic json) {
    final map = <String, Balances>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Balances.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Balances-objects as value to a dart map
  static Map<String, List<Balances>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Balances>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Balances.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'gateway_mode',
    'livemode',
    'rails',
  };
}

/// simulated : mode test sans argent réel ; real : opérateur réel ; not_wired : aucun opérateur branché.
enum BalancesGatewayModeEnum {
  simulated._(r'simulated'),
  real._(r'real'),
  notWired._(r'not_wired'),
  ;

  /// Instantiate a new enum with the provided value.
  const BalancesGatewayModeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [BalancesGatewayModeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static BalancesGatewayModeEnum? fromJson(dynamic value) =>
      BalancesGatewayModeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [BalancesGatewayModeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<BalancesGatewayModeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BalancesGatewayModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BalancesGatewayModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BalancesGatewayModeEnum] to String,
/// and [decode] dynamic data back to [BalancesGatewayModeEnum].
class BalancesGatewayModeEnumTypeTransformer {
  factory BalancesGatewayModeEnumTypeTransformer() =>
      _instance ??= const BalancesGatewayModeEnumTypeTransformer._();

  const BalancesGatewayModeEnumTypeTransformer._();

  String encode(BalancesGatewayModeEnum data) => data._value;

  /// Returns the instance of [BalancesGatewayModeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BalancesGatewayModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is BalancesGatewayModeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'simulated':
          return BalancesGatewayModeEnum.simulated;
        case r'real':
          return BalancesGatewayModeEnum.real;
        case r'not_wired':
          return BalancesGatewayModeEnum.notWired;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static BalancesGatewayModeEnumTypeTransformer? _instance;
}
