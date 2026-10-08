//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class KycSessionRequest {
  /// Returns a new [KycSessionRequest] instance.
  KycSessionRequest({
    required this.country,
    required this.documentType,
  });

  /// Pays émetteur de la pièce, parmi ceux de GET /v1/kyc/documents.
  String country;

  KycSessionRequestDocumentTypeEnum documentType;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KycSessionRequest &&
          other.country == country &&
          other.documentType == documentType;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (country.hashCode) + (documentType.hashCode);

  @override
  String toString() =>
      'KycSessionRequest[country=$country, documentType=$documentType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'country'] = this.country;
    json[r'document_type'] = this.documentType;
    return json;
  }

  /// Returns a new [KycSessionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KycSessionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'country'),
            'Required key "KycSessionRequest[country]" is missing from JSON.');
        assert(json[r'country'] != null,
            'Required key "KycSessionRequest[country]" has a null value in JSON.');
        assert(json.containsKey(r'document_type'),
            'Required key "KycSessionRequest[document_type]" is missing from JSON.');
        assert(json[r'document_type'] != null,
            'Required key "KycSessionRequest[document_type]" has a null value in JSON.');
        return true;
      }());

      return KycSessionRequest(
        country: mapValueOfType<String>(json, r'country')!,
        documentType:
            KycSessionRequestDocumentTypeEnum.fromJson(json[r'document_type'])!,
      );
    }
    return null;
  }

  static List<KycSessionRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <KycSessionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KycSessionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KycSessionRequest> mapFromJson(dynamic json) {
    final map = <String, KycSessionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KycSessionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KycSessionRequest-objects as value to a dart map
  static Map<String, List<KycSessionRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<KycSessionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KycSessionRequest.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'country',
    'document_type',
  };
}

enum KycSessionRequestDocumentTypeEnum {
  nationalId._(r'national_id'),
  passport._(r'passport'),
  residencePermit._(r'residence_permit'),
  drivingLicence._(r'driving_licence'),
  ;

  /// Instantiate a new enum with the provided value.
  const KycSessionRequestDocumentTypeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [KycSessionRequestDocumentTypeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static KycSessionRequestDocumentTypeEnum? fromJson(dynamic value) =>
      KycSessionRequestDocumentTypeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [KycSessionRequestDocumentTypeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<KycSessionRequestDocumentTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <KycSessionRequestDocumentTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KycSessionRequestDocumentTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [KycSessionRequestDocumentTypeEnum] to String,
/// and [decode] dynamic data back to [KycSessionRequestDocumentTypeEnum].
class KycSessionRequestDocumentTypeEnumTypeTransformer {
  factory KycSessionRequestDocumentTypeEnumTypeTransformer() =>
      _instance ??= const KycSessionRequestDocumentTypeEnumTypeTransformer._();

  const KycSessionRequestDocumentTypeEnumTypeTransformer._();

  String encode(KycSessionRequestDocumentTypeEnum data) => data._value;

  /// Returns the instance of [KycSessionRequestDocumentTypeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  KycSessionRequestDocumentTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data is KycSessionRequestDocumentTypeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'national_id':
          return KycSessionRequestDocumentTypeEnum.nationalId;
        case r'passport':
          return KycSessionRequestDocumentTypeEnum.passport;
        case r'residence_permit':
          return KycSessionRequestDocumentTypeEnum.residencePermit;
        case r'driving_licence':
          return KycSessionRequestDocumentTypeEnum.drivingLicence;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static KycSessionRequestDocumentTypeEnumTypeTransformer? _instance;
}
