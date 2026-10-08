//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SettingsRequest {
  /// Returns a new [SettingsRequest] instance.
  SettingsRequest({
    required this.refundFeePayerDefault,
  });

  SettingsRequestRefundFeePayerDefaultEnum refundFeePayerDefault;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SettingsRequest &&
          other.refundFeePayerDefault == refundFeePayerDefault;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (refundFeePayerDefault.hashCode);

  @override
  String toString() =>
      'SettingsRequest[refundFeePayerDefault=$refundFeePayerDefault]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'refund_fee_payer_default'] = this.refundFeePayerDefault;
    return json;
  }

  /// Returns a new [SettingsRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SettingsRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'refund_fee_payer_default'),
            'Required key "SettingsRequest[refund_fee_payer_default]" is missing from JSON.');
        assert(json[r'refund_fee_payer_default'] != null,
            'Required key "SettingsRequest[refund_fee_payer_default]" has a null value in JSON.');
        return true;
      }());

      return SettingsRequest(
        refundFeePayerDefault:
            SettingsRequestRefundFeePayerDefaultEnum.fromJson(
                json[r'refund_fee_payer_default'])!,
      );
    }
    return null;
  }

  static List<SettingsRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SettingsRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SettingsRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SettingsRequest> mapFromJson(dynamic json) {
    final map = <String, SettingsRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SettingsRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SettingsRequest-objects as value to a dart map
  static Map<String, List<SettingsRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SettingsRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SettingsRequest.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'refund_fee_payer_default',
  };
}

enum SettingsRequestRefundFeePayerDefaultEnum {
  merchant._(r'merchant'),
  customer._(r'customer'),
  ;

  /// Instantiate a new enum with the provided value.
  const SettingsRequestRefundFeePayerDefaultEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [SettingsRequestRefundFeePayerDefaultEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static SettingsRequestRefundFeePayerDefaultEnum? fromJson(dynamic value) =>
      SettingsRequestRefundFeePayerDefaultEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [SettingsRequestRefundFeePayerDefaultEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<SettingsRequestRefundFeePayerDefaultEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SettingsRequestRefundFeePayerDefaultEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SettingsRequestRefundFeePayerDefaultEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SettingsRequestRefundFeePayerDefaultEnum] to String,
/// and [decode] dynamic data back to [SettingsRequestRefundFeePayerDefaultEnum].
class SettingsRequestRefundFeePayerDefaultEnumTypeTransformer {
  factory SettingsRequestRefundFeePayerDefaultEnumTypeTransformer() =>
      _instance ??=
          const SettingsRequestRefundFeePayerDefaultEnumTypeTransformer._();

  const SettingsRequestRefundFeePayerDefaultEnumTypeTransformer._();

  String encode(SettingsRequestRefundFeePayerDefaultEnum data) => data._value;

  /// Returns the instance of [SettingsRequestRefundFeePayerDefaultEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SettingsRequestRefundFeePayerDefaultEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data is SettingsRequestRefundFeePayerDefaultEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'merchant':
          return SettingsRequestRefundFeePayerDefaultEnum.merchant;
        case r'customer':
          return SettingsRequestRefundFeePayerDefaultEnum.customer;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static SettingsRequestRefundFeePayerDefaultEnumTypeTransformer? _instance;
}
