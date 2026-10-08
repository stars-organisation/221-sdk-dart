//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TypeEvenement {
  /// Returns a new [TypeEvenement] instance.
  TypeEvenement({
    required this.labelEn,
    required this.labelFr,
    required this.product,
    required this.type,
  });

  String labelEn;

  String labelFr;

  TypeEvenementProductEnum product;

  String type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypeEvenement &&
          other.labelEn == labelEn &&
          other.labelFr == labelFr &&
          other.product == product &&
          other.type == type;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (labelEn.hashCode) +
      (labelFr.hashCode) +
      (product.hashCode) +
      (type.hashCode);

  @override
  String toString() =>
      'TypeEvenement[labelEn=$labelEn, labelFr=$labelFr, product=$product, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'label_en'] = this.labelEn;
    json[r'label_fr'] = this.labelFr;
    json[r'product'] = this.product;
    json[r'type'] = this.type;
    return json;
  }

  /// Returns a new [TypeEvenement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TypeEvenement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'label_en'),
            'Required key "TypeEvenement[label_en]" is missing from JSON.');
        assert(json[r'label_en'] != null,
            'Required key "TypeEvenement[label_en]" has a null value in JSON.');
        assert(json.containsKey(r'label_fr'),
            'Required key "TypeEvenement[label_fr]" is missing from JSON.');
        assert(json[r'label_fr'] != null,
            'Required key "TypeEvenement[label_fr]" has a null value in JSON.');
        assert(json.containsKey(r'product'),
            'Required key "TypeEvenement[product]" is missing from JSON.');
        assert(json[r'product'] != null,
            'Required key "TypeEvenement[product]" has a null value in JSON.');
        assert(json.containsKey(r'type'),
            'Required key "TypeEvenement[type]" is missing from JSON.');
        assert(json[r'type'] != null,
            'Required key "TypeEvenement[type]" has a null value in JSON.');
        return true;
      }());

      return TypeEvenement(
        labelEn: mapValueOfType<String>(json, r'label_en')!,
        labelFr: mapValueOfType<String>(json, r'label_fr')!,
        product: TypeEvenementProductEnum.fromJson(json[r'product'])!,
        type: mapValueOfType<String>(json, r'type')!,
      );
    }
    return null;
  }

  static List<TypeEvenement> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TypeEvenement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TypeEvenement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TypeEvenement> mapFromJson(dynamic json) {
    final map = <String, TypeEvenement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TypeEvenement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TypeEvenement-objects as value to a dart map
  static Map<String, List<TypeEvenement>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TypeEvenement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TypeEvenement.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'label_en',
    'label_fr',
    'product',
    'type',
  };
}

enum TypeEvenementProductEnum {
  payments._(r'payments'),
  data._(r'data'),
  ;

  /// Instantiate a new enum with the provided value.
  const TypeEvenementProductEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [TypeEvenementProductEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static TypeEvenementProductEnum? fromJson(dynamic value) =>
      TypeEvenementProductEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [TypeEvenementProductEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<TypeEvenementProductEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TypeEvenementProductEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TypeEvenementProductEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TypeEvenementProductEnum] to String,
/// and [decode] dynamic data back to [TypeEvenementProductEnum].
class TypeEvenementProductEnumTypeTransformer {
  factory TypeEvenementProductEnumTypeTransformer() =>
      _instance ??= const TypeEvenementProductEnumTypeTransformer._();

  const TypeEvenementProductEnumTypeTransformer._();

  String encode(TypeEvenementProductEnum data) => data._value;

  /// Returns the instance of [TypeEvenementProductEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TypeEvenementProductEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is TypeEvenementProductEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'payments':
          return TypeEvenementProductEnum.payments;
        case r'data':
          return TypeEvenementProductEnum.data;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static TypeEvenementProductEnumTypeTransformer? _instance;
}
