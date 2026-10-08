//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PrefixeOperateur {
  /// Returns a new [PrefixeOperateur] instance.
  PrefixeOperateur({
    required this.id,
    required this.operator_,
    required this.prefix,
    this.sources = const [],
    required this.type,
  });

  String id;

  String operator_;

  /// Préfixe national du numéro, sans indicatif.
  String prefix;

  List<SourceVerifiee> sources;

  PrefixeOperateurTypeEnum type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PrefixeOperateur &&
          other.id == id &&
          other.operator_ == operator_ &&
          other.prefix == prefix &&
          _deepEquality.equals(other.sources, sources) &&
          other.type == type;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (operator_.hashCode) +
      (prefix.hashCode) +
      (sources.hashCode) +
      (type.hashCode);

  @override
  String toString() =>
      'PrefixeOperateur[id=$id, operator_=$operator_, prefix=$prefix, sources=$sources, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    json[r'operator'] = this.operator_;
    json[r'prefix'] = this.prefix;
    json[r'sources'] = this.sources;
    json[r'type'] = this.type;
    return json;
  }

  /// Returns a new [PrefixeOperateur] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PrefixeOperateur? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'),
            'Required key "PrefixeOperateur[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "PrefixeOperateur[id]" has a null value in JSON.');
        assert(json.containsKey(r'operator'),
            'Required key "PrefixeOperateur[operator]" is missing from JSON.');
        assert(json[r'operator'] != null,
            'Required key "PrefixeOperateur[operator]" has a null value in JSON.');
        assert(json.containsKey(r'prefix'),
            'Required key "PrefixeOperateur[prefix]" is missing from JSON.');
        assert(json[r'prefix'] != null,
            'Required key "PrefixeOperateur[prefix]" has a null value in JSON.');
        assert(json.containsKey(r'sources'),
            'Required key "PrefixeOperateur[sources]" is missing from JSON.');
        assert(json[r'sources'] != null,
            'Required key "PrefixeOperateur[sources]" has a null value in JSON.');
        assert(json.containsKey(r'type'),
            'Required key "PrefixeOperateur[type]" is missing from JSON.');
        assert(json[r'type'] != null,
            'Required key "PrefixeOperateur[type]" has a null value in JSON.');
        return true;
      }());

      return PrefixeOperateur(
        id: mapValueOfType<String>(json, r'id')!,
        operator_: mapValueOfType<String>(json, r'operator')!,
        prefix: mapValueOfType<String>(json, r'prefix')!,
        sources: SourceVerifiee.listFromJson(json[r'sources']),
        type: PrefixeOperateurTypeEnum.fromJson(json[r'type'])!,
      );
    }
    return null;
  }

  static List<PrefixeOperateur> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PrefixeOperateur>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PrefixeOperateur.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PrefixeOperateur> mapFromJson(dynamic json) {
    final map = <String, PrefixeOperateur>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PrefixeOperateur.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PrefixeOperateur-objects as value to a dart map
  static Map<String, List<PrefixeOperateur>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PrefixeOperateur>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PrefixeOperateur.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'operator',
    'prefix',
    'sources',
    'type',
  };
}

enum PrefixeOperateurTypeEnum {
  fixe._(r'fixe'),
  mobile._(r'mobile'),
  ;

  /// Instantiate a new enum with the provided value.
  const PrefixeOperateurTypeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PrefixeOperateurTypeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PrefixeOperateurTypeEnum? fromJson(dynamic value) =>
      PrefixeOperateurTypeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PrefixeOperateurTypeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PrefixeOperateurTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PrefixeOperateurTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PrefixeOperateurTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PrefixeOperateurTypeEnum] to String,
/// and [decode] dynamic data back to [PrefixeOperateurTypeEnum].
class PrefixeOperateurTypeEnumTypeTransformer {
  factory PrefixeOperateurTypeEnumTypeTransformer() =>
      _instance ??= const PrefixeOperateurTypeEnumTypeTransformer._();

  const PrefixeOperateurTypeEnumTypeTransformer._();

  String encode(PrefixeOperateurTypeEnum data) => data._value;

  /// Returns the instance of [PrefixeOperateurTypeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PrefixeOperateurTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PrefixeOperateurTypeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'fixe':
          return PrefixeOperateurTypeEnum.fixe;
        case r'mobile':
          return PrefixeOperateurTypeEnum.mobile;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PrefixeOperateurTypeEnumTypeTransformer? _instance;
}
