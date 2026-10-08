//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Dispute {
  /// Returns a new [Dispute] instance.
  Dispute({
    required this.amount,
    required this.challengeRequiredBy,
    required this.createdAt,
    required this.currency,
    this.evidence = const [],
    required this.id,
    required this.isAlreadyRefunded,
    required this.livemode,
    required this.paymentId,
    required this.projectId,
    required this.reason,
    required this.stage,
    required this.status,
    required this.updatedAt,
  });

  /// Montant en francs CFA entiers (XOF), écrit en chaîne de chiffres, sans espace ni décimale.
  String amount;

  /// Date limite pour contester.
  DateTime challengeRequiredBy;

  DateTime createdAt;

  DisputeCurrencyEnum currency;

  /// Pièces jointes ; absent des listes.
  List<DisputeEvidence> evidence;

  String id;

  bool isAlreadyRefunded;

  /// true : objet du mode live ; false : mode test.
  bool livemode;

  String paymentId;

  String projectId;

  DisputeReasonEnum reason;

  DisputeStageEnum stage;

  DisputeStatusEnum status;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Dispute &&
          other.amount == amount &&
          other.challengeRequiredBy == challengeRequiredBy &&
          other.createdAt == createdAt &&
          other.currency == currency &&
          _deepEquality.equals(other.evidence, evidence) &&
          other.id == id &&
          other.isAlreadyRefunded == isAlreadyRefunded &&
          other.livemode == livemode &&
          other.paymentId == paymentId &&
          other.projectId == projectId &&
          other.reason == reason &&
          other.stage == stage &&
          other.status == status &&
          other.updatedAt == updatedAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (amount.hashCode) +
      (challengeRequiredBy.hashCode) +
      (createdAt.hashCode) +
      (currency.hashCode) +
      (evidence.hashCode) +
      (id.hashCode) +
      (isAlreadyRefunded.hashCode) +
      (livemode.hashCode) +
      (paymentId.hashCode) +
      (projectId.hashCode) +
      (reason.hashCode) +
      (stage.hashCode) +
      (status.hashCode) +
      (updatedAt.hashCode);

  @override
  String toString() =>
      'Dispute[amount=$amount, challengeRequiredBy=$challengeRequiredBy, createdAt=$createdAt, currency=$currency, evidence=$evidence, id=$id, isAlreadyRefunded=$isAlreadyRefunded, livemode=$livemode, paymentId=$paymentId, projectId=$projectId, reason=$reason, stage=$stage, status=$status, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'amount'] = this.amount;
    json[r'challenge_required_by'] =
        this.challengeRequiredBy.toUtc().toIso8601String();
    json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    json[r'currency'] = this.currency;
    json[r'evidence'] = this.evidence;
    json[r'id'] = this.id;
    json[r'is_already_refunded'] = this.isAlreadyRefunded;
    json[r'livemode'] = this.livemode;
    json[r'payment_id'] = this.paymentId;
    json[r'project_id'] = this.projectId;
    json[r'reason'] = this.reason;
    json[r'stage'] = this.stage;
    json[r'status'] = this.status;
    json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Dispute] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Dispute? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'amount'),
            'Required key "Dispute[amount]" is missing from JSON.');
        assert(json[r'amount'] != null,
            'Required key "Dispute[amount]" has a null value in JSON.');
        assert(json.containsKey(r'challenge_required_by'),
            'Required key "Dispute[challenge_required_by]" is missing from JSON.');
        assert(json[r'challenge_required_by'] != null,
            'Required key "Dispute[challenge_required_by]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'),
            'Required key "Dispute[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null,
            'Required key "Dispute[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'currency'),
            'Required key "Dispute[currency]" is missing from JSON.');
        assert(json[r'currency'] != null,
            'Required key "Dispute[currency]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "Dispute[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "Dispute[id]" has a null value in JSON.');
        assert(json.containsKey(r'is_already_refunded'),
            'Required key "Dispute[is_already_refunded]" is missing from JSON.');
        assert(json[r'is_already_refunded'] != null,
            'Required key "Dispute[is_already_refunded]" has a null value in JSON.');
        assert(json.containsKey(r'livemode'),
            'Required key "Dispute[livemode]" is missing from JSON.');
        assert(json[r'livemode'] != null,
            'Required key "Dispute[livemode]" has a null value in JSON.');
        assert(json.containsKey(r'payment_id'),
            'Required key "Dispute[payment_id]" is missing from JSON.');
        assert(json[r'payment_id'] != null,
            'Required key "Dispute[payment_id]" has a null value in JSON.');
        assert(json.containsKey(r'project_id'),
            'Required key "Dispute[project_id]" is missing from JSON.');
        assert(json[r'project_id'] != null,
            'Required key "Dispute[project_id]" has a null value in JSON.');
        assert(json.containsKey(r'reason'),
            'Required key "Dispute[reason]" is missing from JSON.');
        assert(json[r'reason'] != null,
            'Required key "Dispute[reason]" has a null value in JSON.');
        assert(json.containsKey(r'stage'),
            'Required key "Dispute[stage]" is missing from JSON.');
        assert(json[r'stage'] != null,
            'Required key "Dispute[stage]" has a null value in JSON.');
        assert(json.containsKey(r'status'),
            'Required key "Dispute[status]" is missing from JSON.');
        assert(json[r'status'] != null,
            'Required key "Dispute[status]" has a null value in JSON.');
        assert(json.containsKey(r'updated_at'),
            'Required key "Dispute[updated_at]" is missing from JSON.');
        assert(json[r'updated_at'] != null,
            'Required key "Dispute[updated_at]" has a null value in JSON.');
        return true;
      }());

      return Dispute(
        amount: mapValueOfType<String>(json, r'amount')!,
        challengeRequiredBy: mapDateTime(json, r'challenge_required_by', r'')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        currency: DisputeCurrencyEnum.fromJson(json[r'currency'])!,
        evidence: DisputeEvidence.listFromJson(json[r'evidence']),
        id: mapValueOfType<String>(json, r'id')!,
        isAlreadyRefunded: mapValueOfType<bool>(json, r'is_already_refunded')!,
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        paymentId: mapValueOfType<String>(json, r'payment_id')!,
        projectId: mapValueOfType<String>(json, r'project_id')!,
        reason: DisputeReasonEnum.fromJson(json[r'reason'])!,
        stage: DisputeStageEnum.fromJson(json[r'stage'])!,
        status: DisputeStatusEnum.fromJson(json[r'status'])!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
      );
    }
    return null;
  }

  static List<Dispute> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Dispute>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Dispute.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Dispute> mapFromJson(dynamic json) {
    final map = <String, Dispute>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Dispute.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Dispute-objects as value to a dart map
  static Map<String, List<Dispute>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Dispute>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Dispute.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'amount',
    'challenge_required_by',
    'created_at',
    'currency',
    'id',
    'is_already_refunded',
    'livemode',
    'payment_id',
    'project_id',
    'reason',
    'stage',
    'status',
    'updated_at',
  };
}

enum DisputeCurrencyEnum {
  XOF._(r'XOF'),
  ;

  /// Instantiate a new enum with the provided value.
  const DisputeCurrencyEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [DisputeCurrencyEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static DisputeCurrencyEnum? fromJson(dynamic value) =>
      DisputeCurrencyEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [DisputeCurrencyEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<DisputeCurrencyEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DisputeCurrencyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DisputeCurrencyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DisputeCurrencyEnum] to String,
/// and [decode] dynamic data back to [DisputeCurrencyEnum].
class DisputeCurrencyEnumTypeTransformer {
  factory DisputeCurrencyEnumTypeTransformer() =>
      _instance ??= const DisputeCurrencyEnumTypeTransformer._();

  const DisputeCurrencyEnumTypeTransformer._();

  String encode(DisputeCurrencyEnum data) => data._value;

  /// Returns the instance of [DisputeCurrencyEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DisputeCurrencyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is DisputeCurrencyEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'XOF':
          return DisputeCurrencyEnum.XOF;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static DisputeCurrencyEnumTypeTransformer? _instance;
}

enum DisputeReasonEnum {
  notReceived._(r'not_received'),
  notAsDescribed._(r'not_as_described'),
  unauthorized._(r'unauthorized'),
  duplicate._(r'duplicate'),
  otherDocumented._(r'other_documented'),
  ;

  /// Instantiate a new enum with the provided value.
  const DisputeReasonEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [DisputeReasonEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static DisputeReasonEnum? fromJson(dynamic value) =>
      DisputeReasonEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [DisputeReasonEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<DisputeReasonEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DisputeReasonEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DisputeReasonEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DisputeReasonEnum] to String,
/// and [decode] dynamic data back to [DisputeReasonEnum].
class DisputeReasonEnumTypeTransformer {
  factory DisputeReasonEnumTypeTransformer() =>
      _instance ??= const DisputeReasonEnumTypeTransformer._();

  const DisputeReasonEnumTypeTransformer._();

  String encode(DisputeReasonEnum data) => data._value;

  /// Returns the instance of [DisputeReasonEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DisputeReasonEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is DisputeReasonEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'not_received':
          return DisputeReasonEnum.notReceived;
        case r'not_as_described':
          return DisputeReasonEnum.notAsDescribed;
        case r'unauthorized':
          return DisputeReasonEnum.unauthorized;
        case r'duplicate':
          return DisputeReasonEnum.duplicate;
        case r'other_documented':
          return DisputeReasonEnum.otherDocumented;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static DisputeReasonEnumTypeTransformer? _instance;
}

enum DisputeStageEnum {
  preDispute._(r'pre_dispute'),
  dispute._(r'dispute'),
  ;

  /// Instantiate a new enum with the provided value.
  const DisputeStageEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [DisputeStageEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static DisputeStageEnum? fromJson(dynamic value) =>
      DisputeStageEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [DisputeStageEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<DisputeStageEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DisputeStageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DisputeStageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DisputeStageEnum] to String,
/// and [decode] dynamic data back to [DisputeStageEnum].
class DisputeStageEnumTypeTransformer {
  factory DisputeStageEnumTypeTransformer() =>
      _instance ??= const DisputeStageEnumTypeTransformer._();

  const DisputeStageEnumTypeTransformer._();

  String encode(DisputeStageEnum data) => data._value;

  /// Returns the instance of [DisputeStageEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DisputeStageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is DisputeStageEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'pre_dispute':
          return DisputeStageEnum.preDispute;
        case r'dispute':
          return DisputeStageEnum.dispute;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static DisputeStageEnumTypeTransformer? _instance;
}

enum DisputeStatusEnum {
  opened._(r'opened'),
  underReview._(r'under_review'),
  challenged._(r'challenged'),
  accepted._(r'accepted'),
  won._(r'won'),
  lost._(r'lost'),
  ;

  /// Instantiate a new enum with the provided value.
  const DisputeStatusEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [DisputeStatusEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static DisputeStatusEnum? fromJson(dynamic value) =>
      DisputeStatusEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [DisputeStatusEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<DisputeStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DisputeStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DisputeStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DisputeStatusEnum] to String,
/// and [decode] dynamic data back to [DisputeStatusEnum].
class DisputeStatusEnumTypeTransformer {
  factory DisputeStatusEnumTypeTransformer() =>
      _instance ??= const DisputeStatusEnumTypeTransformer._();

  const DisputeStatusEnumTypeTransformer._();

  String encode(DisputeStatusEnum data) => data._value;

  /// Returns the instance of [DisputeStatusEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DisputeStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is DisputeStatusEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'opened':
          return DisputeStatusEnum.opened;
        case r'under_review':
          return DisputeStatusEnum.underReview;
        case r'challenged':
          return DisputeStatusEnum.challenged;
        case r'accepted':
          return DisputeStatusEnum.accepted;
        case r'won':
          return DisputeStatusEnum.won;
        case r'lost':
          return DisputeStatusEnum.lost;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static DisputeStatusEnumTypeTransformer? _instance;
}
