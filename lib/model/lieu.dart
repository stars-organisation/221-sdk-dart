//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Lieu {
  /// Returns a new [Lieu] instance.
  Lieu({
    required this.id,
    this.lat,
    required this.level,
    this.lon,
    this.name,
    required this.nameSource,
    this.parentId,
    this.population2023,
    required this.searchKey,
  });

  String id;

  double? lat;

  String level;

  double? lon;

  String? name;

  String nameSource;

  String? parentId;

  int? population2023;

  String searchKey;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Lieu &&
          other.id == id &&
          other.lat == lat &&
          other.level == level &&
          other.lon == lon &&
          other.name == name &&
          other.nameSource == nameSource &&
          other.parentId == parentId &&
          other.population2023 == population2023 &&
          other.searchKey == searchKey;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (lat == null ? 0 : lat!.hashCode) +
      (level.hashCode) +
      (lon == null ? 0 : lon!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (nameSource.hashCode) +
      (parentId == null ? 0 : parentId!.hashCode) +
      (population2023 == null ? 0 : population2023!.hashCode) +
      (searchKey.hashCode);

  @override
  String toString() =>
      'Lieu[id=$id, lat=$lat, level=$level, lon=$lon, name=$name, nameSource=$nameSource, parentId=$parentId, population2023=$population2023, searchKey=$searchKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    if (this.lat != null) {
      json[r'lat'] = this.lat;
    } else {
      json[r'lat'] = null;
    }
    json[r'level'] = this.level;
    if (this.lon != null) {
      json[r'lon'] = this.lon;
    } else {
      json[r'lon'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    json[r'name_source'] = this.nameSource;
    if (this.parentId != null) {
      json[r'parent_id'] = this.parentId;
    } else {
      json[r'parent_id'] = null;
    }
    if (this.population2023 != null) {
      json[r'population_2023'] = this.population2023;
    } else {
      json[r'population_2023'] = null;
    }
    json[r'search_key'] = this.searchKey;
    return json;
  }

  /// Returns a new [Lieu] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Lieu? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'),
            'Required key "Lieu[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "Lieu[id]" has a null value in JSON.');
        assert(json.containsKey(r'level'),
            'Required key "Lieu[level]" is missing from JSON.');
        assert(json[r'level'] != null,
            'Required key "Lieu[level]" has a null value in JSON.');
        assert(json.containsKey(r'name_source'),
            'Required key "Lieu[name_source]" is missing from JSON.');
        assert(json[r'name_source'] != null,
            'Required key "Lieu[name_source]" has a null value in JSON.');
        assert(json.containsKey(r'search_key'),
            'Required key "Lieu[search_key]" is missing from JSON.');
        assert(json[r'search_key'] != null,
            'Required key "Lieu[search_key]" has a null value in JSON.');
        return true;
      }());

      return Lieu(
        id: mapValueOfType<String>(json, r'id')!,
        lat: mapValueOfType<double>(json, r'lat'),
        level: mapValueOfType<String>(json, r'level')!,
        lon: mapValueOfType<double>(json, r'lon'),
        name: mapValueOfType<String>(json, r'name'),
        nameSource: mapValueOfType<String>(json, r'name_source')!,
        parentId: mapValueOfType<String>(json, r'parent_id'),
        population2023: mapValueOfType<int>(json, r'population_2023'),
        searchKey: mapValueOfType<String>(json, r'search_key')!,
      );
    }
    return null;
  }

  static List<Lieu> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Lieu>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Lieu.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Lieu> mapFromJson(dynamic json) {
    final map = <String, Lieu>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Lieu.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Lieu-objects as value to a dart map
  static Map<String, List<Lieu>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Lieu>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Lieu.listFromJson(
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
    'level',
    'name_source',
    'search_key',
  };
}
