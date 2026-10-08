//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Item {
  /// Returns a new [Item] instance.
  Item({
    required this.enabled,
    required this.type,
  });

  bool enabled;

  ItemTypeEnum type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Item && other.enabled == enabled && other.type == type;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (enabled.hashCode) + (type.hashCode);

  @override
  String toString() => 'Item[enabled=$enabled, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'enabled'] = this.enabled;
    json[r'type'] = this.type;
    return json;
  }

  /// Returns a new [Item] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Item? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'enabled'),
            'Required key "Item[enabled]" is missing from JSON.');
        assert(json[r'enabled'] != null,
            'Required key "Item[enabled]" has a null value in JSON.');
        assert(json.containsKey(r'type'),
            'Required key "Item[type]" is missing from JSON.');
        assert(json[r'type'] != null,
            'Required key "Item[type]" has a null value in JSON.');
        return true;
      }());

      return Item(
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        type: ItemTypeEnum.fromJson(json[r'type'])!,
      );
    }
    return null;
  }

  static List<Item> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Item>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Item.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Item> mapFromJson(dynamic json) {
    final map = <String, Item>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Item.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Item-objects as value to a dart map
  static Map<String, List<Item>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Item>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Item.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'enabled',
    'type',
  };
}

enum ItemTypeEnum {
  nationalId._(r'national_id'),
  passport._(r'passport'),
  residencePermit._(r'residence_permit'),
  drivingLicence._(r'driving_licence'),
  ;

  /// Instantiate a new enum with the provided value.
  const ItemTypeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [ItemTypeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static ItemTypeEnum? fromJson(dynamic value) =>
      ItemTypeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [ItemTypeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<ItemTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ItemTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ItemTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ItemTypeEnum] to String,
/// and [decode] dynamic data back to [ItemTypeEnum].
class ItemTypeEnumTypeTransformer {
  factory ItemTypeEnumTypeTransformer() =>
      _instance ??= const ItemTypeEnumTypeTransformer._();

  const ItemTypeEnumTypeTransformer._();

  String encode(ItemTypeEnum data) => data._value;

  /// Returns the instance of [ItemTypeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ItemTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is ItemTypeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'national_id':
          return ItemTypeEnum.nationalId;
        case r'passport':
          return ItemTypeEnum.passport;
        case r'residence_permit':
          return ItemTypeEnum.residencePermit;
        case r'driving_licence':
          return ItemTypeEnum.drivingLicence;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static ItemTypeEnumTypeTransformer? _instance;
}
