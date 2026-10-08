//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DatasetPageBanque {
  /// Returns a new [DatasetPageBanque] instance.
  DatasetPageBanque({
    this.data = const [],
    required this.pagination,
  });

  List<Banque> data;

  Pagination pagination;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DatasetPageBanque &&
          _deepEquality.equals(other.data, data) &&
          other.pagination == pagination;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (data.hashCode) + (pagination.hashCode);

  @override
  String toString() => 'DatasetPageBanque[data=$data, pagination=$pagination]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'data'] = this.data;
    json[r'pagination'] = this.pagination;
    return json;
  }

  /// Returns a new [DatasetPageBanque] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DatasetPageBanque? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'data'),
            'Required key "DatasetPageBanque[data]" is missing from JSON.');
        assert(json[r'data'] != null,
            'Required key "DatasetPageBanque[data]" has a null value in JSON.');
        assert(json.containsKey(r'pagination'),
            'Required key "DatasetPageBanque[pagination]" is missing from JSON.');
        assert(json[r'pagination'] != null,
            'Required key "DatasetPageBanque[pagination]" has a null value in JSON.');
        return true;
      }());

      return DatasetPageBanque(
        data: Banque.listFromJson(json[r'data']),
        pagination: Pagination.fromJson(json[r'pagination'])!,
      );
    }
    return null;
  }

  static List<DatasetPageBanque> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DatasetPageBanque>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DatasetPageBanque.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DatasetPageBanque> mapFromJson(dynamic json) {
    final map = <String, DatasetPageBanque>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DatasetPageBanque.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DatasetPageBanque-objects as value to a dart map
  static Map<String, List<DatasetPageBanque>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DatasetPageBanque>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DatasetPageBanque.listFromJson(
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
