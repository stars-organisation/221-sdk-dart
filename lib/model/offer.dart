//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Offer {
  /// Returns a new [Offer] instance.
  Offer({
    required this.benefit,
    required this.createdAt,
    required this.description,
    this.endTime,
    required this.id,
    required this.livemode,
    this.maxOrderAmount,
    this.minOrderAmount,
    required this.offerCode,
    this.startTime,
    required this.status,
    required this.title,
    required this.usageCount,
  });

  OfferBenefit benefit;

  DateTime createdAt;

  String description;

  DateTime? endTime;

  String id;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String? maxOrderAmount;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String? minOrderAmount;

  String offerCode;

  DateTime? startTime;

  /// deleted : réponse du DELETE ; l'offre n'est plus listée ni lisible.
  OfferStatusEnum status;

  String title;

  int usageCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Offer &&
          other.benefit == benefit &&
          other.createdAt == createdAt &&
          other.description == description &&
          other.endTime == endTime &&
          other.id == id &&
          other.livemode == livemode &&
          other.maxOrderAmount == maxOrderAmount &&
          other.minOrderAmount == minOrderAmount &&
          other.offerCode == offerCode &&
          other.startTime == startTime &&
          other.status == status &&
          other.title == title &&
          other.usageCount == usageCount;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (benefit.hashCode) +
      (createdAt.hashCode) +
      (description.hashCode) +
      (endTime == null ? 0 : endTime!.hashCode) +
      (id.hashCode) +
      (livemode.hashCode) +
      (maxOrderAmount == null ? 0 : maxOrderAmount!.hashCode) +
      (minOrderAmount == null ? 0 : minOrderAmount!.hashCode) +
      (offerCode.hashCode) +
      (startTime == null ? 0 : startTime!.hashCode) +
      (status.hashCode) +
      (title.hashCode) +
      (usageCount.hashCode);

  @override
  String toString() =>
      'Offer[benefit=$benefit, createdAt=$createdAt, description=$description, endTime=$endTime, id=$id, livemode=$livemode, maxOrderAmount=$maxOrderAmount, minOrderAmount=$minOrderAmount, offerCode=$offerCode, startTime=$startTime, status=$status, title=$title, usageCount=$usageCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'benefit'] = this.benefit;
    json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    json[r'description'] = this.description;
    if (this.endTime != null) {
      json[r'end_time'] = this.endTime!.toUtc().toIso8601String();
    } else {
      json[r'end_time'] = null;
    }
    json[r'id'] = this.id;
    json[r'livemode'] = this.livemode;
    if (this.maxOrderAmount != null) {
      json[r'max_order_amount'] = this.maxOrderAmount;
    } else {
      json[r'max_order_amount'] = null;
    }
    if (this.minOrderAmount != null) {
      json[r'min_order_amount'] = this.minOrderAmount;
    } else {
      json[r'min_order_amount'] = null;
    }
    json[r'offer_code'] = this.offerCode;
    if (this.startTime != null) {
      json[r'start_time'] = this.startTime!.toUtc().toIso8601String();
    } else {
      json[r'start_time'] = null;
    }
    json[r'status'] = this.status;
    json[r'title'] = this.title;
    json[r'usage_count'] = this.usageCount;
    return json;
  }

  /// Returns a new [Offer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Offer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'benefit'),
            'Required key "Offer[benefit]" is missing from JSON.');
        assert(json[r'benefit'] != null,
            'Required key "Offer[benefit]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'),
            'Required key "Offer[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null,
            'Required key "Offer[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'description'),
            'Required key "Offer[description]" is missing from JSON.');
        assert(json[r'description'] != null,
            'Required key "Offer[description]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "Offer[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "Offer[id]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "Offer[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "Offer[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'offer_code'),
            'Required key "Offer[offer_code]" is missing from JSON.');
        assert(json[r'offer_code'] != null,
            'Required key "Offer[offer_code]" has a null value in JSON.');
        assert(json.containsKey(r'status'),
            'Required key "Offer[status]" is missing from JSON.');
        assert(json[r'status'] != null,
            'Required key "Offer[status]" has a null value in JSON.');
        assert(json.containsKey(r'title'),
            'Required key "Offer[title]" is missing from JSON.');
        assert(json[r'title'] != null,
            'Required key "Offer[title]" has a null value in JSON.');
        assert(json.containsKey(r'usage_count'),
            'Required key "Offer[usage_count]" is missing from JSON.');
        assert(json[r'usage_count'] != null,
            'Required key "Offer[usage_count]" has a null value in JSON.');
        return true;
      }());

      return Offer(
        benefit: OfferBenefit.fromJson(json[r'benefit'])!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        description: mapValueOfType<String>(json, r'description')!,
        endTime: mapDateTime(json, r'end_time', r''),
        id: mapValueOfType<String>(json, r'id')!,
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        maxOrderAmount: mapValueOfType<String>(json, r'max_order_amount'),
        minOrderAmount: mapValueOfType<String>(json, r'min_order_amount'),
        offerCode: mapValueOfType<String>(json, r'offer_code')!,
        startTime: mapDateTime(json, r'start_time', r''),
        status: OfferStatusEnum.fromJson(json[r'status'])!,
        title: mapValueOfType<String>(json, r'title')!,
        usageCount: mapValueOfType<int>(json, r'usage_count')!,
      );
    }
    return null;
  }

  static List<Offer> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Offer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Offer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Offer> mapFromJson(dynamic json) {
    final map = <String, Offer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Offer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Offer-objects as value to a dart map
  static Map<String, List<Offer>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Offer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Offer.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'benefit',
    'created_at',
    'description',
    'id',
    'livemode',
    'offer_code',
    'status',
    'title',
    'usage_count',
  };
}

/// deleted : réponse du DELETE ; l'offre n'est plus listée ni lisible.
enum OfferStatusEnum {
  active._(r'active'),
  inactive._(r'inactive'),
  deleted._(r'deleted'),
  ;

  /// Instantiate a new enum with the provided value.
  const OfferStatusEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [OfferStatusEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static OfferStatusEnum? fromJson(dynamic value) =>
      OfferStatusEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [OfferStatusEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<OfferStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OfferStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OfferStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OfferStatusEnum] to String,
/// and [decode] dynamic data back to [OfferStatusEnum].
class OfferStatusEnumTypeTransformer {
  factory OfferStatusEnumTypeTransformer() =>
      _instance ??= const OfferStatusEnumTypeTransformer._();

  const OfferStatusEnumTypeTransformer._();

  String encode(OfferStatusEnum data) => data._value;

  /// Returns the instance of [OfferStatusEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OfferStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is OfferStatusEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'active':
          return OfferStatusEnum.active;
        case r'inactive':
          return OfferStatusEnum.inactive;
        case r'deleted':
          return OfferStatusEnum.deleted;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static OfferStatusEnumTypeTransformer? _instance;
}
