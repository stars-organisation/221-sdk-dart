//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookAttempt {
  /// Returns a new [WebhookAttempt] instance.
  WebhookAttempt({
    required this.createdAt,
    required this.deliveryAttempt,
    required this.id,
    required this.isDeliverySuccessful,
    required this.livemode,
    required this.request,
    required this.response,
  });

  DateTime createdAt;

  /// Numéro de l'essai, à partir de 1.
  int deliveryAttempt;

  String id;

  /// true pour une réponse 2xx.
  bool isDeliverySuccessful;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  WebhookRequest request;

  WebhookResponse response;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WebhookAttempt &&
          other.createdAt == createdAt &&
          other.deliveryAttempt == deliveryAttempt &&
          other.id == id &&
          other.isDeliverySuccessful == isDeliverySuccessful &&
          other.livemode == livemode &&
          other.request == request &&
          other.response == response;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (createdAt.hashCode) +
      (deliveryAttempt.hashCode) +
      (id.hashCode) +
      (isDeliverySuccessful.hashCode) +
      (livemode.hashCode) +
      (request.hashCode) +
      (response.hashCode);

  @override
  String toString() =>
      'WebhookAttempt[createdAt=$createdAt, deliveryAttempt=$deliveryAttempt, id=$id, isDeliverySuccessful=$isDeliverySuccessful, livemode=$livemode, request=$request, response=$response]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    json[r'delivery_attempt'] = this.deliveryAttempt;
    json[r'id'] = this.id;
    json[r'is_delivery_successful'] = this.isDeliverySuccessful;
    json[r'livemode'] = this.livemode;
    json[r'request'] = this.request;
    json[r'response'] = this.response;
    return json;
  }

  /// Returns a new [WebhookAttempt] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookAttempt? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'created_at'),
            'Required key "WebhookAttempt[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null,
            'Required key "WebhookAttempt[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'delivery_attempt'),
            'Required key "WebhookAttempt[delivery_attempt]" is missing from JSON.');
        assert(json[r'delivery_attempt'] != null,
            'Required key "WebhookAttempt[delivery_attempt]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "WebhookAttempt[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "WebhookAttempt[id]" has a null value in JSON.');
        assert(json.containsKey(r'is_delivery_successful'),
            'Required key "WebhookAttempt[is_delivery_successful]" is missing from JSON.');
        assert(json[r'is_delivery_successful'] != null,
            'Required key "WebhookAttempt[is_delivery_successful]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "WebhookAttempt[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "WebhookAttempt[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'request'),
            'Required key "WebhookAttempt[request]" is missing from JSON.');
        assert(json[r'request'] != null,
            'Required key "WebhookAttempt[request]" has a null value in JSON.');
        assert(json.containsKey(r'response'),
            'Required key "WebhookAttempt[response]" is missing from JSON.');
        assert(json[r'response'] != null,
            'Required key "WebhookAttempt[response]" has a null value in JSON.');
        return true;
      }());

      return WebhookAttempt(
        createdAt: mapDateTime(json, r'created_at', r'')!,
        deliveryAttempt: mapValueOfType<int>(json, r'delivery_attempt')!,
        id: mapValueOfType<String>(json, r'id')!,
        isDeliverySuccessful:
            mapValueOfType<bool>(json, r'is_delivery_successful')!,
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        request: WebhookRequest.fromJson(json[r'request'])!,
        response: WebhookResponse.fromJson(json[r'response'])!,
      );
    }
    return null;
  }

  static List<WebhookAttempt> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebhookAttempt>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookAttempt.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookAttempt> mapFromJson(dynamic json) {
    final map = <String, WebhookAttempt>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookAttempt.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookAttempt-objects as value to a dart map
  static Map<String, List<WebhookAttempt>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WebhookAttempt>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookAttempt.listFromJson(
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
    'delivery_attempt',
    'id',
    'is_delivery_successful',
    'livemode',
    'request',
    'response',
  };
}
