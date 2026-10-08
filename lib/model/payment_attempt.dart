//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentAttempt {
  /// Returns a new [PaymentAttempt] instance.
  PaymentAttempt({
    required this.amount,
    this.errorCode,
    this.errorMessage,
    required this.id,
    required this.status,
  });

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String amount;

  /// provider_failed ou expired ; null tant que la tentative n'a pas échoué.
  String? errorCode;

  String? errorMessage;

  /// Référence de la tentative chez l'opérateur.
  String id;

  String status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentAttempt &&
          other.amount == amount &&
          other.errorCode == errorCode &&
          other.errorMessage == errorMessage &&
          other.id == id &&
          other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (amount.hashCode) +
      (errorCode == null ? 0 : errorCode!.hashCode) +
      (errorMessage == null ? 0 : errorMessage!.hashCode) +
      (id.hashCode) +
      (status.hashCode);

  @override
  String toString() =>
      'PaymentAttempt[amount=$amount, errorCode=$errorCode, errorMessage=$errorMessage, id=$id, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'amount'] = this.amount;
    if (this.errorCode != null) {
      json[r'error_code'] = this.errorCode;
    } else {
      json[r'error_code'] = null;
    }
    if (this.errorMessage != null) {
      json[r'error_message'] = this.errorMessage;
    } else {
      json[r'error_message'] = null;
    }
    json[r'id'] = this.id;
    json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [PaymentAttempt] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentAttempt? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'amount'),
            'Required key "PaymentAttempt[amount]" is missing from JSON.');
        assert(json[r'amount'] != null,
            'Required key "PaymentAttempt[amount]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "PaymentAttempt[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "PaymentAttempt[id]" has a null value in JSON.');
        assert(json.containsKey(r'status'),
            'Required key "PaymentAttempt[status]" is missing from JSON.');
        assert(json[r'status'] != null,
            'Required key "PaymentAttempt[status]" has a null value in JSON.');
        return true;
      }());

      return PaymentAttempt(
        amount: mapValueOfType<String>(json, r'amount')!,
        errorCode: mapValueOfType<String>(json, r'error_code'),
        errorMessage: mapValueOfType<String>(json, r'error_message'),
        id: mapValueOfType<String>(json, r'id')!,
        status: mapValueOfType<String>(json, r'status')!,
      );
    }
    return null;
  }

  static List<PaymentAttempt> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentAttempt>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentAttempt.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentAttempt> mapFromJson(dynamic json) {
    final map = <String, PaymentAttempt>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentAttempt.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentAttempt-objects as value to a dart map
  static Map<String, List<PaymentAttempt>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PaymentAttempt>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentAttempt.listFromJson(
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
    'id',
    'status',
  };
}
