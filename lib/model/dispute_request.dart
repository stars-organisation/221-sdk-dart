//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DisputeRequest {
  /// Returns a new [DisputeRequest] instance.
  DisputeRequest({
    required this.amount,
    required this.paymentId,
    required this.reason,
  });

  /// Au plus le montant du paiement.
  String amount;

  /// Paiement confirmé du projet.
  String paymentId;

  DisputeRequestReasonEnum reason;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DisputeRequest &&
          other.amount == amount &&
          other.paymentId == paymentId &&
          other.reason == reason;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (amount.hashCode) + (paymentId.hashCode) + (reason.hashCode);

  @override
  String toString() =>
      'DisputeRequest[amount=$amount, paymentId=$paymentId, reason=$reason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'amount'] = this.amount;
    json[r'payment_id'] = this.paymentId;
    json[r'reason'] = this.reason;
    return json;
  }

  /// Returns a new [DisputeRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DisputeRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'amount'),
            'Required key "DisputeRequest[amount]" is missing from JSON.');
        assert(json[r'amount'] != null,
            'Required key "DisputeRequest[amount]" has a null value in JSON.');
        assert(json.containsKey(r'payment_id'),
            'Required key "DisputeRequest[payment_id]" is missing from JSON.');
        assert(json[r'payment_id'] != null,
            'Required key "DisputeRequest[payment_id]" has a null value in JSON.');
        assert(json.containsKey(r'reason'),
            'Required key "DisputeRequest[reason]" is missing from JSON.');
        assert(json[r'reason'] != null,
            'Required key "DisputeRequest[reason]" has a null value in JSON.');
        return true;
      }());

      return DisputeRequest(
        amount: mapValueOfType<String>(json, r'amount')!,
        paymentId: mapValueOfType<String>(json, r'payment_id')!,
        reason: DisputeRequestReasonEnum.fromJson(json[r'reason'])!,
      );
    }
    return null;
  }

  static List<DisputeRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DisputeRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DisputeRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DisputeRequest> mapFromJson(dynamic json) {
    final map = <String, DisputeRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DisputeRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DisputeRequest-objects as value to a dart map
  static Map<String, List<DisputeRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DisputeRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DisputeRequest.listFromJson(
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
    'payment_id',
    'reason',
  };
}

enum DisputeRequestReasonEnum {
  notReceived._(r'not_received'),
  notAsDescribed._(r'not_as_described'),
  unauthorized._(r'unauthorized'),
  duplicate._(r'duplicate'),
  otherDocumented._(r'other_documented'),
  ;

  /// Instantiate a new enum with the provided value.
  const DisputeRequestReasonEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [DisputeRequestReasonEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static DisputeRequestReasonEnum? fromJson(dynamic value) =>
      DisputeRequestReasonEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [DisputeRequestReasonEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<DisputeRequestReasonEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DisputeRequestReasonEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DisputeRequestReasonEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DisputeRequestReasonEnum] to String,
/// and [decode] dynamic data back to [DisputeRequestReasonEnum].
class DisputeRequestReasonEnumTypeTransformer {
  factory DisputeRequestReasonEnumTypeTransformer() =>
      _instance ??= const DisputeRequestReasonEnumTypeTransformer._();

  const DisputeRequestReasonEnumTypeTransformer._();

  String encode(DisputeRequestReasonEnum data) => data._value;

  /// Returns the instance of [DisputeRequestReasonEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DisputeRequestReasonEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is DisputeRequestReasonEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'not_received':
          return DisputeRequestReasonEnum.notReceived;
        case r'not_as_described':
          return DisputeRequestReasonEnum.notAsDescribed;
        case r'unauthorized':
          return DisputeRequestReasonEnum.unauthorized;
        case r'duplicate':
          return DisputeRequestReasonEnum.duplicate;
        case r'other_documented':
          return DisputeRequestReasonEnum.otherDocumented;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static DisputeRequestReasonEnumTypeTransformer? _instance;
}
