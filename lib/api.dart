//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/adresses_api.dart';
part 'api/annuaire_api.dart';
part 'api/banques_api.dart';
part 'api/categories_api.dart';
part 'api/comptes_api.dart';
part 'api/default_api.dart';
part 'api/demandes_api.dart';
part 'api/demarches_api.dart';
part 'api/geographie_api.dart';
part 'api/jeux_api.dart';
part 'api/jours_feries_api.dart';
part 'api/modules_api.dart';
part 'api/moi_api.dart';
part 'api/monnaie_api.dart';
part 'api/operateurs_api.dart';
part 'api/payments_api.dart';
part 'api/secteurs_api.dart';
part 'api/signalements_api.dart';
part 'api/telechargements_api.dart';
part 'api/telephone_api.dart';
part 'api/webhooks_api.dart';

part 'model/abonnement.dart';
part 'model/accueil.dart';
part 'model/activation_live_body.dart';
part 'model/adhesion.dart';
part 'model/adresse_normalisee.dart';
part 'model/answer_input_body.dart';
part 'model/appel_journal.dart';
part 'model/cle_api.dart';
part 'model/cle_creee.dart';
part 'model/compteur.dart';
part 'model/compteurs.dart';
part 'model/conditions.dart';
part 'model/conditions_input_body.dart';
part 'model/consommation.dart';
part 'model/coordonnees.dart';
part 'model/delai.dart';
part 'model/delete_compte_body.dart';
part 'model/demande.dart';
part 'model/demande_input_body.dart';
part 'model/demande_liste.dart';
part 'model/distance.dart';
part 'model/error.dart';
part 'model/error_body.dart';
part 'model/extremite.dart';
part 'model/geocodage.dart';
part 'model/health.dart';
part 'model/invitation.dart';
part 'model/item_page.dart';
part 'model/jours_ouvres.dart';
part 'model/lieu.dart';
part 'model/lieu_detail.dart';
part 'model/lieu_page.dart';
part 'model/lieu_resume.dart';
part 'model/membre.dart';
part 'model/membres.dart';
part 'model/meta.dart';
part 'model/mode_live.dart';
part 'model/model_source.dart';
part 'model/montant.dart';
part 'model/nouveau_projet_body.dart';
part 'model/nouveau_role_body.dart';
part 'model/nouveau_webhook_body.dart';
part 'model/nouvelle_cle_body.dart';
part 'model/nouvelle_invitation_body.dart';
part 'model/operateur_telephone.dart';
part 'model/pagination.dart';
part 'model/payments_calls.dart';
part 'model/payments_calls_day.dart';
part 'model/payments_health.dart';
part 'model/projet.dart';
part 'model/projet_liste.dart';
part 'model/projet_tableau.dart';
part 'model/quota.dart';
part 'model/rattachement.dart';
part 'model/recognised.dart';
part 'model/renommer_projet_body.dart';
part 'model/report_input_body.dart';
part 'model/rotation_cle_body.dart';
part 'model/signalement.dart';
part 'model/suggestions.dart';
part 'model/suivi.dart';
part 'model/suivi_ligne.dart';
part 'model/suivi_liste.dart';
part 'model/telephone.dart';
part 'model/type_evenement.dart';
part 'model/webhook_events_body.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
