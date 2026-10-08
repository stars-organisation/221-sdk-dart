//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DisputeEvidenceFile {
  /// Returns a new [DisputeEvidenceFile] instance.
  DisputeEvidenceFile({
    required this.id,
    required this.livemode,
  });

  String id;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DisputeEvidenceFile &&
          other.id == id &&
          other.livemode == livemode;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) + (livemode.hashCode);

  @override
  String toString() => 'DisputeEvidenceFile[id=$id, livemode=$livemode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    json[r'livemode'] = this.livemode;
    return json;
  }

  /// Returns a new [DisputeEvidenceFile] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DisputeEvidenceFile? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'),
            'Required key "DisputeEvidenceFile[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "DisputeEvidenceFile[id]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "DisputeEvidenceFile[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "DisputeEvidenceFile[livemode]" has a null value in JSON.');
        return true;
      }());

      return DisputeEvidenceFile(
        id: mapValueOfType<String>(json, r'id')!,
        livemode: mapValueOfType<bool>(json, r'livemode')!,
      );
    }
    return null;
  }

  static List<DisputeEvidenceFile> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DisputeEvidenceFile>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DisputeEvidenceFile.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DisputeEvidenceFile> mapFromJson(dynamic json) {
    final map = <String, DisputeEvidenceFile>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DisputeEvidenceFile.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DisputeEvidenceFile-objects as value to a dart map
  static Map<String, List<DisputeEvidenceFile>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DisputeEvidenceFile>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DisputeEvidenceFile.listFromJson(
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
    'livemode',
  };
}
