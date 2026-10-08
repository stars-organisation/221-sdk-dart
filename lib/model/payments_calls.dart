//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentsCalls {
  /// Returns a new [PaymentsCalls] instance.
  PaymentsCalls({
    required this.errorsToday,
    this.last14Days = const [],
    required this.today,
  });

  int errorsToday;

  /// Du plus ancien au jour courant.
  List<PaymentsCallsDay>? last14Days;

  int today;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaymentsCalls &&
    other.errorsToday == errorsToday &&
    _deepEquality.equals(other.last14Days, last14Days) &&
    other.today == today;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (errorsToday.hashCode) +
    (last14Days == null ? 0 : last14Days!.hashCode) +
    (today.hashCode);

  @override
  String toString() => 'PaymentsCalls[errorsToday=$errorsToday, last14Days=$last14Days, today=$today]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'errors_today'] = this.errorsToday;
    if (this.last14Days != null) {
      json[r'last_14_days'] = this.last14Days;
    } else {
      json[r'last_14_days'] = null;
    }
      json[r'today'] = this.today;
    return json;
  }

  /// Returns a new [PaymentsCalls] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentsCalls? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'errors_today'), 'Required key "PaymentsCalls[errors_today]" is missing from JSON.');
        assert(json[r'errors_today'] != null, 'Required key "PaymentsCalls[errors_today]" has a null value in JSON.');
        assert(json.containsKey(r'today'), 'Required key "PaymentsCalls[today]" is missing from JSON.');
        assert(json[r'today'] != null, 'Required key "PaymentsCalls[today]" has a null value in JSON.');
        return true;
      }());

      return PaymentsCalls(
        errorsToday: mapValueOfType<int>(json, r'errors_today')!,
        last14Days: PaymentsCallsDay.listFromJson(json[r'last_14_days']),
        today: mapValueOfType<int>(json, r'today')!,
      );
    }
    return null;
  }

  static List<PaymentsCalls> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentsCalls>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentsCalls.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentsCalls> mapFromJson(dynamic json) {
    final map = <String, PaymentsCalls>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentsCalls.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentsCalls-objects as value to a dart map
  static Map<String, List<PaymentsCalls>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaymentsCalls>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentsCalls.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'errors_today',
    'today',
  };
}

