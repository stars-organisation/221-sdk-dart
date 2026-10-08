//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PageCustomer {
  /// Returns a new [PageCustomer] instance.
  PageCustomer({
    this.data = const [],
    required this.livemode,
    required this.totalCount,
  });

  List<Customer> data;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  /// Nombre d'éléments pour ces filtres, toutes pages confondues.
  int totalCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PageCustomer &&
          _deepEquality.equals(other.data, data) &&
          other.livemode == livemode &&
          other.totalCount == totalCount;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (data.hashCode) + (livemode.hashCode) + (totalCount.hashCode);

  @override
  String toString() =>
      'PageCustomer[data=$data, livemode=$livemode, totalCount=$totalCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'data'] = this.data;
    json[r'livemode'] = this.livemode;
    json[r'total_count'] = this.totalCount;
    return json;
  }

  /// Returns a new [PageCustomer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PageCustomer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'data'),
            'Required key "PageCustomer[data]" is missing from JSON.');
        assert(json[r'data'] != null,
            'Required key "PageCustomer[data]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "PageCustomer[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "PageCustomer[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'total_count'),
            'Required key "PageCustomer[total_count]" is missing from JSON.');
        assert(json[r'total_count'] != null,
            'Required key "PageCustomer[total_count]" has a null value in JSON.');
        return true;
      }());

      return PageCustomer(
        data: Customer.listFromJson(json[r'data']),
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        totalCount: mapValueOfType<int>(json, r'total_count')!,
      );
    }
    return null;
  }

  static List<PageCustomer> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PageCustomer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PageCustomer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PageCustomer> mapFromJson(dynamic json) {
    final map = <String, PageCustomer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PageCustomer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PageCustomer-objects as value to a dart map
  static Map<String, List<PageCustomer>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PageCustomer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PageCustomer.listFromJson(
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
    'livemode',
    'total_count',
  };
}
