//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookEventList {
  /// Returns a new [WebhookEventList] instance.
  WebhookEventList({
    this.events = const [],
    required this.livemode,
    required this.totalCount,
  });

  List<WebhookEvent> events;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  int totalCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WebhookEventList &&
          _deepEquality.equals(other.events, events) &&
          other.livemode == livemode &&
          other.totalCount == totalCount;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (events.hashCode) + (livemode.hashCode) + (totalCount.hashCode);

  @override
  String toString() =>
      'WebhookEventList[events=$events, livemode=$livemode, totalCount=$totalCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'events'] = this.events;
    json[r'livemode'] = this.livemode;
    json[r'total_count'] = this.totalCount;
    return json;
  }

  /// Returns a new [WebhookEventList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookEventList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'events'),
            'Required key "WebhookEventList[events]" is missing from JSON.');
        assert(json[r'events'] != null,
            'Required key "WebhookEventList[events]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "WebhookEventList[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "WebhookEventList[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'total_count'),
            'Required key "WebhookEventList[total_count]" is missing from JSON.');
        assert(json[r'total_count'] != null,
            'Required key "WebhookEventList[total_count]" has a null value in JSON.');
        return true;
      }());

      return WebhookEventList(
        events: WebhookEvent.listFromJson(json[r'events']),
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        totalCount: mapValueOfType<int>(json, r'total_count')!,
      );
    }
    return null;
  }

  static List<WebhookEventList> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebhookEventList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookEventList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookEventList> mapFromJson(dynamic json) {
    final map = <String, WebhookEventList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookEventList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookEventList-objects as value to a dart map
  static Map<String, List<WebhookEventList>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WebhookEventList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookEventList.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'events',
    'livemode',
    'total_count',
  };
}
