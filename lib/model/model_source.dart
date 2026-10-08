//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelSource {
  /// Returns a new [ModelSource] instance.
  ModelSource({
    required this.licence,
    required this.official,
    required this.title,
    required this.url,
  });

  String licence;

  bool official;

  String title;

  String url;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModelSource &&
          other.licence == licence &&
          other.official == official &&
          other.title == title &&
          other.url == url;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (licence.hashCode) +
      (official.hashCode) +
      (title.hashCode) +
      (url.hashCode);

  @override
  String toString() =>
      'ModelSource[licence=$licence, official=$official, title=$title, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'licence'] = this.licence;
    json[r'official'] = this.official;
    json[r'title'] = this.title;
    json[r'url'] = this.url;
    return json;
  }

  /// Returns a new [ModelSource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelSource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'licence'),
            'Required key "ModelSource[licence]" is missing from JSON.');
        assert(json[r'licence'] != null,
            'Required key "ModelSource[licence]" has a null value in JSON.');
        assert(json.containsKey(r'official'),
            'Required key "ModelSource[official]" is missing from JSON.');
        assert(json[r'official'] != null,
            'Required key "ModelSource[official]" has a null value in JSON.');
        assert(json.containsKey(r'title'),
            'Required key "ModelSource[title]" is missing from JSON.');
        assert(json[r'title'] != null,
            'Required key "ModelSource[title]" has a null value in JSON.');
        assert(json.containsKey(r'url'),
            'Required key "ModelSource[url]" is missing from JSON.');
        assert(json[r'url'] != null,
            'Required key "ModelSource[url]" has a null value in JSON.');
        return true;
      }());

      return ModelSource(
        licence: mapValueOfType<String>(json, r'licence')!,
        official: mapValueOfType<bool>(json, r'official')!,
        title: mapValueOfType<String>(json, r'title')!,
        url: mapValueOfType<String>(json, r'url')!,
      );
    }
    return null;
  }

  static List<ModelSource> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ModelSource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelSource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelSource> mapFromJson(dynamic json) {
    final map = <String, ModelSource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelSource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelSource-objects as value to a dart map
  static Map<String, List<ModelSource>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ModelSource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelSource.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'licence',
    'official',
    'title',
    'url',
  };
}
