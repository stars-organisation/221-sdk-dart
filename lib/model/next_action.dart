//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NextAction {
  /// Returns a new [NextAction] instance.
  NextAction({
    this.deepLinks = const {},
    this.expiresAt,
    this.message,
    this.qrCode,
    required this.type,
    this.url,
  });

  /// sn_orange en QR : liens d'ouverture directe dans les apps, clés MAXIT et OM. EN: sn_orange QR: links opening the apps directly, keys MAXIT and OM.
  Map<String, String> deepLinks;

  /// sn_orange en QR : fin de validité du QR code (5 minutes) ; la page de paiement 221 Pay en propose ensuite un nouveau. EN: sn_orange QR: end of the QR code's validity (5 minutes); the 221 Pay payment page then offers a new one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expiresAt;

  /// Consigne à afficher (type instruction).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// Code à scanner (type qr).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? qrCode;

  /// Ce qu'il faut montrer en premier au client.
  NextActionTypeEnum type;

  /// Page à ouvrir (type redirect).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NextAction &&
          _deepEquality.equals(other.deepLinks, deepLinks) &&
          other.expiresAt == expiresAt &&
          other.message == message &&
          other.qrCode == qrCode &&
          other.type == type &&
          other.url == url;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (deepLinks.hashCode) +
      (expiresAt == null ? 0 : expiresAt!.hashCode) +
      (message == null ? 0 : message!.hashCode) +
      (qrCode == null ? 0 : qrCode!.hashCode) +
      (type.hashCode) +
      (url == null ? 0 : url!.hashCode);

  @override
  String toString() =>
      'NextAction[deepLinks=$deepLinks, expiresAt=$expiresAt, message=$message, qrCode=$qrCode, type=$type, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'deep_links'] = this.deepLinks;
    if (this.expiresAt != null) {
      json[r'expires_at'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expires_at'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.qrCode != null) {
      json[r'qr_code'] = this.qrCode;
    } else {
      json[r'qr_code'] = null;
    }
    json[r'type'] = this.type;
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [NextAction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NextAction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'type'),
            'Required key "NextAction[type]" is missing from JSON.');
        assert(json[r'type'] != null,
            'Required key "NextAction[type]" has a null value in JSON.');
        return true;
      }());

      return NextAction(
        deepLinks:
            mapCastOfType<String, String>(json, r'deep_links') ?? const {},
        expiresAt: mapDateTime(json, r'expires_at', r''),
        message: mapValueOfType<String>(json, r'message'),
        qrCode: mapValueOfType<String>(json, r'qr_code'),
        type: NextActionTypeEnum.fromJson(json[r'type'])!,
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<NextAction> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NextAction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NextAction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NextAction> mapFromJson(dynamic json) {
    final map = <String, NextAction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NextAction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NextAction-objects as value to a dart map
  static Map<String, List<NextAction>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NextAction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NextAction.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
  };
}

/// Ce qu'il faut montrer en premier au client.
enum NextActionTypeEnum {
  redirect._(r'redirect'),
  qr._(r'qr'),
  instruction._(r'instruction'),
  ;

  /// Instantiate a new enum with the provided value.
  const NextActionTypeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [NextActionTypeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static NextActionTypeEnum? fromJson(dynamic value) =>
      NextActionTypeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [NextActionTypeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<NextActionTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NextActionTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NextActionTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NextActionTypeEnum] to String,
/// and [decode] dynamic data back to [NextActionTypeEnum].
class NextActionTypeEnumTypeTransformer {
  factory NextActionTypeEnumTypeTransformer() =>
      _instance ??= const NextActionTypeEnumTypeTransformer._();

  const NextActionTypeEnumTypeTransformer._();

  String encode(NextActionTypeEnum data) => data._value;

  /// Returns the instance of [NextActionTypeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NextActionTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is NextActionTypeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'redirect':
          return NextActionTypeEnum.redirect;
        case r'qr':
          return NextActionTypeEnum.qr;
        case r'instruction':
          return NextActionTypeEnum.instruction;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static NextActionTypeEnumTypeTransformer? _instance;
}
