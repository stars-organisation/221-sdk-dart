//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Customer {
  /// Returns a new [Customer] instance.
  Customer({
    required this.createdAt,
    this.email,
    required this.id,
    required this.livemode,
    this.name,
    required this.paymentsCount,
    required this.phone,
    required this.phoneCountryCode,
    required this.totalAmount,
  });

  /// Date du premier paiement.
  DateTime createdAt;

  String? email;

  /// Le numéro de téléphone : un client n'est pas stocké, c'est l'ensemble des paiements d'un même numéro.
  String id;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  String? name;

  /// Tous les essais, quel que soit leur état.
  int paymentsCount;

  String phone;

  String phoneCountryCode;

  /// Somme des paiements confirmés.
  String totalAmount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Customer &&
          other.createdAt == createdAt &&
          other.email == email &&
          other.id == id &&
          other.livemode == livemode &&
          other.name == name &&
          other.paymentsCount == paymentsCount &&
          other.phone == phone &&
          other.phoneCountryCode == phoneCountryCode &&
          other.totalAmount == totalAmount;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (createdAt.hashCode) +
      (email == null ? 0 : email!.hashCode) +
      (id.hashCode) +
      (livemode.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (paymentsCount.hashCode) +
      (phone.hashCode) +
      (phoneCountryCode.hashCode) +
      (totalAmount.hashCode);

  @override
  String toString() =>
      'Customer[createdAt=$createdAt, email=$email, id=$id, livemode=$livemode, name=$name, paymentsCount=$paymentsCount, phone=$phone, phoneCountryCode=$phoneCountryCode, totalAmount=$totalAmount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    json[r'id'] = this.id;
    json[r'livemode'] = this.livemode;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    json[r'payments_count'] = this.paymentsCount;
    json[r'phone'] = this.phone;
    json[r'phone_country_code'] = this.phoneCountryCode;
    json[r'total_amount'] = this.totalAmount;
    return json;
  }

  /// Returns a new [Customer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Customer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'created_at'),
            'Required key "Customer[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null,
            'Required key "Customer[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "Customer[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "Customer[id]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "Customer[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "Customer[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'payments_count'),
            'Required key "Customer[payments_count]" is missing from JSON.');
        assert(json[r'payments_count'] != null,
            'Required key "Customer[payments_count]" has a null value in JSON.');
        assert(json.containsKey(r'phone'),
            'Required key "Customer[phone]" is missing from JSON.');
        assert(json[r'phone'] != null,
            'Required key "Customer[phone]" has a null value in JSON.');
        assert(json.containsKey(r'phone_country_code'),
            'Required key "Customer[phone_country_code]" is missing from JSON.');
        assert(json[r'phone_country_code'] != null,
            'Required key "Customer[phone_country_code]" has a null value in JSON.');
        assert(json.containsKey(r'total_amount'),
            'Required key "Customer[total_amount]" is missing from JSON.');
        assert(json[r'total_amount'] != null,
            'Required key "Customer[total_amount]" has a null value in JSON.');
        return true;
      }());

      return Customer(
        createdAt: mapDateTime(json, r'created_at', r'')!,
        email: mapValueOfType<String>(json, r'email'),
        id: mapValueOfType<String>(json, r'id')!,
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        name: mapValueOfType<String>(json, r'name'),
        paymentsCount: mapValueOfType<int>(json, r'payments_count')!,
        phone: mapValueOfType<String>(json, r'phone')!,
        phoneCountryCode: mapValueOfType<String>(json, r'phone_country_code')!,
        totalAmount: mapValueOfType<String>(json, r'total_amount')!,
      );
    }
    return null;
  }

  static List<Customer> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Customer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Customer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Customer> mapFromJson(dynamic json) {
    final map = <String, Customer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Customer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Customer-objects as value to a dart map
  static Map<String, List<Customer>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Customer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Customer.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'created_at',
    'id',
    'livemode',
    'payments_count',
    'phone',
    'phone_country_code',
    'total_amount',
  };
}
