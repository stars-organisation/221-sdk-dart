//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Health {
  /// Returns a new [Health] instance.
  Health({
    required this.controlCenterUrl,
    required this.database,
    required this.kycUrl,
    this.payClientId,
    this.payments,
    this.social = const [],
    required this.status,
  });

  /// Tableau de bord des paiements (vide s'il n'est pas configuré).
  String controlCenterUrl;

  bool database;

  /// Adresse publique de kyc-core que la page de capture sur téléphone appelle (vide si non configurée).
  String kycUrl;

  /// Obsolète, toujours absent : le fournisseur OIDC de 221 est supprimé.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? payClientId;

  /// 221 Pay : live si le mode live répond, sinon test, sinon off ; chaque requête choisit son mode (clé API ou X-221-Mode).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PaymentsHealth? payments;

  /// Fournisseurs de connexion configurés ; le hub désactive les autres boutons.
  List<String>? social;

  String status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Health &&
          other.controlCenterUrl == controlCenterUrl &&
          other.database == database &&
          other.kycUrl == kycUrl &&
          other.payClientId == payClientId &&
          other.payments == payments &&
          _deepEquality.equals(other.social, social) &&
          other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (controlCenterUrl.hashCode) +
      (database.hashCode) +
      (kycUrl.hashCode) +
      (payClientId == null ? 0 : payClientId!.hashCode) +
      (payments == null ? 0 : payments!.hashCode) +
      (social == null ? 0 : social!.hashCode) +
      (status.hashCode);

  @override
  String toString() =>
      'Health[controlCenterUrl=$controlCenterUrl, database=$database, kycUrl=$kycUrl, payClientId=$payClientId, payments=$payments, social=$social, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'control_center_url'] = this.controlCenterUrl;
    json[r'database'] = this.database;
    json[r'kyc_url'] = this.kycUrl;
    if (this.payClientId != null) {
      json[r'pay_client_id'] = this.payClientId;
    } else {
      json[r'pay_client_id'] = null;
    }
    if (this.payments != null) {
      json[r'payments'] = this.payments;
    } else {
      json[r'payments'] = null;
    }
    if (this.social != null) {
      json[r'social'] = this.social;
    } else {
      json[r'social'] = null;
    }
    json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [Health] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Health? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'control_center_url'),
            'Required key "Health[control_center_url]" is missing from JSON.');
        assert(json[r'control_center_url'] != null,
            'Required key "Health[control_center_url]" has a null value in JSON.');
        assert(json.containsKey(r'database'),
            'Required key "Health[database]" is missing from JSON.');
        assert(json[r'database'] != null,
            'Required key "Health[database]" has a null value in JSON.');
        assert(json.containsKey(r'kyc_url'),
            'Required key "Health[kyc_url]" is missing from JSON.');
        assert(json[r'kyc_url'] != null,
            'Required key "Health[kyc_url]" has a null value in JSON.');
        assert(json.containsKey(r'status'),
            'Required key "Health[status]" is missing from JSON.');
        assert(json[r'status'] != null,
            'Required key "Health[status]" has a null value in JSON.');
        return true;
      }());

      return Health(
        controlCenterUrl: mapValueOfType<String>(json, r'control_center_url')!,
        database: mapValueOfType<bool>(json, r'database')!,
        kycUrl: mapValueOfType<String>(json, r'kyc_url')!,
        payClientId: mapValueOfType<String>(json, r'pay_client_id'),
        payments: PaymentsHealth.fromJson(json[r'payments']),
        social: json[r'social'] is Iterable
            ? (json[r'social'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        status: mapValueOfType<String>(json, r'status')!,
      );
    }
    return null;
  }

  static List<Health> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Health>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Health.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Health> mapFromJson(dynamic json) {
    final map = <String, Health>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Health.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Health-objects as value to a dart map
  static Map<String, List<Health>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Health>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Health.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'control_center_url',
    'database',
    'kyc_url',
    'status',
  };
}
