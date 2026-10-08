//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Signalement {
  /// Returns a new [Signalement] instance.
  Signalement({
    required this.createdAt,
    required this.dataset,
    required this.decidedAt,
    this.issueUrl,
    required this.numero,
    required this.status,
  });

  DateTime createdAt;

  String dataset;

  DateTime decidedAt;

  /// Issue GitHub publique ; null tant qu’elle n’a pas pu être créée.
  String? issueUrl;

  /// Numéro de suivi.
  String numero;

  /// recu, puis accepte ou refuse.
  SignalementStatusEnum status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Signalement &&
          other.createdAt == createdAt &&
          other.dataset == dataset &&
          other.decidedAt == decidedAt &&
          other.issueUrl == issueUrl &&
          other.numero == numero &&
          other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (createdAt.hashCode) +
      (dataset.hashCode) +
      (decidedAt.hashCode) +
      (issueUrl == null ? 0 : issueUrl!.hashCode) +
      (numero.hashCode) +
      (status.hashCode);

  @override
  String toString() =>
      'Signalement[createdAt=$createdAt, dataset=$dataset, decidedAt=$decidedAt, issueUrl=$issueUrl, numero=$numero, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    json[r'dataset'] = this.dataset;
    json[r'decided_at'] = this.decidedAt.toUtc().toIso8601String();
    if (this.issueUrl != null) {
      json[r'issue_url'] = this.issueUrl;
    } else {
      json[r'issue_url'] = null;
    }
    json[r'numero'] = this.numero;
    json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [Signalement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Signalement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'created_at'),
            'Required key "Signalement[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null,
            'Required key "Signalement[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'dataset'),
            'Required key "Signalement[dataset]" is missing from JSON.');
        assert(json[r'dataset'] != null,
            'Required key "Signalement[dataset]" has a null value in JSON.');
        assert(json.containsKey(r'decided_at'),
            'Required key "Signalement[decided_at]" is missing from JSON.');
        assert(json[r'decided_at'] != null,
            'Required key "Signalement[decided_at]" has a null value in JSON.');
        assert(json.containsKey(r'numero'),
            'Required key "Signalement[numero]" is missing from JSON.');
        assert(json[r'numero'] != null,
            'Required key "Signalement[numero]" has a null value in JSON.');
        assert(json.containsKey(r'status'),
            'Required key "Signalement[status]" is missing from JSON.');
        assert(json[r'status'] != null,
            'Required key "Signalement[status]" has a null value in JSON.');
        return true;
      }());

      return Signalement(
        createdAt: mapDateTime(json, r'created_at', r'')!,
        dataset: mapValueOfType<String>(json, r'dataset')!,
        decidedAt: mapDateTime(json, r'decided_at', r'')!,
        issueUrl: mapValueOfType<String>(json, r'issue_url'),
        numero: mapValueOfType<String>(json, r'numero')!,
        status: SignalementStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<Signalement> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Signalement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Signalement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Signalement> mapFromJson(dynamic json) {
    final map = <String, Signalement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Signalement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Signalement-objects as value to a dart map
  static Map<String, List<Signalement>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Signalement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Signalement.listFromJson(
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
    'dataset',
    'decided_at',
    'numero',
    'status',
  };
}

/// recu, puis accepte ou refuse.
enum SignalementStatusEnum {
  recu._(r'recu'),
  accepte._(r'accepte'),
  refuse._(r'refuse'),
  ;

  /// Instantiate a new enum with the provided value.
  const SignalementStatusEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [SignalementStatusEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static SignalementStatusEnum? fromJson(dynamic value) =>
      SignalementStatusEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [SignalementStatusEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<SignalementStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SignalementStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SignalementStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SignalementStatusEnum] to String,
/// and [decode] dynamic data back to [SignalementStatusEnum].
class SignalementStatusEnumTypeTransformer {
  factory SignalementStatusEnumTypeTransformer() =>
      _instance ??= const SignalementStatusEnumTypeTransformer._();

  const SignalementStatusEnumTypeTransformer._();

  String encode(SignalementStatusEnum data) => data._value;

  /// Returns the instance of [SignalementStatusEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SignalementStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is SignalementStatusEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'recu':
          return SignalementStatusEnum.recu;
        case r'accepte':
          return SignalementStatusEnum.accepte;
        case r'refuse':
          return SignalementStatusEnum.refuse;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static SignalementStatusEnumTypeTransformer? _instance;
}
