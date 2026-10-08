//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookRequest {
  /// Returns a new [WebhookRequest] instance.
  WebhookRequest({
    required this.body,
    required this.headers,
  });

  /// Corps envoyé à votre endpoint.
  Object? body;

  /// En-têtes envoyés, signature comprise.
  Object? headers;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WebhookRequest && other.body == body && other.headers == headers;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (body == null ? 0 : body!.hashCode) +
      (headers == null ? 0 : headers!.hashCode);

  @override
  String toString() => 'WebhookRequest[body=$body, headers=$headers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    if (this.headers != null) {
      json[r'headers'] = this.headers;
    } else {
      json[r'headers'] = null;
    }
    return json;
  }

  /// Returns a new [WebhookRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'body'),
            'Required key "WebhookRequest[body]" is missing from JSON.');
        assert(json.containsKey(r'headers'),
            'Required key "WebhookRequest[headers]" is missing from JSON.');
        return true;
      }());

      return WebhookRequest(
        body: mapValueOfType<Object>(json, r'body'),
        headers: mapValueOfType<Object>(json, r'headers'),
      );
    }
    return null;
  }

  static List<WebhookRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebhookRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookRequest> mapFromJson(dynamic json) {
    final map = <String, WebhookRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookRequest-objects as value to a dart map
  static Map<String, List<WebhookRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WebhookRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookRequest.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'body',
    'headers',
  };
}
