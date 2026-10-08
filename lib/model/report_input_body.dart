//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReportInputBody {
  /// Returns a new [ReportInputBody] instance.
  ReportInputBody({
    required this.currentValue,
    required this.dataset,
    required this.email,
    required this.expectedValue,
    this.lang,
    required this.place,
    required this.source_,
    required this.turnstileToken,
    this.version,
  });

  /// 1 à 500 caractères, publié dans l’issue GitHub.
  String currentValue;

  /// Identifiant du jeu (fiche /donnees/<id>/), ou « autre » pour une fiche de l’annuaire ou une démarche.
  String dataset;

  /// Pour l’accusé et la décision. Jamais publié ; supprimé 30 jours après la décision.
  String email;

  /// 1 à 500 caractères, publié dans l’issue GitHub.
  String expectedValue;

  /// Langue des e-mails.
  ReportInputBodyLangEnum? lang;

  /// 1 à 200 caractères, publié dans l’issue GitHub.
  String place;

  /// 1 à 500 caractères ; seul champ qui accepte un lien.
  String source_;

  /// Jeton Cloudflare Turnstile du widget du formulaire.
  String turnstileToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReportInputBody &&
    other.currentValue == currentValue &&
    other.dataset == dataset &&
    other.email == email &&
    other.expectedValue == expectedValue &&
    other.lang == lang &&
    other.place == place &&
    other.source_ == source_ &&
    other.turnstileToken == turnstileToken &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currentValue.hashCode) +
    (dataset.hashCode) +
    (email.hashCode) +
    (expectedValue.hashCode) +
    (lang == null ? 0 : lang!.hashCode) +
    (place.hashCode) +
    (source_.hashCode) +
    (turnstileToken.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'ReportInputBody[currentValue=$currentValue, dataset=$dataset, email=$email, expectedValue=$expectedValue, lang=$lang, place=$place, source_=$source_, turnstileToken=$turnstileToken, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'current_value'] = this.currentValue;
      json[r'dataset'] = this.dataset;
      json[r'email'] = this.email;
      json[r'expected_value'] = this.expectedValue;
    if (this.lang != null) {
      json[r'lang'] = this.lang;
    } else {
      json[r'lang'] = null;
    }
      json[r'place'] = this.place;
      json[r'source'] = this.source_;
      json[r'turnstile_token'] = this.turnstileToken;
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [ReportInputBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReportInputBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'current_value'), 'Required key "ReportInputBody[current_value]" is missing from JSON.');
        assert(json[r'current_value'] != null, 'Required key "ReportInputBody[current_value]" has a null value in JSON.');
        assert(json.containsKey(r'dataset'), 'Required key "ReportInputBody[dataset]" is missing from JSON.');
        assert(json[r'dataset'] != null, 'Required key "ReportInputBody[dataset]" has a null value in JSON.');
        assert(json.containsKey(r'email'), 'Required key "ReportInputBody[email]" is missing from JSON.');
        assert(json[r'email'] != null, 'Required key "ReportInputBody[email]" has a null value in JSON.');
        assert(json.containsKey(r'expected_value'), 'Required key "ReportInputBody[expected_value]" is missing from JSON.');
        assert(json[r'expected_value'] != null, 'Required key "ReportInputBody[expected_value]" has a null value in JSON.');
        assert(json.containsKey(r'place'), 'Required key "ReportInputBody[place]" is missing from JSON.');
        assert(json[r'place'] != null, 'Required key "ReportInputBody[place]" has a null value in JSON.');
        assert(json.containsKey(r'source'), 'Required key "ReportInputBody[source]" is missing from JSON.');
        assert(json[r'source'] != null, 'Required key "ReportInputBody[source]" has a null value in JSON.');
        assert(json.containsKey(r'turnstile_token'), 'Required key "ReportInputBody[turnstile_token]" is missing from JSON.');
        assert(json[r'turnstile_token'] != null, 'Required key "ReportInputBody[turnstile_token]" has a null value in JSON.');
        return true;
      }());

      return ReportInputBody(
        currentValue: mapValueOfType<String>(json, r'current_value')!,
        dataset: mapValueOfType<String>(json, r'dataset')!,
        email: mapValueOfType<String>(json, r'email')!,
        expectedValue: mapValueOfType<String>(json, r'expected_value')!,
        lang: ReportInputBodyLangEnum.fromJson(json[r'lang']),
        place: mapValueOfType<String>(json, r'place')!,
        source_: mapValueOfType<String>(json, r'source')!,
        turnstileToken: mapValueOfType<String>(json, r'turnstile_token')!,
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<ReportInputBody> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReportInputBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReportInputBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReportInputBody> mapFromJson(dynamic json) {
    final map = <String, ReportInputBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReportInputBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReportInputBody-objects as value to a dart map
  static Map<String, List<ReportInputBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReportInputBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReportInputBody.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'current_value',
    'dataset',
    'email',
    'expected_value',
    'place',
    'source',
    'turnstile_token',
  };
}

/// Langue des e-mails.
enum ReportInputBodyLangEnum {
  fr._(r'fr'),
  en._(r'en'),
  ;

  /// Instantiate a new enum with the provided value.
  const ReportInputBodyLangEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [ReportInputBodyLangEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static ReportInputBodyLangEnum? fromJson(dynamic value) => ReportInputBodyLangEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [ReportInputBodyLangEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<ReportInputBodyLangEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReportInputBodyLangEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReportInputBodyLangEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ReportInputBodyLangEnum] to String,
/// and [decode] dynamic data back to [ReportInputBodyLangEnum].
class ReportInputBodyLangEnumTypeTransformer {
  factory ReportInputBodyLangEnumTypeTransformer() => _instance ??= const ReportInputBodyLangEnumTypeTransformer._();

  const ReportInputBodyLangEnumTypeTransformer._();

  String encode(ReportInputBodyLangEnum data) => data._value;

  /// Returns the instance of [ReportInputBodyLangEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ReportInputBodyLangEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is ReportInputBodyLangEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'fr': return ReportInputBodyLangEnum.fr;
        case r'en': return ReportInputBodyLangEnum.en;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static ReportInputBodyLangEnumTypeTransformer? _instance;
}


