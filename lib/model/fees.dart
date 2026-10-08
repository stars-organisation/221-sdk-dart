//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Fees {
  /// Returns a new [Fees] instance.
  Fees({
    required this.bankMax,
    required this.bankMin,
    required this.bankMonthlyCap,
    this.bankTiers = const [],
    required this.livemode,
  });

  /// Montant maximum d'un virement bancaire, en XOF.
  int bankMax;

  /// Montant minimum d'un virement bancaire, en XOF.
  int bankMin;

  /// Virements bancaires par marchand et par mois calendaire (heure de Dakar), en XOF.
  int bankMonthlyCap;

  /// Paliers des virements bancaires : le palier du montant entier donne le taux. EN: bank transfer tiers; the whole amount's tier gives the rate.
  List<BankTier> bankTiers;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Fees &&
          other.bankMax == bankMax &&
          other.bankMin == bankMin &&
          other.bankMonthlyCap == bankMonthlyCap &&
          _deepEquality.equals(other.bankTiers, bankTiers) &&
          other.livemode == livemode;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (bankMax.hashCode) +
      (bankMin.hashCode) +
      (bankMonthlyCap.hashCode) +
      (bankTiers.hashCode) +
      (livemode.hashCode);

  @override
  String toString() =>
      'Fees[bankMax=$bankMax, bankMin=$bankMin, bankMonthlyCap=$bankMonthlyCap, bankTiers=$bankTiers, livemode=$livemode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'bank_max'] = this.bankMax;
    json[r'bank_min'] = this.bankMin;
    json[r'bank_monthly_cap'] = this.bankMonthlyCap;
    json[r'bank_tiers'] = this.bankTiers;
    json[r'livemode'] = this.livemode;
    return json;
  }

  /// Returns a new [Fees] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Fees? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'bank_max'),
            'Required key "Fees[bank_max]" is missing from JSON.');
        assert(json[r'bank_max'] != null,
            'Required key "Fees[bank_max]" has a null value in JSON.');
        assert(json.containsKey(r'bank_min'),
            'Required key "Fees[bank_min]" is missing from JSON.');
        assert(json[r'bank_min'] != null,
            'Required key "Fees[bank_min]" has a null value in JSON.');
        assert(json.containsKey(r'bank_monthly_cap'),
            'Required key "Fees[bank_monthly_cap]" is missing from JSON.');
        assert(json[r'bank_monthly_cap'] != null,
            'Required key "Fees[bank_monthly_cap]" has a null value in JSON.');
        assert(json.containsKey(r'bank_tiers'),
            'Required key "Fees[bank_tiers]" is missing from JSON.');
        assert(json[r'bank_tiers'] != null,
            'Required key "Fees[bank_tiers]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "Fees[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "Fees[livemode]" has a null value in JSON.');
        return true;
      }());

      return Fees(
        bankMax: mapValueOfType<int>(json, r'bank_max')!,
        bankMin: mapValueOfType<int>(json, r'bank_min')!,
        bankMonthlyCap: mapValueOfType<int>(json, r'bank_monthly_cap')!,
        bankTiers: BankTier.listFromJson(json[r'bank_tiers']),
        livemode: mapValueOfType<bool>(json, r'livemode')!,
      );
    }
    return null;
  }

  static List<Fees> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Fees>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Fees.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Fees> mapFromJson(dynamic json) {
    final map = <String, Fees>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Fees.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Fees-objects as value to a dart map
  static Map<String, List<Fees>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Fees>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Fees.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'bank_max',
    'bank_min',
    'bank_monthly_cap',
    'bank_tiers',
    'livemode',
  };
}
