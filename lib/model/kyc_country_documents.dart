//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class KycCountryDocuments {
  /// Returns a new [KycCountryDocuments] instance.
  KycCountryDocuments({
    required this.country,
    this.documents = const [],
  });

  String country;

  List<Item> documents;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KycCountryDocuments &&
          other.country == country &&
          _deepEquality.equals(other.documents, documents);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (country.hashCode) + (documents.hashCode);

  @override
  String toString() =>
      'KycCountryDocuments[country=$country, documents=$documents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'country'] = this.country;
    json[r'documents'] = this.documents;
    return json;
  }

  /// Returns a new [KycCountryDocuments] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KycCountryDocuments? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'country'),
            'Required key "KycCountryDocuments[country]" is missing from JSON.');
        assert(json[r'country'] != null,
            'Required key "KycCountryDocuments[country]" has a null value in JSON.');
        assert(json.containsKey(r'documents'),
            'Required key "KycCountryDocuments[documents]" is missing from JSON.');
        assert(json[r'documents'] != null,
            'Required key "KycCountryDocuments[documents]" has a null value in JSON.');
        return true;
      }());

      return KycCountryDocuments(
        country: mapValueOfType<String>(json, r'country')!,
        documents: Item.listFromJson(json[r'documents']),
      );
    }
    return null;
  }

  static List<KycCountryDocuments> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <KycCountryDocuments>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KycCountryDocuments.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KycCountryDocuments> mapFromJson(dynamic json) {
    final map = <String, KycCountryDocuments>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KycCountryDocuments.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KycCountryDocuments-objects as value to a dart map
  static Map<String, List<KycCountryDocuments>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<KycCountryDocuments>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KycCountryDocuments.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'country',
    'documents',
  };
}
