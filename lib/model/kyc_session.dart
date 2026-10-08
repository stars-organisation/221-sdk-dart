//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class KycSession {
  /// Returns a new [KycSession] instance.
  KycSession({
    this.captures = const [],
    this.expiresAt,
    this.handoffUrl,
    required this.livemode,
    required this.status,
    this.submitted,
    this.uploaded = const [],
    this.verificationId,
  });

  /// Photos à envoyer.
  List<KycCapture> captures;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expiresAt;

  /// Lien à ouvrir sur un téléphone pour prendre les photos.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? handoffUrl;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  KycSessionStatusEnum status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? submitted;

  List<String> uploaded;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? verificationId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KycSession &&
          _deepEquality.equals(other.captures, captures) &&
          other.expiresAt == expiresAt &&
          other.handoffUrl == handoffUrl &&
          other.livemode == livemode &&
          other.status == status &&
          other.submitted == submitted &&
          _deepEquality.equals(other.uploaded, uploaded) &&
          other.verificationId == verificationId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (captures.hashCode) +
      (expiresAt == null ? 0 : expiresAt!.hashCode) +
      (handoffUrl == null ? 0 : handoffUrl!.hashCode) +
      (livemode.hashCode) +
      (status.hashCode) +
      (submitted == null ? 0 : submitted!.hashCode) +
      (uploaded.hashCode) +
      (verificationId == null ? 0 : verificationId!.hashCode);

  @override
  String toString() =>
      'KycSession[captures=$captures, expiresAt=$expiresAt, handoffUrl=$handoffUrl, livemode=$livemode, status=$status, submitted=$submitted, uploaded=$uploaded, verificationId=$verificationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'captures'] = this.captures;
    if (this.expiresAt != null) {
      json[r'expires_at'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expires_at'] = null;
    }
    if (this.handoffUrl != null) {
      json[r'handoff_url'] = this.handoffUrl;
    } else {
      json[r'handoff_url'] = null;
    }
    json[r'livemode'] = this.livemode;
    json[r'status'] = this.status;
    if (this.submitted != null) {
      json[r'submitted'] = this.submitted;
    } else {
      json[r'submitted'] = null;
    }
    json[r'uploaded'] = this.uploaded;
    if (this.verificationId != null) {
      json[r'verification_id'] = this.verificationId;
    } else {
      json[r'verification_id'] = null;
    }
    return json;
  }

  /// Returns a new [KycSession] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KycSession? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'livemode'),
            'Required key "KycSession[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "KycSession[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'status'),
            'Required key "KycSession[status]" is missing from JSON.');
        assert(json[r'status'] != null,
            'Required key "KycSession[status]" has a null value in JSON.');
        return true;
      }());

      return KycSession(
        captures: KycCapture.listFromJson(json[r'captures']),
        expiresAt: mapDateTime(json, r'expires_at', r''),
        handoffUrl: mapValueOfType<String>(json, r'handoff_url'),
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        status: KycSessionStatusEnum.fromJson(json[r'status'])!,
        submitted: mapValueOfType<bool>(json, r'submitted'),
        uploaded: json[r'uploaded'] is Iterable
            ? (json[r'uploaded'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        verificationId: mapValueOfType<String>(json, r'verification_id'),
      );
    }
    return null;
  }

  static List<KycSession> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <KycSession>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KycSession.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KycSession> mapFromJson(dynamic json) {
    final map = <String, KycSession>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KycSession.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KycSession-objects as value to a dart map
  static Map<String, List<KycSession>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<KycSession>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KycSession.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'livemode',
    'status',
  };
}

enum KycSessionStatusEnum {
  pending._(r'pending'),
  verified._(r'verified'),
  ;

  /// Instantiate a new enum with the provided value.
  const KycSessionStatusEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [KycSessionStatusEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static KycSessionStatusEnum? fromJson(dynamic value) =>
      KycSessionStatusEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [KycSessionStatusEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<KycSessionStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <KycSessionStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KycSessionStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [KycSessionStatusEnum] to String,
/// and [decode] dynamic data back to [KycSessionStatusEnum].
class KycSessionStatusEnumTypeTransformer {
  factory KycSessionStatusEnumTypeTransformer() =>
      _instance ??= const KycSessionStatusEnumTypeTransformer._();

  const KycSessionStatusEnumTypeTransformer._();

  String encode(KycSessionStatusEnum data) => data._value;

  /// Returns the instance of [KycSessionStatusEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  KycSessionStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is KycSessionStatusEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'pending':
          return KycSessionStatusEnum.pending;
        case r'verified':
          return KycSessionStatusEnum.verified;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static KycSessionStatusEnumTypeTransformer? _instance;
}
