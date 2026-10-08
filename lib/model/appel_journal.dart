//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AppelJournal {
  /// Returns a new [AppelJournal] instance.
  AppelJournal({
    required this.createdAt,
    required this.durationMs,
    required this.id,
    required this.keyId,
    required this.method,
    required this.path,
    required this.prefix,
    required this.status,
  });

  DateTime createdAt;

  int durationMs;

  int id;

  String keyId;

  String method;

  String path;

  String prefix;

  int status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppelJournal &&
          other.createdAt == createdAt &&
          other.durationMs == durationMs &&
          other.id == id &&
          other.keyId == keyId &&
          other.method == method &&
          other.path == path &&
          other.prefix == prefix &&
          other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (createdAt.hashCode) +
      (durationMs.hashCode) +
      (id.hashCode) +
      (keyId.hashCode) +
      (method.hashCode) +
      (path.hashCode) +
      (prefix.hashCode) +
      (status.hashCode);

  @override
  String toString() =>
      'AppelJournal[createdAt=$createdAt, durationMs=$durationMs, id=$id, keyId=$keyId, method=$method, path=$path, prefix=$prefix, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    json[r'duration_ms'] = this.durationMs;
    json[r'id'] = this.id;
    json[r'key_id'] = this.keyId;
    json[r'method'] = this.method;
    json[r'path'] = this.path;
    json[r'prefix'] = this.prefix;
    json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [AppelJournal] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AppelJournal? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'created_at'),
            'Required key "AppelJournal[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null,
            'Required key "AppelJournal[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'duration_ms'),
            'Required key "AppelJournal[duration_ms]" is missing from JSON.');
        assert(json[r'duration_ms'] != null,
            'Required key "AppelJournal[duration_ms]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "AppelJournal[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "AppelJournal[id]" has a null value in JSON.');
        assert(json.containsKey(r'key_id'),
            'Required key "AppelJournal[key_id]" is missing from JSON.');
        assert(json[r'key_id'] != null,
            'Required key "AppelJournal[key_id]" has a null value in JSON.');
        assert(json.containsKey(r'method'),
            'Required key "AppelJournal[method]" is missing from JSON.');
        assert(json[r'method'] != null,
            'Required key "AppelJournal[method]" has a null value in JSON.');
        assert(json.containsKey(r'path'),
            'Required key "AppelJournal[path]" is missing from JSON.');
        assert(json[r'path'] != null,
            'Required key "AppelJournal[path]" has a null value in JSON.');
        assert(json.containsKey(r'prefix'),
            'Required key "AppelJournal[prefix]" is missing from JSON.');
        assert(json[r'prefix'] != null,
            'Required key "AppelJournal[prefix]" has a null value in JSON.');
        assert(json.containsKey(r'status'),
            'Required key "AppelJournal[status]" is missing from JSON.');
        assert(json[r'status'] != null,
            'Required key "AppelJournal[status]" has a null value in JSON.');
        return true;
      }());

      return AppelJournal(
        createdAt: mapDateTime(json, r'created_at', r'')!,
        durationMs: mapValueOfType<int>(json, r'duration_ms')!,
        id: mapValueOfType<int>(json, r'id')!,
        keyId: mapValueOfType<String>(json, r'key_id')!,
        method: mapValueOfType<String>(json, r'method')!,
        path: mapValueOfType<String>(json, r'path')!,
        prefix: mapValueOfType<String>(json, r'prefix')!,
        status: mapValueOfType<int>(json, r'status')!,
      );
    }
    return null;
  }

  static List<AppelJournal> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AppelJournal>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AppelJournal.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AppelJournal> mapFromJson(dynamic json) {
    final map = <String, AppelJournal>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AppelJournal.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AppelJournal-objects as value to a dart map
  static Map<String, List<AppelJournal>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AppelJournal>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AppelJournal.listFromJson(
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
    'duration_ms',
    'id',
    'key_id',
    'method',
    'path',
    'prefix',
    'status',
  };
}
