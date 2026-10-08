//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookResponse {
  /// Returns a new [WebhookResponse] instance.
  WebhookResponse({
    required this.body,
    this.errorMessage,
    required this.headers,
    this.statusCode,
  });

  /// Corps répondu par votre endpoint.
  Object? body;

  String? errorMessage;

  /// Toujours vide pour l'instant.
  Object? headers;

  /// null si l'endpoint n'a pas répondu.
  int? statusCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WebhookResponse &&
          other.body == body &&
          other.errorMessage == errorMessage &&
          other.headers == headers &&
          other.statusCode == statusCode;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (body == null ? 0 : body!.hashCode) +
      (errorMessage == null ? 0 : errorMessage!.hashCode) +
      (headers == null ? 0 : headers!.hashCode) +
      (statusCode == null ? 0 : statusCode!.hashCode);

  @override
  String toString() =>
      'WebhookResponse[body=$body, errorMessage=$errorMessage, headers=$headers, statusCode=$statusCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    if (this.errorMessage != null) {
      json[r'error_message'] = this.errorMessage;
    } else {
      json[r'error_message'] = null;
    }
    if (this.headers != null) {
      json[r'headers'] = this.headers;
    } else {
      json[r'headers'] = null;
    }
    if (this.statusCode != null) {
      json[r'status_code'] = this.statusCode;
    } else {
      json[r'status_code'] = null;
    }
    return json;
  }

  /// Returns a new [WebhookResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'body'),
            'Required key "WebhookResponse[body]" is missing from JSON.');
        assert(json.containsKey(r'headers'),
            'Required key "WebhookResponse[headers]" is missing from JSON.');
        return true;
      }());

      return WebhookResponse(
        body: mapValueOfType<Object>(json, r'body'),
        errorMessage: mapValueOfType<String>(json, r'error_message'),
        headers: mapValueOfType<Object>(json, r'headers'),
        statusCode: mapValueOfType<int>(json, r'status_code'),
      );
    }
    return null;
  }

  static List<WebhookResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebhookResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookResponse> mapFromJson(dynamic json) {
    final map = <String, WebhookResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookResponse-objects as value to a dart map
  static Map<String, List<WebhookResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WebhookResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookResponse.listFromJson(
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
