//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ActivationLiveBody {
  /// Returns a new [ActivationLiveBody] instance.
  ActivationLiveBody({
    this.acknowledged,
    required this.liveEnabled,
  });

  /// Obligatoire pour activer : confirme que les clés live déplacent de l'argent réel.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? acknowledged;

  bool liveEnabled;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ActivationLiveBody &&
          other.acknowledged == acknowledged &&
          other.liveEnabled == liveEnabled;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (acknowledged == null ? 0 : acknowledged!.hashCode) +
      (liveEnabled.hashCode);

  @override
  String toString() =>
      'ActivationLiveBody[acknowledged=$acknowledged, liveEnabled=$liveEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.acknowledged != null) {
      json[r'acknowledged'] = this.acknowledged;
    } else {
      json[r'acknowledged'] = null;
    }
    json[r'live_enabled'] = this.liveEnabled;
    return json;
  }

  /// Returns a new [ActivationLiveBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActivationLiveBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'live_enabled'),
            'Required key "ActivationLiveBody[live_enabled]" is missing from JSON.');
        assert(json[r'live_enabled'] != null,
            'Required key "ActivationLiveBody[live_enabled]" has a null value in JSON.');
        return true;
      }());

      return ActivationLiveBody(
        acknowledged: mapValueOfType<bool>(json, r'acknowledged'),
        liveEnabled: mapValueOfType<bool>(json, r'live_enabled')!,
      );
    }
    return null;
  }

  static List<ActivationLiveBody> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ActivationLiveBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActivationLiveBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ActivationLiveBody> mapFromJson(dynamic json) {
    final map = <String, ActivationLiveBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ActivationLiveBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ActivationLiveBody-objects as value to a dart map
  static Map<String, List<ActivationLiveBody>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ActivationLiveBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ActivationLiveBody.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'live_enabled',
  };
}
