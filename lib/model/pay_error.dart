//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PayError {
  /// Returns a new [PayError] instance.
  PayError({
    this.attemptsLeft,
    required this.code,
    this.fields = const {},
    this.gatewayMode,
    this.kycStatus,
    this.limit,
    this.limitType,
    this.maxAmount,
    this.merchantStatus,
    required this.message,
    this.minAmount,
    this.missing = const [],
    this.remaining,
    required this.requestId,
  });

  /// INVALID_CODE : essais restants pour ce code.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? attemptsLeft;

  /// Code applicatif stable. La liste des codes possibles est donnée par chaque réponse d'erreur.
  PayErrorCodeEnum code;

  /// Un message par champ refusé du corps de la requête.
  Map<String, String> fields;

  /// PAYMENTS_UNAVAILABLE : raison pour le mode demandé (not_wired : pas de fournisseur branché).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gatewayMode;

  /// KYC_REQUIRED : état de la vérification d'identité.
  PayErrorKycStatusEnum? kycStatus;

  /// Valeur de la limite : en XOF, ou en nombre de retraits pour daily_count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// MERCHANT_LIMIT_EXCEEDED (daily, monthly) ou WITHDRAWAL_LIMIT_EXCEEDED (les autres) : limite atteinte.
  PayErrorLimitTypeEnum? limitType;

  /// BELOW_MINIMUM, ABOVE_MAXIMUM : montant maximum d'un virement bancaire, en XOF.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxAmount;

  /// MERCHANT_SUSPENDED : état du compte.
  PayErrorMerchantStatusEnum? merchantStatus;

  /// Message lisible, en français ou en anglais selon ?lang ou Accept-Language.
  String message;

  /// BELOW_MINIMUM, ABOVE_MAXIMUM : montant minimum d'un virement bancaire, en XOF.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? minAmount;

  /// MISSING_CAPTURES : photos encore à envoyer.
  List<String> missing;

  /// MONTHLY_LIMIT_REACHED : virements bancaires encore possibles ce mois, en XOF.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? remaining;

  /// Identifiant de la requête, aussi dans l'en-tête X-Request-Id : à donner au support.
  String requestId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PayError &&
          other.attemptsLeft == attemptsLeft &&
          other.code == code &&
          _deepEquality.equals(other.fields, fields) &&
          other.gatewayMode == gatewayMode &&
          other.kycStatus == kycStatus &&
          other.limit == limit &&
          other.limitType == limitType &&
          other.maxAmount == maxAmount &&
          other.merchantStatus == merchantStatus &&
          other.message == message &&
          other.minAmount == minAmount &&
          _deepEquality.equals(other.missing, missing) &&
          other.remaining == remaining &&
          other.requestId == requestId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (attemptsLeft == null ? 0 : attemptsLeft!.hashCode) +
      (code.hashCode) +
      (fields.hashCode) +
      (gatewayMode == null ? 0 : gatewayMode!.hashCode) +
      (kycStatus == null ? 0 : kycStatus!.hashCode) +
      (limit == null ? 0 : limit!.hashCode) +
      (limitType == null ? 0 : limitType!.hashCode) +
      (maxAmount == null ? 0 : maxAmount!.hashCode) +
      (merchantStatus == null ? 0 : merchantStatus!.hashCode) +
      (message.hashCode) +
      (minAmount == null ? 0 : minAmount!.hashCode) +
      (missing.hashCode) +
      (remaining == null ? 0 : remaining!.hashCode) +
      (requestId.hashCode);

  @override
  String toString() =>
      'PayError[attemptsLeft=$attemptsLeft, code=$code, fields=$fields, gatewayMode=$gatewayMode, kycStatus=$kycStatus, limit=$limit, limitType=$limitType, maxAmount=$maxAmount, merchantStatus=$merchantStatus, message=$message, minAmount=$minAmount, missing=$missing, remaining=$remaining, requestId=$requestId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.attemptsLeft != null) {
      json[r'attempts_left'] = this.attemptsLeft;
    } else {
      json[r'attempts_left'] = null;
    }
    json[r'code'] = this.code;
    json[r'fields'] = this.fields;
    if (this.gatewayMode != null) {
      json[r'gateway_mode'] = this.gatewayMode;
    } else {
      json[r'gateway_mode'] = null;
    }
    if (this.kycStatus != null) {
      json[r'kyc_status'] = this.kycStatus;
    } else {
      json[r'kyc_status'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.limitType != null) {
      json[r'limit_type'] = this.limitType;
    } else {
      json[r'limit_type'] = null;
    }
    if (this.maxAmount != null) {
      json[r'max_amount'] = this.maxAmount;
    } else {
      json[r'max_amount'] = null;
    }
    if (this.merchantStatus != null) {
      json[r'merchant_status'] = this.merchantStatus;
    } else {
      json[r'merchant_status'] = null;
    }
    json[r'message'] = this.message;
    if (this.minAmount != null) {
      json[r'min_amount'] = this.minAmount;
    } else {
      json[r'min_amount'] = null;
    }
    json[r'missing'] = this.missing;
    if (this.remaining != null) {
      json[r'remaining'] = this.remaining;
    } else {
      json[r'remaining'] = null;
    }
    json[r'request_id'] = this.requestId;
    return json;
  }

  /// Returns a new [PayError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PayError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'code'),
            'Required key "PayError[code]" is missing from JSON.');
        assert(json[r'code'] != null,
            'Required key "PayError[code]" has a null value in JSON.');
        assert(json.containsKey(r'message'),
            'Required key "PayError[message]" is missing from JSON.');
        assert(json[r'message'] != null,
            'Required key "PayError[message]" has a null value in JSON.');
        assert(json.containsKey(r'request_id'),
            'Required key "PayError[request_id]" is missing from JSON.');
        assert(json[r'request_id'] != null,
            'Required key "PayError[request_id]" has a null value in JSON.');
        return true;
      }());

      return PayError(
        attemptsLeft: mapValueOfType<int>(json, r'attempts_left'),
        code: PayErrorCodeEnum.fromJson(json[r'code'])!,
        fields: mapCastOfType<String, String>(json, r'fields') ?? const {},
        gatewayMode: mapValueOfType<String>(json, r'gateway_mode'),
        kycStatus: PayErrorKycStatusEnum.fromJson(json[r'kyc_status']),
        limit: mapValueOfType<int>(json, r'limit'),
        limitType: PayErrorLimitTypeEnum.fromJson(json[r'limit_type']),
        maxAmount: mapValueOfType<int>(json, r'max_amount'),
        merchantStatus:
            PayErrorMerchantStatusEnum.fromJson(json[r'merchant_status']),
        message: mapValueOfType<String>(json, r'message')!,
        minAmount: mapValueOfType<int>(json, r'min_amount'),
        missing: json[r'missing'] is Iterable
            ? (json[r'missing'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        remaining: mapValueOfType<int>(json, r'remaining'),
        requestId: mapValueOfType<String>(json, r'request_id')!,
      );
    }
    return null;
  }

  static List<PayError> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PayError> mapFromJson(dynamic json) {
    final map = <String, PayError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PayError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PayError-objects as value to a dart map
  static Map<String, List<PayError>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PayError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PayError.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'code',
    'message',
    'request_id',
  };
}

/// Code applicatif stable. La liste des codes possibles est donnée par chaque réponse d'erreur.
enum PayErrorCodeEnum {
  ABOVE_MAXIMUM._(r'ABOVE_MAXIMUM'),
  BELOW_MINIMUM._(r'BELOW_MINIMUM'),
  CHANNEL_UNAVAILABLE._(r'CHANNEL_UNAVAILABLE'),
  CODE_EXPIRED._(r'CODE_EXPIRED'),
  DESTINATION_NOT_VERIFIED._(r'DESTINATION_NOT_VERIFIED'),
  DUPLICATE_MERCHANT_REFERENCE._(r'DUPLICATE_MERCHANT_REFERENCE'),
  FEATURE_DISABLED._(r'FEATURE_DISABLED'),
  FORBIDDEN._(r'FORBIDDEN'),
  IDEMPOTENCY_CONFLICT._(r'IDEMPOTENCY_CONFLICT'),
  INSUFFICIENT_FUNDS._(r'INSUFFICIENT_FUNDS'),
  INTERNAL_ERROR._(r'INTERNAL_ERROR'),
  INVALID_API_KEY._(r'INVALID_API_KEY'),
  INVALID_CODE._(r'INVALID_CODE'),
  INVALID_REQUEST._(r'INVALID_REQUEST'),
  INVALID_STATE._(r'INVALID_STATE'),
  KYC_ALREADY_SUBMITTED._(r'KYC_ALREADY_SUBMITTED'),
  KYC_REQUIRED._(r'KYC_REQUIRED'),
  LIVE_NOT_ENABLED._(r'LIVE_NOT_ENABLED'),
  MERCHANT_LIMIT_EXCEEDED._(r'MERCHANT_LIMIT_EXCEEDED'),
  MERCHANT_SUSPENDED._(r'MERCHANT_SUSPENDED'),
  MISSING_CAPTURES._(r'MISSING_CAPTURES'),
  MISSING_SCOPE._(r'MISSING_SCOPE'),
  MONTHLY_LIMIT_REACHED._(r'MONTHLY_LIMIT_REACHED'),
  NOT_CONFIGURED._(r'NOT_CONFIGURED'),
  NOT_FOUND._(r'NOT_FOUND'),
  OFFER_CODE_TAKEN._(r'OFFER_CODE_TAKEN'),
  OFFER_INVALID._(r'OFFER_INVALID'),
  PAYMENTS_UNAVAILABLE._(r'PAYMENTS_UNAVAILABLE'),
  PROJECT_REQUIRED._(r'PROJECT_REQUIRED'),
  QUOTE_EXPIRED._(r'QUOTE_EXPIRED'),
  QUOTE_INVALID._(r'QUOTE_INVALID'),
  RATE_LIMITED._(r'RATE_LIMITED'),
  REQUEST_TOO_LARGE._(r'REQUEST_TOO_LARGE'),
  STORAGE_FULL._(r'STORAGE_FULL'),
  TOO_MANY_ATTEMPTS._(r'TOO_MANY_ATTEMPTS'),
  UNAUTHENTICATED._(r'UNAUTHENTICATED'),
  WITHDRAWAL_LIMIT_EXCEEDED._(r'WITHDRAWAL_LIMIT_EXCEEDED'),
  ;

  /// Instantiate a new enum with the provided value.
  const PayErrorCodeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PayErrorCodeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PayErrorCodeEnum? fromJson(dynamic value) =>
      PayErrorCodeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PayErrorCodeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PayErrorCodeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayErrorCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayErrorCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PayErrorCodeEnum] to String,
/// and [decode] dynamic data back to [PayErrorCodeEnum].
class PayErrorCodeEnumTypeTransformer {
  factory PayErrorCodeEnumTypeTransformer() =>
      _instance ??= const PayErrorCodeEnumTypeTransformer._();

  const PayErrorCodeEnumTypeTransformer._();

  String encode(PayErrorCodeEnum data) => data._value;

  /// Returns the instance of [PayErrorCodeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PayErrorCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PayErrorCodeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'ABOVE_MAXIMUM':
          return PayErrorCodeEnum.ABOVE_MAXIMUM;
        case r'BELOW_MINIMUM':
          return PayErrorCodeEnum.BELOW_MINIMUM;
        case r'CHANNEL_UNAVAILABLE':
          return PayErrorCodeEnum.CHANNEL_UNAVAILABLE;
        case r'CODE_EXPIRED':
          return PayErrorCodeEnum.CODE_EXPIRED;
        case r'DESTINATION_NOT_VERIFIED':
          return PayErrorCodeEnum.DESTINATION_NOT_VERIFIED;
        case r'DUPLICATE_MERCHANT_REFERENCE':
          return PayErrorCodeEnum.DUPLICATE_MERCHANT_REFERENCE;
        case r'FEATURE_DISABLED':
          return PayErrorCodeEnum.FEATURE_DISABLED;
        case r'FORBIDDEN':
          return PayErrorCodeEnum.FORBIDDEN;
        case r'IDEMPOTENCY_CONFLICT':
          return PayErrorCodeEnum.IDEMPOTENCY_CONFLICT;
        case r'INSUFFICIENT_FUNDS':
          return PayErrorCodeEnum.INSUFFICIENT_FUNDS;
        case r'INTERNAL_ERROR':
          return PayErrorCodeEnum.INTERNAL_ERROR;
        case r'INVALID_API_KEY':
          return PayErrorCodeEnum.INVALID_API_KEY;
        case r'INVALID_CODE':
          return PayErrorCodeEnum.INVALID_CODE;
        case r'INVALID_REQUEST':
          return PayErrorCodeEnum.INVALID_REQUEST;
        case r'INVALID_STATE':
          return PayErrorCodeEnum.INVALID_STATE;
        case r'KYC_ALREADY_SUBMITTED':
          return PayErrorCodeEnum.KYC_ALREADY_SUBMITTED;
        case r'KYC_REQUIRED':
          return PayErrorCodeEnum.KYC_REQUIRED;
        case r'LIVE_NOT_ENABLED':
          return PayErrorCodeEnum.LIVE_NOT_ENABLED;
        case r'MERCHANT_LIMIT_EXCEEDED':
          return PayErrorCodeEnum.MERCHANT_LIMIT_EXCEEDED;
        case r'MERCHANT_SUSPENDED':
          return PayErrorCodeEnum.MERCHANT_SUSPENDED;
        case r'MISSING_CAPTURES':
          return PayErrorCodeEnum.MISSING_CAPTURES;
        case r'MISSING_SCOPE':
          return PayErrorCodeEnum.MISSING_SCOPE;
        case r'MONTHLY_LIMIT_REACHED':
          return PayErrorCodeEnum.MONTHLY_LIMIT_REACHED;
        case r'NOT_CONFIGURED':
          return PayErrorCodeEnum.NOT_CONFIGURED;
        case r'NOT_FOUND':
          return PayErrorCodeEnum.NOT_FOUND;
        case r'OFFER_CODE_TAKEN':
          return PayErrorCodeEnum.OFFER_CODE_TAKEN;
        case r'OFFER_INVALID':
          return PayErrorCodeEnum.OFFER_INVALID;
        case r'PAYMENTS_UNAVAILABLE':
          return PayErrorCodeEnum.PAYMENTS_UNAVAILABLE;
        case r'PROJECT_REQUIRED':
          return PayErrorCodeEnum.PROJECT_REQUIRED;
        case r'QUOTE_EXPIRED':
          return PayErrorCodeEnum.QUOTE_EXPIRED;
        case r'QUOTE_INVALID':
          return PayErrorCodeEnum.QUOTE_INVALID;
        case r'RATE_LIMITED':
          return PayErrorCodeEnum.RATE_LIMITED;
        case r'REQUEST_TOO_LARGE':
          return PayErrorCodeEnum.REQUEST_TOO_LARGE;
        case r'STORAGE_FULL':
          return PayErrorCodeEnum.STORAGE_FULL;
        case r'TOO_MANY_ATTEMPTS':
          return PayErrorCodeEnum.TOO_MANY_ATTEMPTS;
        case r'UNAUTHENTICATED':
          return PayErrorCodeEnum.UNAUTHENTICATED;
        case r'WITHDRAWAL_LIMIT_EXCEEDED':
          return PayErrorCodeEnum.WITHDRAWAL_LIMIT_EXCEEDED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PayErrorCodeEnumTypeTransformer? _instance;
}

/// KYC_REQUIRED : état de la vérification d'identité.
enum PayErrorKycStatusEnum {
  notStarted._(r'not_started'),
  pending._(r'pending'),
  rejected._(r'rejected'),
  ;

  /// Instantiate a new enum with the provided value.
  const PayErrorKycStatusEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PayErrorKycStatusEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PayErrorKycStatusEnum? fromJson(dynamic value) =>
      PayErrorKycStatusEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PayErrorKycStatusEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PayErrorKycStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayErrorKycStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayErrorKycStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PayErrorKycStatusEnum] to String,
/// and [decode] dynamic data back to [PayErrorKycStatusEnum].
class PayErrorKycStatusEnumTypeTransformer {
  factory PayErrorKycStatusEnumTypeTransformer() =>
      _instance ??= const PayErrorKycStatusEnumTypeTransformer._();

  const PayErrorKycStatusEnumTypeTransformer._();

  String encode(PayErrorKycStatusEnum data) => data._value;

  /// Returns the instance of [PayErrorKycStatusEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PayErrorKycStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PayErrorKycStatusEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'not_started':
          return PayErrorKycStatusEnum.notStarted;
        case r'pending':
          return PayErrorKycStatusEnum.pending;
        case r'rejected':
          return PayErrorKycStatusEnum.rejected;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PayErrorKycStatusEnumTypeTransformer? _instance;
}

/// MERCHANT_LIMIT_EXCEEDED (daily, monthly) ou WITHDRAWAL_LIMIT_EXCEEDED (les autres) : limite atteinte.
enum PayErrorLimitTypeEnum {
  daily._(r'daily'),
  monthly._(r'monthly'),
  perWithdrawal._(r'per_withdrawal'),
  dailyCount._(r'daily_count'),
  dailyAmount._(r'daily_amount'),
  monthlyAmount._(r'monthly_amount'),
  ;

  /// Instantiate a new enum with the provided value.
  const PayErrorLimitTypeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PayErrorLimitTypeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PayErrorLimitTypeEnum? fromJson(dynamic value) =>
      PayErrorLimitTypeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PayErrorLimitTypeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PayErrorLimitTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayErrorLimitTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayErrorLimitTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PayErrorLimitTypeEnum] to String,
/// and [decode] dynamic data back to [PayErrorLimitTypeEnum].
class PayErrorLimitTypeEnumTypeTransformer {
  factory PayErrorLimitTypeEnumTypeTransformer() =>
      _instance ??= const PayErrorLimitTypeEnumTypeTransformer._();

  const PayErrorLimitTypeEnumTypeTransformer._();

  String encode(PayErrorLimitTypeEnum data) => data._value;

  /// Returns the instance of [PayErrorLimitTypeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PayErrorLimitTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PayErrorLimitTypeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'daily':
          return PayErrorLimitTypeEnum.daily;
        case r'monthly':
          return PayErrorLimitTypeEnum.monthly;
        case r'per_withdrawal':
          return PayErrorLimitTypeEnum.perWithdrawal;
        case r'daily_count':
          return PayErrorLimitTypeEnum.dailyCount;
        case r'daily_amount':
          return PayErrorLimitTypeEnum.dailyAmount;
        case r'monthly_amount':
          return PayErrorLimitTypeEnum.monthlyAmount;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PayErrorLimitTypeEnumTypeTransformer? _instance;
}

/// MERCHANT_SUSPENDED : état du compte.
enum PayErrorMerchantStatusEnum {
  suspended._(r'suspended'),
  closed._(r'closed'),
  ;

  /// Instantiate a new enum with the provided value.
  const PayErrorMerchantStatusEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PayErrorMerchantStatusEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PayErrorMerchantStatusEnum? fromJson(dynamic value) =>
      PayErrorMerchantStatusEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PayErrorMerchantStatusEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PayErrorMerchantStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PayErrorMerchantStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayErrorMerchantStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PayErrorMerchantStatusEnum] to String,
/// and [decode] dynamic data back to [PayErrorMerchantStatusEnum].
class PayErrorMerchantStatusEnumTypeTransformer {
  factory PayErrorMerchantStatusEnumTypeTransformer() =>
      _instance ??= const PayErrorMerchantStatusEnumTypeTransformer._();

  const PayErrorMerchantStatusEnumTypeTransformer._();

  String encode(PayErrorMerchantStatusEnum data) => data._value;

  /// Returns the instance of [PayErrorMerchantStatusEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PayErrorMerchantStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is PayErrorMerchantStatusEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'suspended':
          return PayErrorMerchantStatusEnum.suspended;
        case r'closed':
          return PayErrorMerchantStatusEnum.closed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PayErrorMerchantStatusEnumTypeTransformer? _instance;
}
