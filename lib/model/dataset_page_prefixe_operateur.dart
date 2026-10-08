//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DatasetPagePrefixeOperateur {
  /// Returns a new [DatasetPagePrefixeOperateur] instance.
  DatasetPagePrefixeOperateur({
    this.data = const [],
    required this.pagination,
  });

  List<PrefixeOperateur> data;

  Pagination pagination;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DatasetPagePrefixeOperateur &&
          _deepEquality.equals(other.data, data) &&
          other.pagination == pagination;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (data.hashCode) + (pagination.hashCode);

  @override
  String toString() =>
      'DatasetPagePrefixeOperateur[data=$data, pagination=$pagination]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'data'] = this.data;
    json[r'pagination'] = this.pagination;
    return json;
  }

  /// Returns a new [DatasetPagePrefixeOperateur] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DatasetPagePrefixeOperateur? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'data'),
            'Required key "DatasetPagePrefixeOperateur[data]" is missing from JSON.');
        assert(json[r'data'] != null,
            'Required key "DatasetPagePrefixeOperateur[data]" has a null value in JSON.');
        assert(json.containsKey(r'pagination'),
            'Required key "DatasetPagePrefixeOperateur[pagination]" is missing from JSON.');
        assert(json[r'pagination'] != null,
            'Required key "DatasetPagePrefixeOperateur[pagination]" has a null value in JSON.');
        return true;
      }());

      return DatasetPagePrefixeOperateur(
        data: PrefixeOperateur.listFromJson(json[r'data']),
        pagination: Pagination.fromJson(json[r'pagination'])!,
      );
    }
    return null;
  }

  static List<DatasetPagePrefixeOperateur> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DatasetPagePrefixeOperateur>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DatasetPagePrefixeOperateur.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DatasetPagePrefixeOperateur> mapFromJson(dynamic json) {
    final map = <String, DatasetPagePrefixeOperateur>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DatasetPagePrefixeOperateur.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DatasetPagePrefixeOperateur-objects as value to a dart map
  static Map<String, List<DatasetPagePrefixeOperateur>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DatasetPagePrefixeOperateur>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DatasetPagePrefixeOperateur.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
    'pagination',
  };
}
