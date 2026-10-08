//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentsHealth {
  /// Returns a new [PaymentsHealth] instance.
  PaymentsHealth({
    required this.gatewayMode,
    required this.mode,
    required this.ready,
  });

  /// simulated : aucun argent réel ne circule.
  PaymentsHealthGatewayModeEnum gatewayMode;

  String mode;

  bool ready;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentsHealth &&
          other.gatewayMode == gatewayMode &&
          other.mode == mode &&
          other.ready == ready;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (gatewayMode.hashCode) + (mode.hashCode) + (ready.hashCode);

  @override
  String toString() =>
      'PaymentsHealth[gatewayMode=$gatewayMode, mode=$mode, ready=$ready]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'gateway_mode'] = this.gatewayMode;
    json[r'mode'] = this.mode;
    json[r'ready'] = this.ready;
    return json;
  }

  /// Returns a new [PaymentsHealth] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentsHealth? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'gateway_mode'),
            'Required key "PaymentsHealth[gateway_mode]" is missing from JSON.');
        assert(json[r'gateway_mode'] != null,
            'Required key "PaymentsHealth[gateway_mode]" has a null value in JSON.');
        assert(json.containsKey(r'mode'),
            'Required key "PaymentsHealth[mode]" is missing from JSON.');
        assert(json[r'mode'] != null,
            'Required key "PaymentsHealth[mode]" has a null value in JSON.');
        assert(json.containsKey(r'ready'),
            'Required key "PaymentsHealth[ready]" is missing from JSON.');
        assert(json[r'ready'] != null,
            'Required key "PaymentsHealth[ready]" has a null value in JSON.');
        return true;
      }());

      return PaymentsHealth(
        gatewayMode:
            PaymentsHealthGatewayModeEnum.fromJson(json[r'gateway_mode'])!,
        mode: mapValueOfType<String>(json, r'mode')!,
        ready: mapValueOfType<bool>(json, r'ready')!,
      );
    }
    return null;
  }

  static List<PaymentsHealth> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentsHealth>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentsHealth.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentsHealth> mapFromJson(dynamic json) {
    final map = <String, PaymentsHealth>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentsHealth.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentsHealth-objects as value to a dart map
  static Map<String, List<PaymentsHealth>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PaymentsHealth>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentsHealth.listFromJson(
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
    'mode',
    'ready',
  };
}

/// simulated : aucun argent réel ne circule.
enum PaymentsHealthGatewayModeEnum {
  simulated._(r'simulated'),
  real._(r'real'),
  notWired._(r'not_wired'),
  ;

  /// Instantiate a new enum with the provided value.
  const PaymentsHealthGatewayModeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PaymentsHealthGatewayModeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PaymentsHealthGatewayModeEnum? fromJson(dynamic value) =>
      PaymentsHealthGatewayModeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PaymentsHealthGatewayModeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PaymentsHealthGatewayModeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentsHealthGatewayModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentsHealthGatewayModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentsHealthGatewayModeEnum] to String,
/// and [decode] dynamic data back to [PaymentsHealthGatewayModeEnum].
class PaymentsHealthGatewayModeEnumTypeTransformer {
  factory PaymentsHealthGatewayModeEnumTypeTransformer() =>
      _instance ??= const PaymentsHealthGatewayModeEnumTypeTransformer._();

  const PaymentsHealthGatewayModeEnumTypeTransformer._();

  String encode(PaymentsHealthGatewayModeEnum data) => data._value;

  /// Returns the instance of [PaymentsHealthGatewayModeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentsHealthGatewayModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PaymentsHealthGatewayModeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'simulated':
          return PaymentsHealthGatewayModeEnum.simulated;
        case r'real':
          return PaymentsHealthGatewayModeEnum.real;
        case r'not_wired':
          return PaymentsHealthGatewayModeEnum.notWired;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PaymentsHealthGatewayModeEnumTypeTransformer? _instance;
}
