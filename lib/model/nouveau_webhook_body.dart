//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NouveauWebhookBody {
  /// Returns a new [NouveauWebhookBody] instance.
  NouveauWebhookBody({
    this.events = const {},
    required this.url,
  });

  /// Types d’événements reçus (GET /v1/webhook-event-types) ; par défaut dataset.updated.
  Set<String>? events;

  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NouveauWebhookBody &&
    _deepEquality.equals(other.events, events) &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (events == null ? 0 : events!.hashCode) +
    (url.hashCode);

  @override
  String toString() => 'NouveauWebhookBody[events=$events, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.events != null) {
      json[r'events'] = this.events!.toList(growable: false);
    } else {
      json[r'events'] = null;
    }
      json[r'url'] = this.url;
    return json;
  }

  /// Returns a new [NouveauWebhookBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NouveauWebhookBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'url'), 'Required key "NouveauWebhookBody[url]" is missing from JSON.');
        assert(json[r'url'] != null, 'Required key "NouveauWebhookBody[url]" has a null value in JSON.');
        return true;
      }());

      return NouveauWebhookBody(
        events: json[r'events'] is Iterable
            ? (json[r'events'] as Iterable).cast<String>().toSet()
            : const {},
        url: mapValueOfType<String>(json, r'url')!,
      );
    }
    return null;
  }

  static List<NouveauWebhookBody> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NouveauWebhookBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NouveauWebhookBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NouveauWebhookBody> mapFromJson(dynamic json) {
    final map = <String, NouveauWebhookBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NouveauWebhookBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NouveauWebhookBody-objects as value to a dart map
  static Map<String, List<NouveauWebhookBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NouveauWebhookBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NouveauWebhookBody.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'url',
  };
}

