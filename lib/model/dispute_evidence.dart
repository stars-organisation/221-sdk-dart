//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DisputeEvidence {
  /// Returns a new [DisputeEvidence] instance.
  DisputeEvidence({
    required this.createdAt,
    required this.evidenceType,
    required this.fileName,
    required this.id,
    required this.size,
  });

  DateTime createdAt;

  DisputeEvidenceEvidenceTypeEnum evidenceType;

  String fileName;

  String id;

  /// Octets.
  int size;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DisputeEvidence &&
          other.createdAt == createdAt &&
          other.evidenceType == evidenceType &&
          other.fileName == fileName &&
          other.id == id &&
          other.size == size;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (createdAt.hashCode) +
      (evidenceType.hashCode) +
      (fileName.hashCode) +
      (id.hashCode) +
      (size.hashCode);

  @override
  String toString() =>
      'DisputeEvidence[createdAt=$createdAt, evidenceType=$evidenceType, fileName=$fileName, id=$id, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    json[r'evidence_type'] = this.evidenceType;
    json[r'file_name'] = this.fileName;
    json[r'id'] = this.id;
    json[r'size'] = this.size;
    return json;
  }

  /// Returns a new [DisputeEvidence] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DisputeEvidence? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'created_at'),
            'Required key "DisputeEvidence[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null,
            'Required key "DisputeEvidence[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'evidence_type'),
            'Required key "DisputeEvidence[evidence_type]" is missing from JSON.');
        assert(json[r'evidence_type'] != null,
            'Required key "DisputeEvidence[evidence_type]" has a null value in JSON.');
        assert(json.containsKey(r'file_name'),
            'Required key "DisputeEvidence[file_name]" is missing from JSON.');
        assert(json[r'file_name'] != null,
            'Required key "DisputeEvidence[file_name]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "DisputeEvidence[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "DisputeEvidence[id]" has a null value in JSON.');
        assert(json.containsKey(r'size'),
            'Required key "DisputeEvidence[size]" is missing from JSON.');
        assert(json[r'size'] != null,
            'Required key "DisputeEvidence[size]" has a null value in JSON.');
        return true;
      }());

      return DisputeEvidence(
        createdAt: mapDateTime(json, r'created_at', r'')!,
        evidenceType:
            DisputeEvidenceEvidenceTypeEnum.fromJson(json[r'evidence_type'])!,
        fileName: mapValueOfType<String>(json, r'file_name')!,
        id: mapValueOfType<String>(json, r'id')!,
        size: mapValueOfType<int>(json, r'size')!,
      );
    }
    return null;
  }

  static List<DisputeEvidence> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DisputeEvidence>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DisputeEvidence.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DisputeEvidence> mapFromJson(dynamic json) {
    final map = <String, DisputeEvidence>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DisputeEvidence.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DisputeEvidence-objects as value to a dart map
  static Map<String, List<DisputeEvidence>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DisputeEvidence>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DisputeEvidence.listFromJson(
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
    'evidence_type',
    'file_name',
    'id',
    'size',
  };
}

enum DisputeEvidenceEvidenceTypeEnum {
  receipt._(r'receipt'),
  deliveryProof._(r'delivery_proof'),
  customerCommunication._(r'customer_communication'),
  other._(r'other'),
  ;

  /// Instantiate a new enum with the provided value.
  const DisputeEvidenceEvidenceTypeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [DisputeEvidenceEvidenceTypeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static DisputeEvidenceEvidenceTypeEnum? fromJson(dynamic value) =>
      DisputeEvidenceEvidenceTypeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [DisputeEvidenceEvidenceTypeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<DisputeEvidenceEvidenceTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DisputeEvidenceEvidenceTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DisputeEvidenceEvidenceTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DisputeEvidenceEvidenceTypeEnum] to String,
/// and [decode] dynamic data back to [DisputeEvidenceEvidenceTypeEnum].
class DisputeEvidenceEvidenceTypeEnumTypeTransformer {
  factory DisputeEvidenceEvidenceTypeEnumTypeTransformer() =>
      _instance ??= const DisputeEvidenceEvidenceTypeEnumTypeTransformer._();

  const DisputeEvidenceEvidenceTypeEnumTypeTransformer._();

  String encode(DisputeEvidenceEvidenceTypeEnum data) => data._value;

  /// Returns the instance of [DisputeEvidenceEvidenceTypeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DisputeEvidenceEvidenceTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data is DisputeEvidenceEvidenceTypeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'receipt':
          return DisputeEvidenceEvidenceTypeEnum.receipt;
        case r'delivery_proof':
          return DisputeEvidenceEvidenceTypeEnum.deliveryProof;
        case r'customer_communication':
          return DisputeEvidenceEvidenceTypeEnum.customerCommunication;
        case r'other':
          return DisputeEvidenceEvidenceTypeEnum.other;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static DisputeEvidenceEvidenceTypeEnumTypeTransformer? _instance;
}
