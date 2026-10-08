//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Banque {
  /// Returns a new [Banque] instance.
  Banque({
    required this.bankCode,
    required this.id,
    required this.name,
    this.sources = const [],
    this.website,
  });

  /// Code d'agrément BCEAO.
  String bankCode;

  String id;

  String name;

  List<SourceVerifiee> sources;

  /// null quand le site n'est pas vérifié.
  String? website;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Banque &&
          other.bankCode == bankCode &&
          other.id == id &&
          other.name == name &&
          _deepEquality.equals(other.sources, sources) &&
          other.website == website;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (bankCode.hashCode) +
      (id.hashCode) +
      (name.hashCode) +
      (sources.hashCode) +
      (website == null ? 0 : website!.hashCode);

  @override
  String toString() =>
      'Banque[bankCode=$bankCode, id=$id, name=$name, sources=$sources, website=$website]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'bank_code'] = this.bankCode;
    json[r'id'] = this.id;
    json[r'name'] = this.name;
    json[r'sources'] = this.sources;
    if (this.website != null) {
      json[r'website'] = this.website;
    } else {
      json[r'website'] = null;
    }
    return json;
  }

  /// Returns a new [Banque] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Banque? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'bank_code'),
            'Required key "Banque[bank_code]" is missing from JSON.');
        assert(json[r'bank_code'] != null,
            'Required key "Banque[bank_code]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "Banque[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "Banque[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'),
            'Required key "Banque[name]" is missing from JSON.');
        assert(json[r'name'] != null,
            'Required key "Banque[name]" has a null value in JSON.');
        assert(json.containsKey(r'sources'),
            'Required key "Banque[sources]" is missing from JSON.');
        assert(json[r'sources'] != null,
            'Required key "Banque[sources]" has a null value in JSON.');
        return true;
      }());

      return Banque(
        bankCode: mapValueOfType<String>(json, r'bank_code')!,
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        sources: SourceVerifiee.listFromJson(json[r'sources']),
        website: mapValueOfType<String>(json, r'website'),
      );
    }
    return null;
  }

  static List<Banque> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Banque>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Banque.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Banque> mapFromJson(dynamic json) {
    final map = <String, Banque>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Banque.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Banque-objects as value to a dart map
  static Map<String, List<Banque>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Banque>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Banque.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'bank_code',
    'id',
    'name',
    'sources',
  };
}
