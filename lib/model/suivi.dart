//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Suivi {
  /// Returns a new [Suivi] instance.
  Suivi({
    required this.active,
    this.createdAt,
    required this.dataset,
  });

  bool active;

  DateTime? createdAt;

  String dataset;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Suivi &&
          other.active == active &&
          other.createdAt == createdAt &&
          other.dataset == dataset;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (active.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (dataset.hashCode);

  @override
  String toString() =>
      'Suivi[active=$active, createdAt=$createdAt, dataset=$dataset]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'active'] = this.active;
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    json[r'dataset'] = this.dataset;
    return json;
  }

  /// Returns a new [Suivi] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Suivi? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'active'),
            'Required key "Suivi[active]" is missing from JSON.');
        assert(json[r'active'] != null,
            'Required key "Suivi[active]" has a null value in JSON.');
        assert(json.containsKey(r'dataset'),
            'Required key "Suivi[dataset]" is missing from JSON.');
        assert(json[r'dataset'] != null,
            'Required key "Suivi[dataset]" has a null value in JSON.');
        return true;
      }());

      return Suivi(
        active: mapValueOfType<bool>(json, r'active')!,
        createdAt: mapDateTime(json, r'created_at', r''),
        dataset: mapValueOfType<String>(json, r'dataset')!,
      );
    }
    return null;
  }

  static List<Suivi> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Suivi>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Suivi.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Suivi> mapFromJson(dynamic json) {
    final map = <String, Suivi>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Suivi.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Suivi-objects as value to a dart map
  static Map<String, List<Suivi>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Suivi>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Suivi.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'active',
    'dataset',
  };
}
