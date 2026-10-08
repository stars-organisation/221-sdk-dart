//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CollectionPayoutDestination {
  /// Returns a new [CollectionPayoutDestination] instance.
  CollectionPayoutDestination({
    this.data = const [],
    required this.livemode,
  });

  List<PayoutDestination> data;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CollectionPayoutDestination &&
          _deepEquality.equals(other.data, data) &&
          other.livemode == livemode;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (data.hashCode) + (livemode.hashCode);

  @override
  String toString() =>
      'CollectionPayoutDestination[data=$data, livemode=$livemode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'data'] = this.data;
    json[r'livemode'] = this.livemode;
    return json;
  }

  /// Returns a new [CollectionPayoutDestination] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CollectionPayoutDestination? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'data'),
            'Required key "CollectionPayoutDestination[data]" is missing from JSON.');
        assert(json[r'data'] != null,
            'Required key "CollectionPayoutDestination[data]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "CollectionPayoutDestination[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "CollectionPayoutDestination[livemode]" has a null value in JSON.');
        return true;
      }());

      return CollectionPayoutDestination(
        data: PayoutDestination.listFromJson(json[r'data']),
        livemode: mapValueOfType<bool>(json, r'livemode')!,
      );
    }
    return null;
  }

  static List<CollectionPayoutDestination> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CollectionPayoutDestination>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CollectionPayoutDestination.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CollectionPayoutDestination> mapFromJson(dynamic json) {
    final map = <String, CollectionPayoutDestination>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CollectionPayoutDestination.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CollectionPayoutDestination-objects as value to a dart map
  static Map<String, List<CollectionPayoutDestination>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CollectionPayoutDestination>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CollectionPayoutDestination.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
    'livemode',
  };
}
