//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class KycStatus {
  /// Returns a new [KycStatus] instance.
  KycStatus({
    this.country,
    this.documentType,
    required this.livemode,
    required this.merchantStatus,
    this.reasonCode,
    this.reviewEta,
    required this.status,
    required this.submitted,
    this.uploaded = const [],
    this.verificationId,
    required this.withdrawalsBlocked,
    this.withdrawalsBlockedReason,
  });

  String? country;

  String? documentType;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  KycStatusMerchantStatusEnum merchantStatus;

  /// Motif du refus, quand status vaut rejected.
  String? reasonCode;

  /// Fin prévue de l'examen, cinq jours ouvrés après l'envoi.
  DateTime? reviewEta;

  KycStatusStatusEnum status;

  /// true : envoyée à l'examen.
  bool submitted;

  /// Photos déjà reçues.
  List<String> uploaded;

  /// Renseigné quand la vérification est pending.
  String? verificationId;

  bool withdrawalsBlocked;

  /// merchant_suspended ou kyc_required ; null si les retraits sont autorisés.
  String? withdrawalsBlockedReason;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KycStatus &&
          other.country == country &&
          other.documentType == documentType &&
          other.livemode == livemode &&
          other.merchantStatus == merchantStatus &&
          other.reasonCode == reasonCode &&
          other.reviewEta == reviewEta &&
          other.status == status &&
          other.submitted == submitted &&
          _deepEquality.equals(other.uploaded, uploaded) &&
          other.verificationId == verificationId &&
          other.withdrawalsBlocked == withdrawalsBlocked &&
          other.withdrawalsBlockedReason == withdrawalsBlockedReason;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (country == null ? 0 : country!.hashCode) +
      (documentType == null ? 0 : documentType!.hashCode) +
      (livemode.hashCode) +
      (merchantStatus.hashCode) +
      (reasonCode == null ? 0 : reasonCode!.hashCode) +
      (reviewEta == null ? 0 : reviewEta!.hashCode) +
      (status.hashCode) +
      (submitted.hashCode) +
      (uploaded.hashCode) +
      (verificationId == null ? 0 : verificationId!.hashCode) +
      (withdrawalsBlocked.hashCode) +
      (withdrawalsBlockedReason == null
          ? 0
          : withdrawalsBlockedReason!.hashCode);

  @override
  String toString() =>
      'KycStatus[country=$country, documentType=$documentType, livemode=$livemode, merchantStatus=$merchantStatus, reasonCode=$reasonCode, reviewEta=$reviewEta, status=$status, submitted=$submitted, uploaded=$uploaded, verificationId=$verificationId, withdrawalsBlocked=$withdrawalsBlocked, withdrawalsBlockedReason=$withdrawalsBlockedReason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
    }
    if (this.documentType != null) {
      json[r'document_type'] = this.documentType;
    } else {
      json[r'document_type'] = null;
    }
    json[r'livemode'] = this.livemode;
    json[r'merchant_status'] = this.merchantStatus;
    if (this.reasonCode != null) {
      json[r'reason_code'] = this.reasonCode;
    } else {
      json[r'reason_code'] = null;
    }
    if (this.reviewEta != null) {
      json[r'review_eta'] = this.reviewEta!.toUtc().toIso8601String();
    } else {
      json[r'review_eta'] = null;
    }
    json[r'status'] = this.status;
    json[r'submitted'] = this.submitted;
    json[r'uploaded'] = this.uploaded;
    if (this.verificationId != null) {
      json[r'verification_id'] = this.verificationId;
    } else {
      json[r'verification_id'] = null;
    }
    json[r'withdrawals_blocked'] = this.withdrawalsBlocked;
    if (this.withdrawalsBlockedReason != null) {
      json[r'withdrawals_blocked_reason'] = this.withdrawalsBlockedReason;
    } else {
      json[r'withdrawals_blocked_reason'] = null;
    }
    return json;
  }

  /// Returns a new [KycStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KycStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'livemode'),
            'Required key "KycStatus[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "KycStatus[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'merchant_status'),
            'Required key "KycStatus[merchant_status]" is missing from JSON.');
        assert(json[r'merchant_status'] != null,
            'Required key "KycStatus[merchant_status]" has a null value in JSON.');
        assert(json.containsKey(r'status'),
            'Required key "KycStatus[status]" is missing from JSON.');
        assert(json[r'status'] != null,
            'Required key "KycStatus[status]" has a null value in JSON.');
        assert(json.containsKey(r'submitted'),
            'Required key "KycStatus[submitted]" is missing from JSON.');
        assert(json[r'submitted'] != null,
            'Required key "KycStatus[submitted]" has a null value in JSON.');
        assert(json.containsKey(r'uploaded'),
            'Required key "KycStatus[uploaded]" is missing from JSON.');
        assert(json[r'uploaded'] != null,
            'Required key "KycStatus[uploaded]" has a null value in JSON.');
        assert(json.containsKey(r'withdrawals_blocked'),
            'Required key "KycStatus[withdrawals_blocked]" is missing from JSON.');
        assert(json[r'withdrawals_blocked'] != null,
            'Required key "KycStatus[withdrawals_blocked]" has a null value in JSON.');
        return true;
      }());

      return KycStatus(
        country: mapValueOfType<String>(json, r'country'),
        documentType: mapValueOfType<String>(json, r'document_type'),
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        merchantStatus:
            KycStatusMerchantStatusEnum.fromJson(json[r'merchant_status'])!,
        reasonCode: mapValueOfType<String>(json, r'reason_code'),
        reviewEta: mapDateTime(json, r'review_eta', r''),
        status: KycStatusStatusEnum.fromJson(json[r'status'])!,
        submitted: mapValueOfType<bool>(json, r'submitted')!,
        uploaded: json[r'uploaded'] is Iterable
            ? (json[r'uploaded'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        verificationId: mapValueOfType<String>(json, r'verification_id'),
        withdrawalsBlocked: mapValueOfType<bool>(json, r'withdrawals_blocked')!,
        withdrawalsBlockedReason:
            mapValueOfType<String>(json, r'withdrawals_blocked_reason'),
      );
    }
    return null;
  }

  static List<KycStatus> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <KycStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KycStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KycStatus> mapFromJson(dynamic json) {
    final map = <String, KycStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KycStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KycStatus-objects as value to a dart map
  static Map<String, List<KycStatus>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<KycStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KycStatus.listFromJson(
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
    'merchant_status',
    'status',
    'submitted',
    'uploaded',
    'withdrawals_blocked',
  };
}

enum KycStatusMerchantStatusEnum {
  pending._(r'pending'),
  active._(r'active'),
  suspended._(r'suspended'),
  closed._(r'closed'),
  ;

  /// Instantiate a new enum with the provided value.
  const KycStatusMerchantStatusEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [KycStatusMerchantStatusEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static KycStatusMerchantStatusEnum? fromJson(dynamic value) =>
      KycStatusMerchantStatusEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [KycStatusMerchantStatusEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<KycStatusMerchantStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <KycStatusMerchantStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KycStatusMerchantStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [KycStatusMerchantStatusEnum] to String,
/// and [decode] dynamic data back to [KycStatusMerchantStatusEnum].
class KycStatusMerchantStatusEnumTypeTransformer {
  factory KycStatusMerchantStatusEnumTypeTransformer() =>
      _instance ??= const KycStatusMerchantStatusEnumTypeTransformer._();

  const KycStatusMerchantStatusEnumTypeTransformer._();

  String encode(KycStatusMerchantStatusEnum data) => data._value;

  /// Returns the instance of [KycStatusMerchantStatusEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  KycStatusMerchantStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is KycStatusMerchantStatusEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'pending':
          return KycStatusMerchantStatusEnum.pending;
        case r'active':
          return KycStatusMerchantStatusEnum.active;
        case r'suspended':
          return KycStatusMerchantStatusEnum.suspended;
        case r'closed':
          return KycStatusMerchantStatusEnum.closed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static KycStatusMerchantStatusEnumTypeTransformer? _instance;
}

enum KycStatusStatusEnum {
  notStarted._(r'not_started'),
  pending._(r'pending'),
  verified._(r'verified'),
  rejected._(r'rejected'),
  ;

  /// Instantiate a new enum with the provided value.
  const KycStatusStatusEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [KycStatusStatusEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static KycStatusStatusEnum? fromJson(dynamic value) =>
      KycStatusStatusEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [KycStatusStatusEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<KycStatusStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <KycStatusStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KycStatusStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [KycStatusStatusEnum] to String,
/// and [decode] dynamic data back to [KycStatusStatusEnum].
class KycStatusStatusEnumTypeTransformer {
  factory KycStatusStatusEnumTypeTransformer() =>
      _instance ??= const KycStatusStatusEnumTypeTransformer._();

  const KycStatusStatusEnumTypeTransformer._();

  String encode(KycStatusStatusEnum data) => data._value;

  /// Returns the instance of [KycStatusStatusEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  KycStatusStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is KycStatusStatusEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'not_started':
          return KycStatusStatusEnum.notStarted;
        case r'pending':
          return KycStatusStatusEnum.pending;
        case r'verified':
          return KycStatusStatusEnum.verified;
        case r'rejected':
          return KycStatusStatusEnum.rejected;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static KycStatusStatusEnumTypeTransformer? _instance;
}
