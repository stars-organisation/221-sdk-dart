//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RailFees {
  /// Returns a new [RailFees] instance.
  RailFees({
    this.collectionBps,
    required this.example10000,
    this.refundBps,
    this.withdrawalBps,
  });

  /// Part des frais d'encaissement en points de base (100 = 1 %) ; null sans tarif en vigueur.
  int? collectionBps;

  RailFeeExample example10000;

  int? refundBps;

  int? withdrawalBps;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RailFees &&
          other.collectionBps == collectionBps &&
          other.example10000 == example10000 &&
          other.refundBps == refundBps &&
          other.withdrawalBps == withdrawalBps;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (collectionBps == null ? 0 : collectionBps!.hashCode) +
      (example10000.hashCode) +
      (refundBps == null ? 0 : refundBps!.hashCode) +
      (withdrawalBps == null ? 0 : withdrawalBps!.hashCode);

  @override
  String toString() =>
      'RailFees[collectionBps=$collectionBps, example10000=$example10000, refundBps=$refundBps, withdrawalBps=$withdrawalBps]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.collectionBps != null) {
      json[r'collection_bps'] = this.collectionBps;
    } else {
      json[r'collection_bps'] = null;
    }
    json[r'example_10000'] = this.example10000;
    if (this.refundBps != null) {
      json[r'refund_bps'] = this.refundBps;
    } else {
      json[r'refund_bps'] = null;
    }
    if (this.withdrawalBps != null) {
      json[r'withdrawal_bps'] = this.withdrawalBps;
    } else {
      json[r'withdrawal_bps'] = null;
    }
    return json;
  }

  /// Returns a new [RailFees] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RailFees? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'example_10000'),
            'Required key "RailFees[example_10000]" is missing from JSON.');
        assert(json[r'example_10000'] != null,
            'Required key "RailFees[example_10000]" has a null value in JSON.');
        return true;
      }());

      return RailFees(
        collectionBps: mapValueOfType<int>(json, r'collection_bps'),
        example10000: RailFeeExample.fromJson(json[r'example_10000'])!,
        refundBps: mapValueOfType<int>(json, r'refund_bps'),
        withdrawalBps: mapValueOfType<int>(json, r'withdrawal_bps'),
      );
    }
    return null;
  }

  static List<RailFees> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RailFees>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RailFees.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RailFees> mapFromJson(dynamic json) {
    final map = <String, RailFees>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RailFees.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RailFees-objects as value to a dart map
  static Map<String, List<RailFees>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RailFees>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RailFees.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'example_10000',
  };
}
