//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AnswerInputBody {
  /// Returns a new [AnswerInputBody] instance.
  AnswerInputBody({
    required this.answer,
  });

  String answer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnswerInputBody &&
    other.answer == answer;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (answer.hashCode);

  @override
  String toString() => 'AnswerInputBody[answer=$answer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'answer'] = this.answer;
    return json;
  }

  /// Returns a new [AnswerInputBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnswerInputBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'answer'), 'Required key "AnswerInputBody[answer]" is missing from JSON.');
        assert(json[r'answer'] != null, 'Required key "AnswerInputBody[answer]" has a null value in JSON.');
        return true;
      }());

      return AnswerInputBody(
        answer: mapValueOfType<String>(json, r'answer')!,
      );
    }
    return null;
  }

  static List<AnswerInputBody> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnswerInputBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnswerInputBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnswerInputBody> mapFromJson(dynamic json) {
    final map = <String, AnswerInputBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnswerInputBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnswerInputBody-objects as value to a dart map
  static Map<String, List<AnswerInputBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnswerInputBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnswerInputBody.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'answer',
  };
}

