//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class KycCapture {
  /// Returns a new [KycCapture] instance.
  KycCapture({
    this.contentTypes = const [],
    required this.expiresAt,
    required this.maxBytes,
    required this.method,
    required this.name,
    required this.url,
  });

  List<String> contentTypes;

  DateTime expiresAt;

  int maxBytes;

  String method;

  KycCaptureNameEnum name;

  /// Lien d'envoi signé : l'image part directement du navigateur ou du téléphone.
  String url;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KycCapture &&
          _deepEquality.equals(other.contentTypes, contentTypes) &&
          other.expiresAt == expiresAt &&
          other.maxBytes == maxBytes &&
          other.method == method &&
          other.name == name &&
          other.url == url;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (contentTypes.hashCode) +
      (expiresAt.hashCode) +
      (maxBytes.hashCode) +
      (method.hashCode) +
      (name.hashCode) +
      (url.hashCode);

  @override
  String toString() =>
      'KycCapture[contentTypes=$contentTypes, expiresAt=$expiresAt, maxBytes=$maxBytes, method=$method, name=$name, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'content_types'] = this.contentTypes;
    json[r'expires_at'] = this.expiresAt.toUtc().toIso8601String();
    json[r'max_bytes'] = this.maxBytes;
    json[r'method'] = this.method;
    json[r'name'] = this.name;
    json[r'url'] = this.url;
    return json;
  }

  /// Returns a new [KycCapture] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KycCapture? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'content_types'),
            'Required key "KycCapture[content_types]" is missing from JSON.');
        assert(json[r'content_types'] != null,
            'Required key "KycCapture[content_types]" has a null value in JSON.');
        assert(json.containsKey(r'expires_at'),
            'Required key "KycCapture[expires_at]" is missing from JSON.');
        assert(json[r'expires_at'] != null,
            'Required key "KycCapture[expires_at]" has a null value in JSON.');
        assert(json.containsKey(r'max_bytes'),
            'Required key "KycCapture[max_bytes]" is missing from JSON.');
        assert(json[r'max_bytes'] != null,
            'Required key "KycCapture[max_bytes]" has a null value in JSON.');
        assert(json.containsKey(r'method'),
            'Required key "KycCapture[method]" is missing from JSON.');
        assert(json[r'method'] != null,
            'Required key "KycCapture[method]" has a null value in JSON.');
        assert(json.containsKey(r'name'),
            'Required key "KycCapture[name]" is missing from JSON.');
        assert(json[r'name'] != null,
            'Required key "KycCapture[name]" has a null value in JSON.');
        assert(json.containsKey(r'url'),
            'Required key "KycCapture[url]" is missing from JSON.');
        assert(json[r'url'] != null,
            'Required key "KycCapture[url]" has a null value in JSON.');
        return true;
      }());

      return KycCapture(
        contentTypes: json[r'content_types'] is Iterable
            ? (json[r'content_types'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        expiresAt: mapDateTime(json, r'expires_at', r'')!,
        maxBytes: mapValueOfType<int>(json, r'max_bytes')!,
        method: mapValueOfType<String>(json, r'method')!,
        name: KycCaptureNameEnum.fromJson(json[r'name'])!,
        url: mapValueOfType<String>(json, r'url')!,
      );
    }
    return null;
  }

  static List<KycCapture> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <KycCapture>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KycCapture.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KycCapture> mapFromJson(dynamic json) {
    final map = <String, KycCapture>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KycCapture.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KycCapture-objects as value to a dart map
  static Map<String, List<KycCapture>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<KycCapture>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KycCapture.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'content_types',
    'expires_at',
    'max_bytes',
    'method',
    'name',
    'url',
  };
}

enum KycCaptureNameEnum {
  front._(r'front'),
  back._(r'back'),
  selfie._(r'selfie'),
  ;

  /// Instantiate a new enum with the provided value.
  const KycCaptureNameEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [KycCaptureNameEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static KycCaptureNameEnum? fromJson(dynamic value) =>
      KycCaptureNameEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [KycCaptureNameEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<KycCaptureNameEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <KycCaptureNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KycCaptureNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [KycCaptureNameEnum] to String,
/// and [decode] dynamic data back to [KycCaptureNameEnum].
class KycCaptureNameEnumTypeTransformer {
  factory KycCaptureNameEnumTypeTransformer() =>
      _instance ??= const KycCaptureNameEnumTypeTransformer._();

  const KycCaptureNameEnumTypeTransformer._();

  String encode(KycCaptureNameEnum data) => data._value;

  /// Returns the instance of [KycCaptureNameEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  KycCaptureNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is KycCaptureNameEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'front':
          return KycCaptureNameEnum.front;
        case r'back':
          return KycCaptureNameEnum.back;
        case r'selfie':
          return KycCaptureNameEnum.selfie;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static KycCaptureNameEnumTypeTransformer? _instance;
}
