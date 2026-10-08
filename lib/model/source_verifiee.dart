//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SourceVerifiee {
  /// Returns a new [SourceVerifiee] instance.
  SourceVerifiee({
    required this.lang,
    required this.official,
    required this.title,
    required this.url,
    required this.verifiedOn,
  });

  SourceVerifieeLangEnum lang;

  bool official;

  String title;

  String url;

  /// Date de la dernière vérification de la source.
  DateTime verifiedOn;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SourceVerifiee &&
          other.lang == lang &&
          other.official == official &&
          other.title == title &&
          other.url == url &&
          other.verifiedOn == verifiedOn;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (lang.hashCode) +
      (official.hashCode) +
      (title.hashCode) +
      (url.hashCode) +
      (verifiedOn.hashCode);

  @override
  String toString() =>
      'SourceVerifiee[lang=$lang, official=$official, title=$title, url=$url, verifiedOn=$verifiedOn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'lang'] = this.lang;
    json[r'official'] = this.official;
    json[r'title'] = this.title;
    json[r'url'] = this.url;
    json[r'verifiedOn'] = _dateFormatter.format(this.verifiedOn);
    return json;
  }

  /// Returns a new [SourceVerifiee] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SourceVerifiee? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'lang'),
            'Required key "SourceVerifiee[lang]" is missing from JSON.');
        assert(json[r'lang'] != null,
            'Required key "SourceVerifiee[lang]" has a null value in JSON.');
        assert(json.containsKey(r'official'),
            'Required key "SourceVerifiee[official]" is missing from JSON.');
        assert(json[r'official'] != null,
            'Required key "SourceVerifiee[official]" has a null value in JSON.');
        assert(json.containsKey(r'title'),
            'Required key "SourceVerifiee[title]" is missing from JSON.');
        assert(json[r'title'] != null,
            'Required key "SourceVerifiee[title]" has a null value in JSON.');
        assert(json.containsKey(r'url'),
            'Required key "SourceVerifiee[url]" is missing from JSON.');
        assert(json[r'url'] != null,
            'Required key "SourceVerifiee[url]" has a null value in JSON.');
        assert(json.containsKey(r'verifiedOn'),
            'Required key "SourceVerifiee[verifiedOn]" is missing from JSON.');
        assert(json[r'verifiedOn'] != null,
            'Required key "SourceVerifiee[verifiedOn]" has a null value in JSON.');
        return true;
      }());

      return SourceVerifiee(
        lang: SourceVerifieeLangEnum.fromJson(json[r'lang'])!,
        official: mapValueOfType<bool>(json, r'official')!,
        title: mapValueOfType<String>(json, r'title')!,
        url: mapValueOfType<String>(json, r'url')!,
        verifiedOn: mapDateTime(json, r'verifiedOn', r'')!,
      );
    }
    return null;
  }

  static List<SourceVerifiee> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SourceVerifiee>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SourceVerifiee.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SourceVerifiee> mapFromJson(dynamic json) {
    final map = <String, SourceVerifiee>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SourceVerifiee.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SourceVerifiee-objects as value to a dart map
  static Map<String, List<SourceVerifiee>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SourceVerifiee>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SourceVerifiee.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'lang',
    'official',
    'title',
    'url',
    'verifiedOn',
  };
}

enum SourceVerifieeLangEnum {
  fr._(r'fr'),
  en._(r'en'),
  ;

  /// Instantiate a new enum with the provided value.
  const SourceVerifieeLangEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [SourceVerifieeLangEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static SourceVerifieeLangEnum? fromJson(dynamic value) =>
      SourceVerifieeLangEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [SourceVerifieeLangEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<SourceVerifieeLangEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SourceVerifieeLangEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SourceVerifieeLangEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SourceVerifieeLangEnum] to String,
/// and [decode] dynamic data back to [SourceVerifieeLangEnum].
class SourceVerifieeLangEnumTypeTransformer {
  factory SourceVerifieeLangEnumTypeTransformer() =>
      _instance ??= const SourceVerifieeLangEnumTypeTransformer._();

  const SourceVerifieeLangEnumTypeTransformer._();

  String encode(SourceVerifieeLangEnum data) => data._value;

  /// Returns the instance of [SourceVerifieeLangEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SourceVerifieeLangEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is SourceVerifieeLangEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'fr':
          return SourceVerifieeLangEnum.fr;
        case r'en':
          return SourceVerifieeLangEnum.en;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static SourceVerifieeLangEnumTypeTransformer? _instance;
}
