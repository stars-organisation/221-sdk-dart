//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EnvoiTest {
  /// Returns a new [EnvoiTest] instance.
  EnvoiTest({
    required this.delivered,
    this.error,
    required this.event,
    required this.livemode,
    this.status,
  });

  /// true si le récepteur a répondu 2xx.
  bool delivered;

  /// Cause technique quand le récepteur n'a pas répondu.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  String event;

  /// true si le point de terminaison ne reçoit que le mode live.
  bool livemode;

  /// Code HTTP du récepteur ; null s'il n'a pas répondu.
  int? status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EnvoiTest &&
          other.delivered == delivered &&
          other.error == error &&
          other.event == event &&
          other.livemode == livemode &&
          other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (delivered.hashCode) +
      (error == null ? 0 : error!.hashCode) +
      (event.hashCode) +
      (livemode.hashCode) +
      (status == null ? 0 : status!.hashCode);

  @override
  String toString() =>
      'EnvoiTest[delivered=$delivered, error=$error, event=$event, livemode=$livemode, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'delivered'] = this.delivered;
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    json[r'event'] = this.event;
    json[r'livemode'] = this.livemode;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [EnvoiTest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EnvoiTest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'delivered'),
            'Required key "EnvoiTest[delivered]" is missing from JSON.');
        assert(json[r'delivered'] != null,
            'Required key "EnvoiTest[delivered]" has a null value in JSON.');
        assert(json.containsKey(r'event'),
            'Required key "EnvoiTest[event]" is missing from JSON.');
        assert(json[r'event'] != null,
            'Required key "EnvoiTest[event]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "EnvoiTest[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "EnvoiTest[livemode]" has a null value in JSON.');
        return true;
      }());

      return EnvoiTest(
        delivered: mapValueOfType<bool>(json, r'delivered')!,
        error: mapValueOfType<String>(json, r'error'),
        event: mapValueOfType<String>(json, r'event')!,
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        status: mapValueOfType<int>(json, r'status'),
      );
    }
    return null;
  }

  static List<EnvoiTest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EnvoiTest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EnvoiTest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EnvoiTest> mapFromJson(dynamic json) {
    final map = <String, EnvoiTest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EnvoiTest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EnvoiTest-objects as value to a dart map
  static Map<String, List<EnvoiTest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EnvoiTest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EnvoiTest.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'delivered',
    'event',
    'livemode',
  };
}
