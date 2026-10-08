//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Suggestions {
  /// Returns a new [Suggestions] instance.
  Suggestions({
    this.data = const [],
    this.sources = const [],
  });

  List<LieuResume>? data;

  List<ModelSource>? sources;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Suggestions &&
          _deepEquality.equals(other.data, data) &&
          _deepEquality.equals(other.sources, sources);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (data == null ? 0 : data!.hashCode) +
      (sources == null ? 0 : sources!.hashCode);

  @override
  String toString() => 'Suggestions[data=$data, sources=$sources]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.sources != null) {
      json[r'sources'] = this.sources;
    } else {
      json[r'sources'] = null;
    }
    return json;
  }

  /// Returns a new [Suggestions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Suggestions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return Suggestions(
        data: LieuResume.listFromJson(json[r'data']),
        sources: ModelSource.listFromJson(json[r'sources']),
      );
    }
    return null;
  }

  static List<Suggestions> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Suggestions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Suggestions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Suggestions> mapFromJson(dynamic json) {
    final map = <String, Suggestions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Suggestions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Suggestions-objects as value to a dart map
  static Map<String, List<Suggestions>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Suggestions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Suggestions.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
