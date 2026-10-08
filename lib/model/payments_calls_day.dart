//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentsCallsDay {
  /// Returns a new [PaymentsCallsDay] instance.
  PaymentsCallsDay({
    required this.count,
    required this.day,
  });

  int count;

  /// Jour UTC, AAAA-MM-JJ.
  String day;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentsCallsDay && other.count == count && other.day == day;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (count.hashCode) + (day.hashCode);

  @override
  String toString() => 'PaymentsCallsDay[count=$count, day=$day]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'count'] = this.count;
    json[r'day'] = this.day;
    return json;
  }

  /// Returns a new [PaymentsCallsDay] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentsCallsDay? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'count'),
            'Required key "PaymentsCallsDay[count]" is missing from JSON.');
        assert(json[r'count'] != null,
            'Required key "PaymentsCallsDay[count]" has a null value in JSON.');
        assert(json.containsKey(r'day'),
            'Required key "PaymentsCallsDay[day]" is missing from JSON.');
        assert(json[r'day'] != null,
            'Required key "PaymentsCallsDay[day]" has a null value in JSON.');
        return true;
      }());

      return PaymentsCallsDay(
        count: mapValueOfType<int>(json, r'count')!,
        day: mapValueOfType<String>(json, r'day')!,
      );
    }
    return null;
  }

  static List<PaymentsCallsDay> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentsCallsDay>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentsCallsDay.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentsCallsDay> mapFromJson(dynamic json) {
    final map = <String, PaymentsCallsDay>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentsCallsDay.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentsCallsDay-objects as value to a dart map
  static Map<String, List<PaymentsCallsDay>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PaymentsCallsDay>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentsCallsDay.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'count',
    'day',
  };
}
