//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Extremite {
  /// Returns a new [Extremite] instance.
  Extremite({
    required this.entree,
    required this.lat,
    required this.lieu,
    required this.lon,
    required this.precision,
  });

  String entree;

  double lat;

  LieuResume? lieu;

  double lon;

  String precision;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Extremite &&
          other.entree == entree &&
          other.lat == lat &&
          other.lieu == lieu &&
          other.lon == lon &&
          other.precision == precision;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (entree.hashCode) +
      (lat.hashCode) +
      (lieu == null ? 0 : lieu!.hashCode) +
      (lon.hashCode) +
      (precision.hashCode);

  @override
  String toString() =>
      'Extremite[entree=$entree, lat=$lat, lieu=$lieu, lon=$lon, precision=$precision]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'entree'] = this.entree;
    json[r'lat'] = this.lat;
    if (this.lieu != null) {
      json[r'lieu'] = this.lieu;
    } else {
      json[r'lieu'] = null;
    }
    json[r'lon'] = this.lon;
    json[r'precision'] = this.precision;
    return json;
  }

  /// Returns a new [Extremite] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Extremite? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'entree'),
            'Required key "Extremite[entree]" is missing from JSON.');
        assert(json[r'entree'] != null,
            'Required key "Extremite[entree]" has a null value in JSON.');
        assert(json.containsKey(r'lat'),
            'Required key "Extremite[lat]" is missing from JSON.');
        assert(json[r'lat'] != null,
            'Required key "Extremite[lat]" has a null value in JSON.');
        assert(json.containsKey(r'lieu'),
            'Required key "Extremite[lieu]" is missing from JSON.');
        assert(json.containsKey(r'lon'),
            'Required key "Extremite[lon]" is missing from JSON.');
        assert(json[r'lon'] != null,
            'Required key "Extremite[lon]" has a null value in JSON.');
        assert(json.containsKey(r'precision'),
            'Required key "Extremite[precision]" is missing from JSON.');
        assert(json[r'precision'] != null,
            'Required key "Extremite[precision]" has a null value in JSON.');
        return true;
      }());

      return Extremite(
        entree: mapValueOfType<String>(json, r'entree')!,
        lat: mapValueOfType<double>(json, r'lat')!,
        lieu: LieuResume.fromJson(json[r'lieu']),
        lon: mapValueOfType<double>(json, r'lon')!,
        precision: mapValueOfType<String>(json, r'precision')!,
      );
    }
    return null;
  }

  static List<Extremite> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Extremite>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Extremite.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Extremite> mapFromJson(dynamic json) {
    final map = <String, Extremite>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Extremite.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Extremite-objects as value to a dart map
  static Map<String, List<Extremite>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Extremite>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Extremite.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'entree',
    'lat',
    'lieu',
    'lon',
    'precision',
  };
}
