//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DemandeInputBody {
  /// Returns a new [DemandeInputBody] instance.
  DemandeInputBody({
    this.details,
    required this.kind,
    required this.title,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? details;

  DemandeInputBodyKindEnum kind;

  String title;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DemandeInputBody &&
          other.details == details &&
          other.kind == kind &&
          other.title == title;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (details == null ? 0 : details!.hashCode) +
      (kind.hashCode) +
      (title.hashCode);

  @override
  String toString() =>
      'DemandeInputBody[details=$details, kind=$kind, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.details != null) {
      json[r'details'] = this.details;
    } else {
      json[r'details'] = null;
    }
    json[r'kind'] = this.kind;
    json[r'title'] = this.title;
    return json;
  }

  /// Returns a new [DemandeInputBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DemandeInputBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'kind'),
            'Required key "DemandeInputBody[kind]" is missing from JSON.');
        assert(json[r'kind'] != null,
            'Required key "DemandeInputBody[kind]" has a null value in JSON.');
        assert(json.containsKey(r'title'),
            'Required key "DemandeInputBody[title]" is missing from JSON.');
        assert(json[r'title'] != null,
            'Required key "DemandeInputBody[title]" has a null value in JSON.');
        return true;
      }());

      return DemandeInputBody(
        details: mapValueOfType<String>(json, r'details'),
        kind: DemandeInputBodyKindEnum.fromJson(json[r'kind'])!,
        title: mapValueOfType<String>(json, r'title')!,
      );
    }
    return null;
  }

  static List<DemandeInputBody> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DemandeInputBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DemandeInputBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DemandeInputBody> mapFromJson(dynamic json) {
    final map = <String, DemandeInputBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DemandeInputBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DemandeInputBody-objects as value to a dart map
  static Map<String, List<DemandeInputBody>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DemandeInputBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DemandeInputBody.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'kind',
    'title',
  };
}

enum DemandeInputBodyKindEnum {
  api._(r'api'),
  donnees._(r'donnees'),
  ;

  /// Instantiate a new enum with the provided value.
  const DemandeInputBodyKindEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [DemandeInputBodyKindEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static DemandeInputBodyKindEnum? fromJson(dynamic value) =>
      DemandeInputBodyKindEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [DemandeInputBodyKindEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<DemandeInputBodyKindEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DemandeInputBodyKindEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DemandeInputBodyKindEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DemandeInputBodyKindEnum] to String,
/// and [decode] dynamic data back to [DemandeInputBodyKindEnum].
class DemandeInputBodyKindEnumTypeTransformer {
  factory DemandeInputBodyKindEnumTypeTransformer() =>
      _instance ??= const DemandeInputBodyKindEnumTypeTransformer._();

  const DemandeInputBodyKindEnumTypeTransformer._();

  String encode(DemandeInputBodyKindEnum data) => data._value;

  /// Returns the instance of [DemandeInputBodyKindEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DemandeInputBodyKindEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is DemandeInputBodyKindEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'api':
          return DemandeInputBodyKindEnum.api;
        case r'donnees':
          return DemandeInputBodyKindEnum.donnees;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static DemandeInputBodyKindEnumTypeTransformer? _instance;
}
