//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookEventsBody {
  /// Returns a new [WebhookEventsBody] instance.
  WebhookEventsBody({
    this.events = const {},
  });

  /// Types d’événements reçus (GET /v1/webhook-event-types).
  Set<String>? events;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookEventsBody &&
    _deepEquality.equals(other.events, events);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (events == null ? 0 : events!.hashCode);

  @override
  String toString() => 'WebhookEventsBody[events=$events]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.events != null) {
      json[r'events'] = this.events!.toList(growable: false);
    } else {
      json[r'events'] = null;
    }
    return json;
  }

  /// Returns a new [WebhookEventsBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookEventsBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return WebhookEventsBody(
        events: json[r'events'] is Iterable
            ? (json[r'events'] as Iterable).cast<String>().toSet()
            : const {},
      );
    }
    return null;
  }

  static List<WebhookEventsBody> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookEventsBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookEventsBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookEventsBody> mapFromJson(dynamic json) {
    final map = <String, WebhookEventsBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookEventsBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookEventsBody-objects as value to a dart map
  static Map<String, List<WebhookEventsBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookEventsBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookEventsBody.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

