//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Montant {
  /// Returns a new [Montant] instance.
  Montant({
    required this.amount,
    required this.currency,
    required this.eur,
    required this.eurParity,
    required this.formatted,
    required this.words,
  });

  int amount;

  MontantCurrencyEnum currency;

  double eur;

  double eurParity;

  String formatted;

  String words;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Montant &&
    other.amount == amount &&
    other.currency == currency &&
    other.eur == eur &&
    other.eurParity == eurParity &&
    other.formatted == formatted &&
    other.words == words;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amount.hashCode) +
    (currency.hashCode) +
    (eur.hashCode) +
    (eurParity.hashCode) +
    (formatted.hashCode) +
    (words.hashCode);

  @override
  String toString() => 'Montant[amount=$amount, currency=$currency, eur=$eur, eurParity=$eurParity, formatted=$formatted, words=$words]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'amount'] = this.amount;
      json[r'currency'] = this.currency;
      json[r'eur'] = this.eur;
      json[r'eur_parity'] = this.eurParity;
      json[r'formatted'] = this.formatted;
      json[r'words'] = this.words;
    return json;
  }

  /// Returns a new [Montant] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Montant? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'amount'), 'Required key "Montant[amount]" is missing from JSON.');
        assert(json[r'amount'] != null, 'Required key "Montant[amount]" has a null value in JSON.');
        assert(json.containsKey(r'currency'), 'Required key "Montant[currency]" is missing from JSON.');
        assert(json[r'currency'] != null, 'Required key "Montant[currency]" has a null value in JSON.');
        assert(json.containsKey(r'eur'), 'Required key "Montant[eur]" is missing from JSON.');
        assert(json[r'eur'] != null, 'Required key "Montant[eur]" has a null value in JSON.');
        assert(json.containsKey(r'eur_parity'), 'Required key "Montant[eur_parity]" is missing from JSON.');
        assert(json[r'eur_parity'] != null, 'Required key "Montant[eur_parity]" has a null value in JSON.');
        assert(json.containsKey(r'formatted'), 'Required key "Montant[formatted]" is missing from JSON.');
        assert(json[r'formatted'] != null, 'Required key "Montant[formatted]" has a null value in JSON.');
        assert(json.containsKey(r'words'), 'Required key "Montant[words]" is missing from JSON.');
        assert(json[r'words'] != null, 'Required key "Montant[words]" has a null value in JSON.');
        return true;
      }());

      return Montant(
        amount: mapValueOfType<int>(json, r'amount')!,
        currency: MontantCurrencyEnum.fromJson(json[r'currency'])!,
        eur: mapValueOfType<double>(json, r'eur')!,
        eurParity: mapValueOfType<double>(json, r'eur_parity')!,
        formatted: mapValueOfType<String>(json, r'formatted')!,
        words: mapValueOfType<String>(json, r'words')!,
      );
    }
    return null;
  }

  static List<Montant> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Montant>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Montant.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Montant> mapFromJson(dynamic json) {
    final map = <String, Montant>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Montant.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Montant-objects as value to a dart map
  static Map<String, List<Montant>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Montant>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Montant.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'amount',
    'currency',
    'eur',
    'eur_parity',
    'formatted',
    'words',
  };
}


enum MontantCurrencyEnum {
  XOF._(r'XOF'),
  ;

  /// Instantiate a new enum with the provided value.
  const MontantCurrencyEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [MontantCurrencyEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static MontantCurrencyEnum? fromJson(dynamic value) => MontantCurrencyEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [MontantCurrencyEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<MontantCurrencyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MontantCurrencyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MontantCurrencyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MontantCurrencyEnum] to String,
/// and [decode] dynamic data back to [MontantCurrencyEnum].
class MontantCurrencyEnumTypeTransformer {
  factory MontantCurrencyEnumTypeTransformer() => _instance ??= const MontantCurrencyEnumTypeTransformer._();

  const MontantCurrencyEnumTypeTransformer._();

  String encode(MontantCurrencyEnum data) => data._value;

  /// Returns the instance of [MontantCurrencyEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MontantCurrencyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is MontantCurrencyEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'XOF': return MontantCurrencyEnum.XOF;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static MontantCurrencyEnumTypeTransformer? _instance;
}


