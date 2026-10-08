//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DestinationVerification {
  /// Returns a new [DestinationVerification] instance.
  DestinationVerification({
    required this.attemptsLeft,
    required this.expiresAt,
  });

  int attemptsLeft;

  /// Fin de validité du dernier code envoyé (10 minutes).
  DateTime expiresAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DestinationVerification &&
          other.attemptsLeft == attemptsLeft &&
          other.expiresAt == expiresAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (attemptsLeft.hashCode) + (expiresAt.hashCode);

  @override
  String toString() =>
      'DestinationVerification[attemptsLeft=$attemptsLeft, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'attempts_left'] = this.attemptsLeft;
    json[r'expires_at'] = this.expiresAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DestinationVerification] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DestinationVerification? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'attempts_left'),
            'Required key "DestinationVerification[attempts_left]" is missing from JSON.');
        assert(json[r'attempts_left'] != null,
            'Required key "DestinationVerification[attempts_left]" has a null value in JSON.');
        assert(json.containsKey(r'expires_at'),
            'Required key "DestinationVerification[expires_at]" is missing from JSON.');
        assert(json[r'expires_at'] != null,
            'Required key "DestinationVerification[expires_at]" has a null value in JSON.');
        return true;
      }());

      return DestinationVerification(
        attemptsLeft: mapValueOfType<int>(json, r'attempts_left')!,
        expiresAt: mapDateTime(json, r'expires_at', r'')!,
      );
    }
    return null;
  }

  static List<DestinationVerification> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DestinationVerification>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DestinationVerification.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DestinationVerification> mapFromJson(dynamic json) {
    final map = <String, DestinationVerification>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DestinationVerification.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DestinationVerification-objects as value to a dart map
  static Map<String, List<DestinationVerification>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DestinationVerification>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DestinationVerification.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'attempts_left',
    'expires_at',
  };
}
