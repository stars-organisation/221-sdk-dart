//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OfferBenefit {
  /// Returns a new [OfferBenefit] instance.
  OfferBenefit({
    this.maxAmount,
    required this.type,
    required this.value,
  });

  /// Plafond de la remise, pour un pourcentage seulement.
  String? maxAmount;

  OfferBenefitTypeEnum type;

  /// percent : de 1 à 100 ; fixed : montant en XOF.
  String value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OfferBenefit &&
          other.maxAmount == maxAmount &&
          other.type == type &&
          other.value == value;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (maxAmount == null ? 0 : maxAmount!.hashCode) +
      (type.hashCode) +
      (value.hashCode);

  @override
  String toString() =>
      'OfferBenefit[maxAmount=$maxAmount, type=$type, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.maxAmount != null) {
      json[r'max_amount'] = this.maxAmount;
    } else {
      json[r'max_amount'] = null;
    }
    json[r'type'] = this.type;
    json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [OfferBenefit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OfferBenefit? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'type'),
            'Required key "OfferBenefit[type]" is missing from JSON.');
        assert(json[r'type'] != null,
            'Required key "OfferBenefit[type]" has a null value in JSON.');
        assert(json.containsKey(r'value'),
            'Required key "OfferBenefit[value]" is missing from JSON.');
        assert(json[r'value'] != null,
            'Required key "OfferBenefit[value]" has a null value in JSON.');
        return true;
      }());

      return OfferBenefit(
        maxAmount: mapValueOfType<String>(json, r'max_amount'),
        type: OfferBenefitTypeEnum.fromJson(json[r'type'])!,
        value: mapValueOfType<String>(json, r'value')!,
      );
    }
    return null;
  }

  static List<OfferBenefit> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OfferBenefit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OfferBenefit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OfferBenefit> mapFromJson(dynamic json) {
    final map = <String, OfferBenefit>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OfferBenefit.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OfferBenefit-objects as value to a dart map
  static Map<String, List<OfferBenefit>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OfferBenefit>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OfferBenefit.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'value',
  };
}

enum OfferBenefitTypeEnum {
  percent._(r'percent'),
  fixed._(r'fixed'),
  ;

  /// Instantiate a new enum with the provided value.
  const OfferBenefitTypeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [OfferBenefitTypeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static OfferBenefitTypeEnum? fromJson(dynamic value) =>
      OfferBenefitTypeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [OfferBenefitTypeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<OfferBenefitTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OfferBenefitTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OfferBenefitTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OfferBenefitTypeEnum] to String,
/// and [decode] dynamic data back to [OfferBenefitTypeEnum].
class OfferBenefitTypeEnumTypeTransformer {
  factory OfferBenefitTypeEnumTypeTransformer() =>
      _instance ??= const OfferBenefitTypeEnumTypeTransformer._();

  const OfferBenefitTypeEnumTypeTransformer._();

  String encode(OfferBenefitTypeEnum data) => data._value;

  /// Returns the instance of [OfferBenefitTypeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OfferBenefitTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is OfferBenefitTypeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'percent':
          return OfferBenefitTypeEnum.percent;
        case r'fixed':
          return OfferBenefitTypeEnum.fixed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static OfferBenefitTypeEnumTypeTransformer? _instance;
}
