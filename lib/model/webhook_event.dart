//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookEvent {
  /// Returns a new [WebhookEvent] instance.
  WebhookEvent({
    required this.createdAt,
    required this.eventClass,
    required this.id,
    this.initialAttemptId,
    required this.isDeliverySuccessful,
    required this.merchantId,
    this.objectId,
    required this.type,
  });

  DateTime createdAt;

  WebhookEventEventClassEnum eventClass;

  String id;

  String? initialAttemptId;

  bool isDeliverySuccessful;

  String merchantId;

  /// Identifiant du paiement, retrait, remboursement ou litige concerné.
  String? objectId;

  /// Liste : GET /v1/webhook-event-types.
  String type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WebhookEvent &&
          other.createdAt == createdAt &&
          other.eventClass == eventClass &&
          other.id == id &&
          other.initialAttemptId == initialAttemptId &&
          other.isDeliverySuccessful == isDeliverySuccessful &&
          other.merchantId == merchantId &&
          other.objectId == objectId &&
          other.type == type;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (createdAt.hashCode) +
      (eventClass.hashCode) +
      (id.hashCode) +
      (initialAttemptId == null ? 0 : initialAttemptId!.hashCode) +
      (isDeliverySuccessful.hashCode) +
      (merchantId.hashCode) +
      (objectId == null ? 0 : objectId!.hashCode) +
      (type.hashCode);

  @override
  String toString() =>
      'WebhookEvent[createdAt=$createdAt, eventClass=$eventClass, id=$id, initialAttemptId=$initialAttemptId, isDeliverySuccessful=$isDeliverySuccessful, merchantId=$merchantId, objectId=$objectId, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    json[r'event_class'] = this.eventClass;
    json[r'id'] = this.id;
    if (this.initialAttemptId != null) {
      json[r'initial_attempt_id'] = this.initialAttemptId;
    } else {
      json[r'initial_attempt_id'] = null;
    }
    json[r'is_delivery_successful'] = this.isDeliverySuccessful;
    json[r'merchant_id'] = this.merchantId;
    if (this.objectId != null) {
      json[r'object_id'] = this.objectId;
    } else {
      json[r'object_id'] = null;
    }
    json[r'type'] = this.type;
    return json;
  }

  /// Returns a new [WebhookEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'created_at'),
            'Required key "WebhookEvent[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null,
            'Required key "WebhookEvent[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'event_class'),
            'Required key "WebhookEvent[event_class]" is missing from JSON.');
        assert(json[r'event_class'] != null,
            'Required key "WebhookEvent[event_class]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "WebhookEvent[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "WebhookEvent[id]" has a null value in JSON.');
        assert(json.containsKey(r'is_delivery_successful'),
            'Required key "WebhookEvent[is_delivery_successful]" is missing from JSON.');
        assert(json[r'is_delivery_successful'] != null,
            'Required key "WebhookEvent[is_delivery_successful]" has a null value in JSON.');
        assert(json.containsKey(r'merchant_id'),
            'Required key "WebhookEvent[merchant_id]" is missing from JSON.');
        assert(json[r'merchant_id'] != null,
            'Required key "WebhookEvent[merchant_id]" has a null value in JSON.');
        assert(json.containsKey(r'type'),
            'Required key "WebhookEvent[type]" is missing from JSON.');
        assert(json[r'type'] != null,
            'Required key "WebhookEvent[type]" has a null value in JSON.');
        return true;
      }());

      return WebhookEvent(
        createdAt: mapDateTime(json, r'created_at', r'')!,
        eventClass: WebhookEventEventClassEnum.fromJson(json[r'event_class'])!,
        id: mapValueOfType<String>(json, r'id')!,
        initialAttemptId: mapValueOfType<String>(json, r'initial_attempt_id'),
        isDeliverySuccessful:
            mapValueOfType<bool>(json, r'is_delivery_successful')!,
        merchantId: mapValueOfType<String>(json, r'merchant_id')!,
        objectId: mapValueOfType<String>(json, r'object_id'),
        type: mapValueOfType<String>(json, r'type')!,
      );
    }
    return null;
  }

  static List<WebhookEvent> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebhookEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookEvent> mapFromJson(dynamic json) {
    final map = <String, WebhookEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookEvent-objects as value to a dart map
  static Map<String, List<WebhookEvent>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WebhookEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookEvent.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'created_at',
    'event_class',
    'id',
    'is_delivery_successful',
    'merchant_id',
    'type',
  };
}

enum WebhookEventEventClassEnum {
  payments._(r'payments'),
  payouts._(r'payouts'),
  refunds._(r'refunds'),
  disputes._(r'disputes'),
  ;

  /// Instantiate a new enum with the provided value.
  const WebhookEventEventClassEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [WebhookEventEventClassEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static WebhookEventEventClassEnum? fromJson(dynamic value) =>
      WebhookEventEventClassEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [WebhookEventEventClassEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<WebhookEventEventClassEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebhookEventEventClassEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookEventEventClassEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookEventEventClassEnum] to String,
/// and [decode] dynamic data back to [WebhookEventEventClassEnum].
class WebhookEventEventClassEnumTypeTransformer {
  factory WebhookEventEventClassEnumTypeTransformer() =>
      _instance ??= const WebhookEventEventClassEnumTypeTransformer._();

  const WebhookEventEventClassEnumTypeTransformer._();

  String encode(WebhookEventEventClassEnum data) => data._value;

  /// Returns the instance of [WebhookEventEventClassEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookEventEventClassEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is WebhookEventEventClassEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'payments':
          return WebhookEventEventClassEnum.payments;
        case r'payouts':
          return WebhookEventEventClassEnum.payouts;
        case r'refunds':
          return WebhookEventEventClassEnum.refunds;
        case r'disputes':
          return WebhookEventEventClassEnum.disputes;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static WebhookEventEventClassEnumTypeTransformer? _instance;
}
