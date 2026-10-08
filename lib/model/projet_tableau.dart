//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjetTableau {
  /// Returns a new [ProjetTableau] instance.
  ProjetTableau({
    this.calls = const [],
    required this.createdAt,
    required this.id,
    this.keys = const [],
    required this.liveEnabled,
    required this.name,
    this.paymentsCalls,
    required this.quota,
    required this.slug,
    this.usage = const [],
    required this.webhookSecret,
    this.webhooks = const [],
  });

  List<AppelJournal>? calls;

  DateTime createdAt;

  String id;

  List<CleApi>? keys;

  /// Mode live activé : les clés live peuvent être créées.
  bool liveEnabled;

  String name;

  /// Appels à 221 Pay du projet : aujourd'hui, 14 derniers jours (UTC) et erreurs du jour.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PaymentsCalls? paymentsCalls;

  Quota quota;

  String slug;

  List<Consommation>? usage;

  String webhookSecret;

  List<Abonnement>? webhooks;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjetTableau &&
          _deepEquality.equals(other.calls, calls) &&
          other.createdAt == createdAt &&
          other.id == id &&
          _deepEquality.equals(other.keys, keys) &&
          other.liveEnabled == liveEnabled &&
          other.name == name &&
          other.paymentsCalls == paymentsCalls &&
          other.quota == quota &&
          other.slug == slug &&
          _deepEquality.equals(other.usage, usage) &&
          other.webhookSecret == webhookSecret &&
          _deepEquality.equals(other.webhooks, webhooks);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (calls == null ? 0 : calls!.hashCode) +
      (createdAt.hashCode) +
      (id.hashCode) +
      (keys == null ? 0 : keys!.hashCode) +
      (liveEnabled.hashCode) +
      (name.hashCode) +
      (paymentsCalls == null ? 0 : paymentsCalls!.hashCode) +
      (quota.hashCode) +
      (slug.hashCode) +
      (usage == null ? 0 : usage!.hashCode) +
      (webhookSecret.hashCode) +
      (webhooks == null ? 0 : webhooks!.hashCode);

  @override
  String toString() =>
      'ProjetTableau[calls=$calls, createdAt=$createdAt, id=$id, keys=$keys, liveEnabled=$liveEnabled, name=$name, paymentsCalls=$paymentsCalls, quota=$quota, slug=$slug, usage=$usage, webhookSecret=$webhookSecret, webhooks=$webhooks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.calls != null) {
      json[r'calls'] = this.calls;
    } else {
      json[r'calls'] = null;
    }
    json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    json[r'id'] = this.id;
    if (this.keys != null) {
      json[r'keys'] = this.keys;
    } else {
      json[r'keys'] = null;
    }
    json[r'live_enabled'] = this.liveEnabled;
    json[r'name'] = this.name;
    if (this.paymentsCalls != null) {
      json[r'payments_calls'] = this.paymentsCalls;
    } else {
      json[r'payments_calls'] = null;
    }
    json[r'quota'] = this.quota;
    json[r'slug'] = this.slug;
    if (this.usage != null) {
      json[r'usage'] = this.usage;
    } else {
      json[r'usage'] = null;
    }
    json[r'webhook_secret'] = this.webhookSecret;
    if (this.webhooks != null) {
      json[r'webhooks'] = this.webhooks;
    } else {
      json[r'webhooks'] = null;
    }
    return json;
  }

  /// Returns a new [ProjetTableau] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjetTableau? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'created_at'),
            'Required key "ProjetTableau[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null,
            'Required key "ProjetTableau[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'id'),
            'Required key "ProjetTableau[id]" is missing from JSON.');
        assert(json[r'id'] != null,
            'Required key "ProjetTableau[id]" has a null value in JSON.');
        assert(json.containsKey(r'live_enabled'),
            'Required key "ProjetTableau[live_enabled]" is missing from JSON.');
        assert(json[r'live_enabled'] != null,
            'Required key "ProjetTableau[live_enabled]" has a null value in JSON.');
        assert(json.containsKey(r'name'),
            'Required key "ProjetTableau[name]" is missing from JSON.');
        assert(json[r'name'] != null,
            'Required key "ProjetTableau[name]" has a null value in JSON.');
        assert(json.containsKey(r'quota'),
            'Required key "ProjetTableau[quota]" is missing from JSON.');
        assert(json[r'quota'] != null,
            'Required key "ProjetTableau[quota]" has a null value in JSON.');
        assert(json.containsKey(r'slug'),
            'Required key "ProjetTableau[slug]" is missing from JSON.');
        assert(json[r'slug'] != null,
            'Required key "ProjetTableau[slug]" has a null value in JSON.');
        assert(json.containsKey(r'webhook_secret'),
            'Required key "ProjetTableau[webhook_secret]" is missing from JSON.');
        assert(json[r'webhook_secret'] != null,
            'Required key "ProjetTableau[webhook_secret]" has a null value in JSON.');
        return true;
      }());

      return ProjetTableau(
        calls: AppelJournal.listFromJson(json[r'calls']),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        id: mapValueOfType<String>(json, r'id')!,
        keys: CleApi.listFromJson(json[r'keys']),
        liveEnabled: mapValueOfType<bool>(json, r'live_enabled')!,
        name: mapValueOfType<String>(json, r'name')!,
        paymentsCalls: PaymentsCalls.fromJson(json[r'payments_calls']),
        quota: Quota.fromJson(json[r'quota'])!,
        slug: mapValueOfType<String>(json, r'slug')!,
        usage: Consommation.listFromJson(json[r'usage']),
        webhookSecret: mapValueOfType<String>(json, r'webhook_secret')!,
        webhooks: Abonnement.listFromJson(json[r'webhooks']),
      );
    }
    return null;
  }

  static List<ProjetTableau> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ProjetTableau>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjetTableau.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjetTableau> mapFromJson(dynamic json) {
    final map = <String, ProjetTableau>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjetTableau.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjetTableau-objects as value to a dart map
  static Map<String, List<ProjetTableau>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ProjetTableau>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjetTableau.listFromJson(
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
    'id',
    'live_enabled',
    'name',
    'quota',
    'slug',
    'webhook_secret',
  };
}
