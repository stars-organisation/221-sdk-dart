//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OfferRequest {
  /// Returns a new [OfferRequest] instance.
  OfferRequest({
    required this.benefit,
    this.description,
    this.endTime,
    this.maxOrderAmount,
    this.minOrderAmount,
    required this.offerCode,
    this.startTime,
    required this.title,
  });

  OfferBenefit benefit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Postérieure à start_time.
  DateTime? endTime;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String? maxOrderAmount;

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String? minOrderAmount;

  /// Mis en majuscules ; unique par projet.
  String offerCode;

  DateTime? startTime;

  String title;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OfferRequest &&
          other.benefit == benefit &&
          other.description == description &&
          other.endTime == endTime &&
          other.maxOrderAmount == maxOrderAmount &&
          other.minOrderAmount == minOrderAmount &&
          other.offerCode == offerCode &&
          other.startTime == startTime &&
          other.title == title;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (benefit.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (endTime == null ? 0 : endTime!.hashCode) +
      (maxOrderAmount == null ? 0 : maxOrderAmount!.hashCode) +
      (minOrderAmount == null ? 0 : minOrderAmount!.hashCode) +
      (offerCode.hashCode) +
      (startTime == null ? 0 : startTime!.hashCode) +
      (title.hashCode);

  @override
  String toString() =>
      'OfferRequest[benefit=$benefit, description=$description, endTime=$endTime, maxOrderAmount=$maxOrderAmount, minOrderAmount=$minOrderAmount, offerCode=$offerCode, startTime=$startTime, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'benefit'] = this.benefit;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.endTime != null) {
      json[r'end_time'] = this.endTime!.toUtc().toIso8601String();
    } else {
      json[r'end_time'] = null;
    }
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
    json[r'title'] = this.title;
    return json;
  }

  /// Returns a new [OfferRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OfferRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'benefit'),
            'Required key "OfferRequest[benefit]" is missing from JSON.');
        assert(json[r'benefit'] != null,
            'Required key "OfferRequest[benefit]" has a null value in JSON.');
        assert(json.containsKey(r'offer_code'),
            'Required key "OfferRequest[offer_code]" is missing from JSON.');
        assert(json[r'offer_code'] != null,
            'Required key "OfferRequest[offer_code]" has a null value in JSON.');
        assert(json.containsKey(r'title'),
            'Required key "OfferRequest[title]" is missing from JSON.');
        assert(json[r'title'] != null,
            'Required key "OfferRequest[title]" has a null value in JSON.');
        return true;
      }());

      return OfferRequest(
        benefit: OfferBenefit.fromJson(json[r'benefit'])!,
        description: mapValueOfType<String>(json, r'description'),
        endTime: mapDateTime(json, r'end_time', r''),
        maxOrderAmount: mapValueOfType<String>(json, r'max_order_amount'),
        minOrderAmount: mapValueOfType<String>(json, r'min_order_amount'),
        offerCode: mapValueOfType<String>(json, r'offer_code')!,
        startTime: mapDateTime(json, r'start_time', r''),
        title: mapValueOfType<String>(json, r'title')!,
      );
    }
    return null;
  }

  static List<OfferRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OfferRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OfferRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OfferRequest> mapFromJson(dynamic json) {
    final map = <String, OfferRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OfferRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OfferRequest-objects as value to a dart map
  static Map<String, List<OfferRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OfferRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OfferRequest.listFromJson(
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
    'offer_code',
    'title',
  };
}
