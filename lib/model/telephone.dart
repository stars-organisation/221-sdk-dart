//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Telephone {
  /// Returns a new [Telephone] instance.
  Telephone({
    this.country,
    required this.e164,
    required this.input,
    required this.international,
    required this.national,
    required this.notice,
    required this.operator_,
    required this.senegalese,
    this.type,
    required this.valid,
  });

  String? country;

  String e164;

  String input;

  String international;

  String national;

  String notice;

  OperateurTelephone? operator_;

  bool senegalese;

  String? type;

  bool valid;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Telephone &&
          other.country == country &&
          other.e164 == e164 &&
          other.input == input &&
          other.international == international &&
          other.national == national &&
          other.notice == notice &&
          other.operator_ == operator_ &&
          other.senegalese == senegalese &&
          other.type == type &&
          other.valid == valid;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (country == null ? 0 : country!.hashCode) +
      (e164.hashCode) +
      (input.hashCode) +
      (international.hashCode) +
      (national.hashCode) +
      (notice.hashCode) +
      (operator_ == null ? 0 : operator_!.hashCode) +
      (senegalese.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (valid.hashCode);

  @override
  String toString() =>
      'Telephone[country=$country, e164=$e164, input=$input, international=$international, national=$national, notice=$notice, operator_=$operator_, senegalese=$senegalese, type=$type, valid=$valid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
    }
    json[r'e164'] = this.e164;
    json[r'input'] = this.input;
    json[r'international'] = this.international;
    json[r'national'] = this.national;
    json[r'notice'] = this.notice;
    if (this.operator_ != null) {
      json[r'operator'] = this.operator_;
    } else {
      json[r'operator'] = null;
    }
    json[r'senegalese'] = this.senegalese;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    json[r'valid'] = this.valid;
    return json;
  }

  /// Returns a new [Telephone] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Telephone? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'e164'),
            'Required key "Telephone[e164]" is missing from JSON.');
        assert(json[r'e164'] != null,
            'Required key "Telephone[e164]" has a null value in JSON.');
        assert(json.containsKey(r'input'),
            'Required key "Telephone[input]" is missing from JSON.');
        assert(json[r'input'] != null,
            'Required key "Telephone[input]" has a null value in JSON.');
        assert(json.containsKey(r'international'),
            'Required key "Telephone[international]" is missing from JSON.');
        assert(json[r'international'] != null,
            'Required key "Telephone[international]" has a null value in JSON.');
        assert(json.containsKey(r'national'),
            'Required key "Telephone[national]" is missing from JSON.');
        assert(json[r'national'] != null,
            'Required key "Telephone[national]" has a null value in JSON.');
        assert(json.containsKey(r'notice'),
            'Required key "Telephone[notice]" is missing from JSON.');
        assert(json[r'notice'] != null,
            'Required key "Telephone[notice]" has a null value in JSON.');
        assert(json.containsKey(r'operator'),
            'Required key "Telephone[operator]" is missing from JSON.');
        assert(json.containsKey(r'senegalese'),
            'Required key "Telephone[senegalese]" is missing from JSON.');
        assert(json[r'senegalese'] != null,
            'Required key "Telephone[senegalese]" has a null value in JSON.');
        assert(json.containsKey(r'valid'),
            'Required key "Telephone[valid]" is missing from JSON.');
        assert(json[r'valid'] != null,
            'Required key "Telephone[valid]" has a null value in JSON.');
        return true;
      }());

      return Telephone(
        country: mapValueOfType<String>(json, r'country'),
        e164: mapValueOfType<String>(json, r'e164')!,
        input: mapValueOfType<String>(json, r'input')!,
        international: mapValueOfType<String>(json, r'international')!,
        national: mapValueOfType<String>(json, r'national')!,
        notice: mapValueOfType<String>(json, r'notice')!,
        operator_: OperateurTelephone.fromJson(json[r'operator']),
        senegalese: mapValueOfType<bool>(json, r'senegalese')!,
        type: mapValueOfType<String>(json, r'type'),
        valid: mapValueOfType<bool>(json, r'valid')!,
      );
    }
    return null;
  }

  static List<Telephone> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Telephone>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Telephone.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Telephone> mapFromJson(dynamic json) {
    final map = <String, Telephone>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Telephone.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Telephone-objects as value to a dart map
  static Map<String, List<Telephone>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Telephone>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Telephone.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'e164',
    'input',
    'international',
    'national',
    'notice',
    'operator',
    'senegalese',
    'valid',
  };
}
