//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OperateurTelephone {
  /// Returns a new [OperateurTelephone] instance.
  OperateurTelephone({
    required this.name,
    required this.prefix,
    this.sources = const [],
    required this.type,
  });

  String name;

  String prefix;

  List<Object>? sources;

  String type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OperateurTelephone &&
          other.name == name &&
          other.prefix == prefix &&
          _deepEquality.equals(other.sources, sources) &&
          other.type == type;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name.hashCode) +
      (prefix.hashCode) +
      (sources == null ? 0 : sources!.hashCode) +
      (type.hashCode);

  @override
  String toString() =>
      'OperateurTelephone[name=$name, prefix=$prefix, sources=$sources, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'name'] = this.name;
    json[r'prefix'] = this.prefix;
    if (this.sources != null) {
      json[r'sources'] = this.sources;
    } else {
      json[r'sources'] = null;
    }
    json[r'type'] = this.type;
    return json;
  }

  /// Returns a new [OperateurTelephone] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OperateurTelephone? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'),
            'Required key "OperateurTelephone[name]" is missing from JSON.');
        assert(json[r'name'] != null,
            'Required key "OperateurTelephone[name]" has a null value in JSON.');
        assert(json.containsKey(r'prefix'),
            'Required key "OperateurTelephone[prefix]" is missing from JSON.');
        assert(json[r'prefix'] != null,
            'Required key "OperateurTelephone[prefix]" has a null value in JSON.');
        assert(json.containsKey(r'type'),
            'Required key "OperateurTelephone[type]" is missing from JSON.');
        assert(json[r'type'] != null,
            'Required key "OperateurTelephone[type]" has a null value in JSON.');
        return true;
      }());

      return OperateurTelephone(
        name: mapValueOfType<String>(json, r'name')!,
        prefix: mapValueOfType<String>(json, r'prefix')!,
        sources: json[r'sources'] is Iterable
            ? (json[r'sources'] as Iterable)
                .cast<Object>()
                .toList(growable: false)
            : const [],
        type: mapValueOfType<String>(json, r'type')!,
      );
    }
    return null;
  }

  static List<OperateurTelephone> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OperateurTelephone>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OperateurTelephone.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OperateurTelephone> mapFromJson(dynamic json) {
    final map = <String, OperateurTelephone>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OperateurTelephone.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OperateurTelephone-objects as value to a dart map
  static Map<String, List<OperateurTelephone>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OperateurTelephone>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OperateurTelephone.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'prefix',
    'type',
  };
}
