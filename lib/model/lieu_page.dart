//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LieuPage {
  /// Returns a new [LieuPage] instance.
  LieuPage({
    this.data = const [],
    required this.meta,
    required this.pagination,
  });

  List<Lieu>? data;

  Meta meta;

  Pagination pagination;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LieuPage &&
          _deepEquality.equals(other.data, data) &&
          other.meta == meta &&
          other.pagination == pagination;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (data == null ? 0 : data!.hashCode) +
      (meta.hashCode) +
      (pagination.hashCode);

  @override
  String toString() =>
      'LieuPage[data=$data, meta=$meta, pagination=$pagination]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    json[r'meta'] = this.meta;
    json[r'pagination'] = this.pagination;
    return json;
  }

  /// Returns a new [LieuPage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LieuPage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'meta'),
            'Required key "LieuPage[meta]" is missing from JSON.');
        assert(json[r'meta'] != null,
            'Required key "LieuPage[meta]" has a null value in JSON.');
        assert(json.containsKey(r'pagination'),
            'Required key "LieuPage[pagination]" is missing from JSON.');
        assert(json[r'pagination'] != null,
            'Required key "LieuPage[pagination]" has a null value in JSON.');
        return true;
      }());

      return LieuPage(
        data: Lieu.listFromJson(json[r'data']),
        meta: Meta.fromJson(json[r'meta'])!,
        pagination: Pagination.fromJson(json[r'pagination'])!,
      );
    }
    return null;
  }

  static List<LieuPage> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <LieuPage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LieuPage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LieuPage> mapFromJson(dynamic json) {
    final map = <String, LieuPage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LieuPage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LieuPage-objects as value to a dart map
  static Map<String, List<LieuPage>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<LieuPage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LieuPage.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'meta',
    'pagination',
  };
}
