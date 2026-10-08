//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JoursOuvres {
  /// Returns a new [JoursOuvres] instance.
  JoursOuvres({
    required this.businessDays,
    required this.from,
    this.holidays = const [],
    required this.to,
    this.warnings = const [],
  });

  int businessDays;

  String from;

  List<String>? holidays;

  String to;

  List<String>? warnings;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JoursOuvres &&
          other.businessDays == businessDays &&
          other.from == from &&
          _deepEquality.equals(other.holidays, holidays) &&
          other.to == to &&
          _deepEquality.equals(other.warnings, warnings);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (businessDays.hashCode) +
      (from.hashCode) +
      (holidays == null ? 0 : holidays!.hashCode) +
      (to.hashCode) +
      (warnings == null ? 0 : warnings!.hashCode);

  @override
  String toString() =>
      'JoursOuvres[businessDays=$businessDays, from=$from, holidays=$holidays, to=$to, warnings=$warnings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'business_days'] = this.businessDays;
    json[r'from'] = this.from;
    if (this.holidays != null) {
      json[r'holidays'] = this.holidays;
    } else {
      json[r'holidays'] = null;
    }
    json[r'to'] = this.to;
    if (this.warnings != null) {
      json[r'warnings'] = this.warnings;
    } else {
      json[r'warnings'] = null;
    }
    return json;
  }

  /// Returns a new [JoursOuvres] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JoursOuvres? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'business_days'),
            'Required key "JoursOuvres[business_days]" is missing from JSON.');
        assert(json[r'business_days'] != null,
            'Required key "JoursOuvres[business_days]" has a null value in JSON.');
        assert(json.containsKey(r'from'),
            'Required key "JoursOuvres[from]" is missing from JSON.');
        assert(json[r'from'] != null,
            'Required key "JoursOuvres[from]" has a null value in JSON.');
        assert(json.containsKey(r'to'),
            'Required key "JoursOuvres[to]" is missing from JSON.');
        assert(json[r'to'] != null,
            'Required key "JoursOuvres[to]" has a null value in JSON.');
        return true;
      }());

      return JoursOuvres(
        businessDays: mapValueOfType<int>(json, r'business_days')!,
        from: mapValueOfType<String>(json, r'from')!,
        holidays: json[r'holidays'] is Iterable
            ? (json[r'holidays'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        to: mapValueOfType<String>(json, r'to')!,
        warnings: json[r'warnings'] is Iterable
            ? (json[r'warnings'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<JoursOuvres> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <JoursOuvres>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JoursOuvres.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JoursOuvres> mapFromJson(dynamic json) {
    final map = <String, JoursOuvres>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JoursOuvres.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JoursOuvres-objects as value to a dart map
  static Map<String, List<JoursOuvres>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<JoursOuvres>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JoursOuvres.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'business_days',
    'from',
    'to',
  };
}
