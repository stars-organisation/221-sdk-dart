//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Projet {
  /// Returns a new [Projet] instance.
  Projet({
    required this.createdAt,
    required this.id,
    required this.name,
    required this.slug,
  });

  DateTime createdAt;

  String id;

  String name;

  String slug;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Projet &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.name == name &&
    other.slug == slug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt.hashCode) +
    (id.hashCode) +
    (name.hashCode) +
    (slug.hashCode);

  @override
  String toString() => 'Projet[createdAt=$createdAt, id=$id, name=$name, slug=$slug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'slug'] = this.slug;
    return json;
  }

  /// Returns a new [Projet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Projet? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'created_at'), 'Required key "Projet[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "Projet[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'id'), 'Required key "Projet[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Projet[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "Projet[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "Projet[name]" has a null value in JSON.');
        assert(json.containsKey(r'slug'), 'Required key "Projet[slug]" is missing from JSON.');
        assert(json[r'slug'] != null, 'Required key "Projet[slug]" has a null value in JSON.');
        return true;
      }());

      return Projet(
        createdAt: mapDateTime(json, r'created_at', r'')!,
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        slug: mapValueOfType<String>(json, r'slug')!,
      );
    }
    return null;
  }

  static List<Projet> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Projet>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Projet.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Projet> mapFromJson(dynamic json) {
    final map = <String, Projet>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Projet.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Projet-objects as value to a dart map
  static Map<String, List<Projet>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Projet>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Projet.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'created_at',
    'id',
    'name',
    'slug',
  };
}

