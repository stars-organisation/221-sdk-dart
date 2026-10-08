//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Pagination {
  /// Returns a new [Pagination] instance.
  Pagination({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
  });

  int page;

  int perPage;

  int total;

  int totalPages;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Pagination &&
          other.page == page &&
          other.perPage == perPage &&
          other.total == total &&
          other.totalPages == totalPages;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (page.hashCode) +
      (perPage.hashCode) +
      (total.hashCode) +
      (totalPages.hashCode);

  @override
  String toString() =>
      'Pagination[page=$page, perPage=$perPage, total=$total, totalPages=$totalPages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'page'] = this.page;
    json[r'per_page'] = this.perPage;
    json[r'total'] = this.total;
    json[r'total_pages'] = this.totalPages;
    return json;
  }

  /// Returns a new [Pagination] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Pagination? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'page'),
            'Required key "Pagination[page]" is missing from JSON.');
        assert(json[r'page'] != null,
            'Required key "Pagination[page]" has a null value in JSON.');
        assert(json.containsKey(r'per_page'),
            'Required key "Pagination[per_page]" is missing from JSON.');
        assert(json[r'per_page'] != null,
            'Required key "Pagination[per_page]" has a null value in JSON.');
        assert(json.containsKey(r'total'),
            'Required key "Pagination[total]" is missing from JSON.');
        assert(json[r'total'] != null,
            'Required key "Pagination[total]" has a null value in JSON.');
        assert(json.containsKey(r'total_pages'),
            'Required key "Pagination[total_pages]" is missing from JSON.');
        assert(json[r'total_pages'] != null,
            'Required key "Pagination[total_pages]" has a null value in JSON.');
        return true;
      }());

      return Pagination(
        page: mapValueOfType<int>(json, r'page')!,
        perPage: mapValueOfType<int>(json, r'per_page')!,
        total: mapValueOfType<int>(json, r'total')!,
        totalPages: mapValueOfType<int>(json, r'total_pages')!,
      );
    }
    return null;
  }

  static List<Pagination> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Pagination>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Pagination.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Pagination> mapFromJson(dynamic json) {
    final map = <String, Pagination>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Pagination.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Pagination-objects as value to a dart map
  static Map<String, List<Pagination>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Pagination>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Pagination.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'page',
    'per_page',
    'total',
    'total_pages',
  };
}
