//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Demande {
  /// Returns a new [Demande] instance.
  Demande({
    required this.createdAt,
    this.details,
    required this.id,
    required this.kind,
    this.note,
    required this.status,
    required this.title,
    required this.voted,
    required this.votes,
  });

  DateTime createdAt;

  String? details;

  String id;

  DemandeKindEnum kind;

  /// Explication de l’équipe 221, surtout pour « impossible ».
  String? note;

  DemandeStatusEnum status;

  String title;

  /// Vrai si l’utilisateur connecté a voté.
  bool voted;

  int votes;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Demande &&
          other.createdAt == createdAt &&
          other.details == details &&
          other.id == id &&
          other.kind == kind &&
          other.note == note &&
          other.status == status &&
          other.title == title &&
          other.voted == voted &&
          other.votes == votes;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (createdAt.hashCode) +
      (details == null ? 0 : details!.hashCode) +
      (id.hashCode) +
      (kind.hashCode) +
      (note == null ? 0 : note!.hashCode) +
      (status.hashCode) +
      (title.hashCode) +
      (voted.hashCode) +
      (votes.hashCode);

  @override
  String toString() =>
      'Demande[createdAt=$createdAt, details=$details, id=$id, kind=$kind, note=$note, status=$status, title=$title, voted=$voted, votes=$votes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    if (this.details != null) {
      json[r'details'] = this.details;
    } else {
      json[r'details'] = null;
    }
    json[r'id'] = this.id;
    json[r'kind'] = this.kind;
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    json[r'status'] = this.status;
    json[r'title'] = this.title;
    json[r'voted'] = this.voted;
    json[r'votes'] = this.votes;
    return json;
  }

  /// Returns a new [Demande] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Demande? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'created_at'),
            'Required key "Demande[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null,
            'Required key "Demande[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "Demande[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "Demande[id]" has a null value in JSON.');
        assert(json.containsKey(r'kind'),
            'Required key "Demande[kind]" is missing from JSON.');
        assert(json[r'kind'] != null,
            'Required key "Demande[kind]" has a null value in JSON.');
        assert(json.containsKey(r'status'),
            'Required key "Demande[status]" is missing from JSON.');
        assert(json[r'status'] != null,
            'Required key "Demande[status]" has a null value in JSON.');
        assert(json.containsKey(r'title'),
            'Required key "Demande[title]" is missing from JSON.');
        assert(json[r'title'] != null,
            'Required key "Demande[title]" has a null value in JSON.');
        assert(json.containsKey(r'voted'),
            'Required key "Demande[voted]" is missing from JSON.');
        assert(json[r'voted'] != null,
            'Required key "Demande[voted]" has a null value in JSON.');
        assert(json.containsKey(r'votes'),
            'Required key "Demande[votes]" is missing from JSON.');
        assert(json[r'votes'] != null,
            'Required key "Demande[votes]" has a null value in JSON.');
        return true;
      }());

      return Demande(
        createdAt: mapDateTime(json, r'created_at', r'')!,
        details: mapValueOfType<String>(json, r'details'),
        id: mapValueOfType<String>(json, r'id')!,
        kind: DemandeKindEnum.fromJson(json[r'kind'])!,
        note: mapValueOfType<String>(json, r'note'),
        status: DemandeStatusEnum.fromJson(json[r'status'])!,
        title: mapValueOfType<String>(json, r'title')!,
        voted: mapValueOfType<bool>(json, r'voted')!,
        votes: mapValueOfType<int>(json, r'votes')!,
      );
    }
    return null;
  }

  static List<Demande> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Demande>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Demande.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Demande> mapFromJson(dynamic json) {
    final map = <String, Demande>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Demande.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Demande-objects as value to a dart map
  static Map<String, List<Demande>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Demande>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Demande.listFromJson(
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
    'id',
    'kind',
    'status',
    'title',
    'voted',
    'votes',
  };
}

enum DemandeKindEnum {
  api._(r'api'),
  donnees._(r'donnees'),
  ;

  /// Instantiate a new enum with the provided value.
  const DemandeKindEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [DemandeKindEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static DemandeKindEnum? fromJson(dynamic value) =>
      DemandeKindEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [DemandeKindEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<DemandeKindEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DemandeKindEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DemandeKindEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DemandeKindEnum] to String,
/// and [decode] dynamic data back to [DemandeKindEnum].
class DemandeKindEnumTypeTransformer {
  factory DemandeKindEnumTypeTransformer() =>
      _instance ??= const DemandeKindEnumTypeTransformer._();

  const DemandeKindEnumTypeTransformer._();

  String encode(DemandeKindEnum data) => data._value;

  /// Returns the instance of [DemandeKindEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DemandeKindEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is DemandeKindEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'api':
          return DemandeKindEnum.api;
        case r'donnees':
          return DemandeKindEnum.donnees;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static DemandeKindEnumTypeTransformer? _instance;
}

enum DemandeStatusEnum {
  ouverte._(r'ouverte'),
  enCours._(r'en_cours'),
  publiee._(r'publiee'),
  impossible._(r'impossible'),
  ;

  /// Instantiate a new enum with the provided value.
  const DemandeStatusEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [DemandeStatusEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static DemandeStatusEnum? fromJson(dynamic value) =>
      DemandeStatusEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [DemandeStatusEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<DemandeStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DemandeStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DemandeStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DemandeStatusEnum] to String,
/// and [decode] dynamic data back to [DemandeStatusEnum].
class DemandeStatusEnumTypeTransformer {
  factory DemandeStatusEnumTypeTransformer() =>
      _instance ??= const DemandeStatusEnumTypeTransformer._();

  const DemandeStatusEnumTypeTransformer._();

  String encode(DemandeStatusEnum data) => data._value;

  /// Returns the instance of [DemandeStatusEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DemandeStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is DemandeStatusEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'ouverte':
          return DemandeStatusEnum.ouverte;
        case r'en_cours':
          return DemandeStatusEnum.enCours;
        case r'publiee':
          return DemandeStatusEnum.publiee;
        case r'impossible':
          return DemandeStatusEnum.impossible;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static DemandeStatusEnumTypeTransformer? _instance;
}
