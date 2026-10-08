//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Membres {
  /// Returns a new [Membres] instance.
  Membres({
    this.invitations = const [],
    this.members = const [],
  });

  List<Invitation>? invitations;

  List<Membre>? members;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Membres &&
    _deepEquality.equals(other.invitations, invitations) &&
    _deepEquality.equals(other.members, members);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (invitations == null ? 0 : invitations!.hashCode) +
    (members == null ? 0 : members!.hashCode);

  @override
  String toString() => 'Membres[invitations=$invitations, members=$members]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.invitations != null) {
      json[r'invitations'] = this.invitations;
    } else {
      json[r'invitations'] = null;
    }
    if (this.members != null) {
      json[r'members'] = this.members;
    } else {
      json[r'members'] = null;
    }
    return json;
  }

  /// Returns a new [Membres] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Membres? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return Membres(
        invitations: Invitation.listFromJson(json[r'invitations']),
        members: Membre.listFromJson(json[r'members']),
      );
    }
    return null;
  }

  static List<Membres> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Membres>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Membres.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Membres> mapFromJson(dynamic json) {
    final map = <String, Membres>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Membres.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Membres-objects as value to a dart map
  static Map<String, List<Membres>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Membres>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Membres.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

