//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Meta {
  /// Returns a new [Meta] instance.
  Meta({
    required this.attribution,
    required this.licence,
    required this.source_,
    this.verifiedOn,
    this.version,
  });

  String attribution;

  String licence;

  String source_;

  String? verifiedOn;

  String? version;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Meta &&
          other.attribution == attribution &&
          other.licence == licence &&
          other.source_ == source_ &&
          other.verifiedOn == verifiedOn &&
          other.version == version;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (attribution.hashCode) +
      (licence.hashCode) +
      (source_.hashCode) +
      (verifiedOn == null ? 0 : verifiedOn!.hashCode) +
      (version == null ? 0 : version!.hashCode);

  @override
  String toString() =>
      'Meta[attribution=$attribution, licence=$licence, source_=$source_, verifiedOn=$verifiedOn, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'attribution'] = this.attribution;
    json[r'licence'] = this.licence;
    json[r'source'] = this.source_;
    if (this.verifiedOn != null) {
      json[r'verified_on'] = this.verifiedOn;
    } else {
      json[r'verified_on'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [Meta] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Meta? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'attribution'),
            'Required key "Meta[attribution]" is missing from JSON.');
        assert(json[r'attribution'] != null,
            'Required key "Meta[attribution]" has a null value in JSON.');
        assert(json.containsKey(r'licence'),
            'Required key "Meta[licence]" is missing from JSON.');
        assert(json[r'licence'] != null,
            'Required key "Meta[licence]" has a null value in JSON.');
        assert(json.containsKey(r'source'),
            'Required key "Meta[source]" is missing from JSON.');
        assert(json[r'source'] != null,
            'Required key "Meta[source]" has a null value in JSON.');
        return true;
      }());

      return Meta(
        attribution: mapValueOfType<String>(json, r'attribution')!,
        licence: mapValueOfType<String>(json, r'licence')!,
        source_: mapValueOfType<String>(json, r'source')!,
        verifiedOn: mapValueOfType<String>(json, r'verified_on'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<Meta> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Meta>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Meta.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Meta> mapFromJson(dynamic json) {
    final map = <String, Meta>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Meta.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Meta-objects as value to a dart map
  static Map<String, List<Meta>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Meta>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Meta.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'attribution',
    'licence',
    'source',
  };
}
