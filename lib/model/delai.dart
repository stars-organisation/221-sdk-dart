//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Delai {
  /// Returns a new [Delai] instance.
  Delai({
    required this.date,
    required this.days,
    required this.from,
    this.holidays = const [],
    this.warnings = const [],
  });

  String date;

  int days;

  String from;

  List<String>? holidays;

  List<String>? warnings;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Delai &&
          other.date == date &&
          other.days == days &&
          other.from == from &&
          _deepEquality.equals(other.holidays, holidays) &&
          _deepEquality.equals(other.warnings, warnings);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (date.hashCode) +
      (days.hashCode) +
      (from.hashCode) +
      (holidays == null ? 0 : holidays!.hashCode) +
      (warnings == null ? 0 : warnings!.hashCode);

  @override
  String toString() =>
      'Delai[date=$date, days=$days, from=$from, holidays=$holidays, warnings=$warnings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'date'] = this.date;
    json[r'days'] = this.days;
    json[r'from'] = this.from;
    if (this.holidays != null) {
      json[r'holidays'] = this.holidays;
    } else {
      json[r'holidays'] = null;
    }
    if (this.warnings != null) {
      json[r'warnings'] = this.warnings;
    } else {
      json[r'warnings'] = null;
    }
    return json;
  }

  /// Returns a new [Delai] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Delai? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'date'),
            'Required key "Delai[date]" is missing from JSON.');
        assert(json[r'date'] != null,
            'Required key "Delai[date]" has a null value in JSON.');
        assert(json.containsKey(r'days'),
            'Required key "Delai[days]" is missing from JSON.');
        assert(json[r'days'] != null,
            'Required key "Delai[days]" has a null value in JSON.');
        assert(json.containsKey(r'from'),
            'Required key "Delai[from]" is missing from JSON.');
        assert(json[r'from'] != null,
            'Required key "Delai[from]" has a null value in JSON.');
        return true;
      }());

      return Delai(
        date: mapValueOfType<String>(json, r'date')!,
        days: mapValueOfType<int>(json, r'days')!,
        from: mapValueOfType<String>(json, r'from')!,
        holidays: json[r'holidays'] is Iterable
            ? (json[r'holidays'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        warnings: json[r'warnings'] is Iterable
            ? (json[r'warnings'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<Delai> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Delai>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Delai.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Delai> mapFromJson(dynamic json) {
    final map = <String, Delai>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Delai.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Delai-objects as value to a dart map
  static Map<String, List<Delai>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Delai>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Delai.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'date',
    'days',
    'from',
  };
}
