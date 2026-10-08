//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RailFeeExample {
  /// Returns a new [RailFeeExample] instance.
  RailFeeExample({
    required this.amount,
    this.collectionFee,
    this.refundFee,
    this.withdrawalFee,
  });

  /// Montant de l'exemple : 10000 XOF.
  String amount;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String? collectionFee;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String? refundFee;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String? withdrawalFee;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RailFeeExample &&
          other.amount == amount &&
          other.collectionFee == collectionFee &&
          other.refundFee == refundFee &&
          other.withdrawalFee == withdrawalFee;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (amount.hashCode) +
      (collectionFee == null ? 0 : collectionFee!.hashCode) +
      (refundFee == null ? 0 : refundFee!.hashCode) +
      (withdrawalFee == null ? 0 : withdrawalFee!.hashCode);

  @override
  String toString() =>
      'RailFeeExample[amount=$amount, collectionFee=$collectionFee, refundFee=$refundFee, withdrawalFee=$withdrawalFee]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'amount'] = this.amount;
    if (this.collectionFee != null) {
      json[r'collection_fee'] = this.collectionFee;
    } else {
      json[r'collection_fee'] = null;
    }
    if (this.refundFee != null) {
      json[r'refund_fee'] = this.refundFee;
    } else {
      json[r'refund_fee'] = null;
    }
    if (this.withdrawalFee != null) {
      json[r'withdrawal_fee'] = this.withdrawalFee;
    } else {
      json[r'withdrawal_fee'] = null;
    }
    return json;
  }

  /// Returns a new [RailFeeExample] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RailFeeExample? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'amount'),
            'Required key "RailFeeExample[amount]" is missing from JSON.');
        assert(json[r'amount'] != null,
            'Required key "RailFeeExample[amount]" has a null value in JSON.');
        return true;
      }());

      return RailFeeExample(
        amount: mapValueOfType<String>(json, r'amount')!,
        collectionFee: mapValueOfType<String>(json, r'collection_fee'),
        refundFee: mapValueOfType<String>(json, r'refund_fee'),
        withdrawalFee: mapValueOfType<String>(json, r'withdrawal_fee'),
      );
    }
    return null;
  }

  static List<RailFeeExample> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RailFeeExample>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RailFeeExample.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RailFeeExample> mapFromJson(dynamic json) {
    final map = <String, RailFeeExample>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RailFeeExample.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RailFeeExample-objects as value to a dart map
  static Map<String, List<RailFeeExample>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RailFeeExample>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RailFeeExample.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'amount',
  };
}
