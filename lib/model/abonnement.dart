//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Abonnement {
  /// Returns a new [Abonnement] instance.
  Abonnement({
    this.createdAt,
    this.events = const [],
    required this.id,
    required this.localOnly,
    this.modes = const [],
    required this.url,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  List<String>? events;

  String id;

  /// Adresse locale ou privée : livrée en développement seulement, jamais en production.
  bool localOnly;

  /// Modes dont le point de terminaison reçoit les événements de paiement : test, live.
  List<String>? modes;

  String url;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Abonnement &&
          other.createdAt == createdAt &&
          _deepEquality.equals(other.events, events) &&
          other.id == id &&
          other.localOnly == localOnly &&
          _deepEquality.equals(other.modes, modes) &&
          other.url == url;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (events == null ? 0 : events!.hashCode) +
      (id.hashCode) +
      (localOnly.hashCode) +
      (modes == null ? 0 : modes!.hashCode) +
      (url.hashCode);

  @override
  String toString() =>
      'Abonnement[createdAt=$createdAt, events=$events, id=$id, localOnly=$localOnly, modes=$modes, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.events != null) {
      json[r'events'] = this.events;
    } else {
      json[r'events'] = null;
    }
    json[r'id'] = this.id;
    json[r'local_only'] = this.localOnly;
    if (this.modes != null) {
      json[r'modes'] = this.modes;
    } else {
      json[r'modes'] = null;
    }
    json[r'url'] = this.url;
    return json;
  }

  /// Returns a new [Abonnement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Abonnement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'),
            'Required key "Abonnement[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "Abonnement[id]" has a null value in JSON.');
        assert(json.containsKey(r'local_only'),
            'Required key "Abonnement[local_only]" is missing from JSON.');
        assert(json[r'local_only'] != null,
            'Required key "Abonnement[local_only]" has a null value in JSON.');
        assert(json.containsKey(r'url'),
            'Required key "Abonnement[url]" is missing from JSON.');
        assert(json[r'url'] != null,
            'Required key "Abonnement[url]" has a null value in JSON.');
        return true;
      }());

      return Abonnement(
        createdAt: mapDateTime(json, r'created_at', r''),
        events: json[r'events'] is Iterable
            ? (json[r'events'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        id: mapValueOfType<String>(json, r'id')!,
        localOnly: mapValueOfType<bool>(json, r'local_only')!,
        modes: json[r'modes'] is Iterable
            ? (json[r'modes'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        url: mapValueOfType<String>(json, r'url')!,
      );
    }
    return null;
  }

  static List<Abonnement> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Abonnement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Abonnement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Abonnement> mapFromJson(dynamic json) {
    final map = <String, Abonnement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Abonnement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Abonnement-objects as value to a dart map
  static Map<String, List<Abonnement>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Abonnement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Abonnement.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'local_only',
    'url',
  };
}
