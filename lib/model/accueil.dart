//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Accueil {
  /// Returns a new [Accueil] instance.
  Accueil({
    this.answers = const {},
    required this.finished,
    this.questions = const {},
  });

  Map<String, String> answers;

  bool finished;

  Map<String, List<String>?> questions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Accueil &&
    _deepEquality.equals(other.answers, answers) &&
    other.finished == finished &&
    _deepEquality.equals(other.questions, questions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (answers.hashCode) +
    (finished.hashCode) +
    (questions.hashCode);

  @override
  String toString() => 'Accueil[answers=$answers, finished=$finished, questions=$questions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'answers'] = this.answers;
      json[r'finished'] = this.finished;
      json[r'questions'] = this.questions;
    return json;
  }

  /// Returns a new [Accueil] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Accueil? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'answers'), 'Required key "Accueil[answers]" is missing from JSON.');
        assert(json[r'answers'] != null, 'Required key "Accueil[answers]" has a null value in JSON.');
        assert(json.containsKey(r'finished'), 'Required key "Accueil[finished]" is missing from JSON.');
        assert(json[r'finished'] != null, 'Required key "Accueil[finished]" has a null value in JSON.');
        assert(json.containsKey(r'questions'), 'Required key "Accueil[questions]" is missing from JSON.');
        assert(json[r'questions'] != null, 'Required key "Accueil[questions]" has a null value in JSON.');
        return true;
      }());

      return Accueil(
        answers: mapCastOfType<String, String>(json, r'answers')!,
        finished: mapValueOfType<bool>(json, r'finished')!,
        questions: json[r'questions'] == null
          ? const {}
            : (json[r'questions'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v == null ? null : (v as List).map((value) => value as String).toList(growable: false))),
      );
    }
    return null;
  }

  static List<Accueil> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Accueil>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Accueil.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Accueil> mapFromJson(dynamic json) {
    final map = <String, Accueil>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Accueil.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Accueil-objects as value to a dart map
  static Map<String, List<Accueil>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Accueil>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Accueil.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'answers',
    'finished',
    'questions',
  };
}

