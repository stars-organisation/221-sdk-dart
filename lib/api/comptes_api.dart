//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ComptesApi {
  ComptesApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Accepter une invitation avec le compte connecté (même adresse e-mail)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  Future<Response> acceptInvitationWithHttpInfo(
    String token, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path =
        r'/v1/invitations/{token}/accepter'.replaceAll('{token}', token);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Accepter une invitation avec le compte connecté (même adresse e-mail)
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  Future<Adhesion?> acceptInvitation(
    String token, {
    Future<void>? abortTrigger,
  }) async {
    final response = await acceptInvitationWithHttpInfo(
      token,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Adhesion',
      ) as Adhesion;
    }
    return null;
  }

  /// Créer une clé API (5 clés actives au plus ; le secret n’est affiché qu’une fois)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [NouvelleCleBody] nouvelleCleBody (required):
  Future<Response> createCleWithHttpInfo(
    String id,
    NouvelleCleBody nouvelleCleBody, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets/{id}/cles'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = nouvelleCleBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Créer une clé API (5 clés actives au plus ; le secret n’est affiché qu’une fois)
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [NouvelleCleBody] nouvelleCleBody (required):
  Future<CleCreee?> createCle(
    String id,
    NouvelleCleBody nouvelleCleBody, {
    Future<void>? abortTrigger,
  }) async {
    final response = await createCleWithHttpInfo(
      id,
      nouvelleCleBody,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'CleCreee',
      ) as CleCreee;
    }
    return null;
  }

  /// Inviter une personne par e-mail (valable 7 jours, usage unique)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [NouvelleInvitationBody] nouvelleInvitationBody (required):
  Future<Response> createInvitationWithHttpInfo(
    String id,
    NouvelleInvitationBody nouvelleInvitationBody, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets/{id}/invitations'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = nouvelleInvitationBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Inviter une personne par e-mail (valable 7 jours, usage unique)
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [NouvelleInvitationBody] nouvelleInvitationBody (required):
  Future<Invitation?> createInvitation(
    String id,
    NouvelleInvitationBody nouvelleInvitationBody, {
    Future<void>? abortTrigger,
  }) async {
    final response = await createInvitationWithHttpInfo(
      id,
      nouvelleInvitationBody,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Invitation',
      ) as Invitation;
    }
    return null;
  }

  /// Créer un projet (20 au plus par utilisateur)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NouveauProjetBody] nouveauProjetBody (required):
  Future<Response> createProjetWithHttpInfo(
    NouveauProjetBody nouveauProjetBody, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets';

    // ignore: prefer_final_locals
    Object? postBody = nouveauProjetBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Créer un projet (20 au plus par utilisateur)
  ///
  /// Parameters:
  ///
  /// * [NouveauProjetBody] nouveauProjetBody (required):
  Future<Projet?> createProjet(
    NouveauProjetBody nouveauProjetBody, {
    Future<void>? abortTrigger,
  }) async {
    final response = await createProjetWithHttpInfo(
      nouveauProjetBody,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Projet',
      ) as Projet;
    }
    return null;
  }

  /// Ajouter un point de terminaison webhook (une URL, des événements du catalogue)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [NouveauWebhookBody] nouveauWebhookBody (required):
  ///
  /// * [String] x221Mode:
  ///   Mode affiché dans le tableau de bord : le point de terminaison reçoit les événements de ce mode.
  Future<Response> createWebhookWithHttpInfo(
    String id,
    NouveauWebhookBody nouveauWebhookBody, {
    String? x221Mode,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets/{id}/webhooks'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = nouveauWebhookBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (x221Mode != null) {
      headerParams[r'X-221-Mode'] = parameterToString(x221Mode);
    }

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Ajouter un point de terminaison webhook (une URL, des événements du catalogue)
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [NouveauWebhookBody] nouveauWebhookBody (required):
  ///
  /// * [String] x221Mode:
  ///   Mode affiché dans le tableau de bord : le point de terminaison reçoit les événements de ce mode.
  Future<Abonnement?> createWebhook(
    String id,
    NouveauWebhookBody nouveauWebhookBody, {
    String? x221Mode,
    Future<void>? abortTrigger,
  }) async {
    final response = await createWebhookWithHttpInfo(
      id,
      nouveauWebhookBody,
      x221Mode: x221Mode,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Abonnement',
      ) as Abonnement;
    }
    return null;
  }

  /// Supprimer mon compte et mes projets (clés révoquées, irréversible) : mot de passe, ou connexion de moins de 10 minutes sans mot de passe
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DeleteCompteBody] deleteCompteBody:
  Future<Response> deleteCompteWithHttpInfo({
    DeleteCompteBody? deleteCompteBody,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compte';

    // ignore: prefer_final_locals
    Object? postBody = deleteCompteBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Supprimer mon compte et mes projets (clés révoquées, irréversible) : mot de passe, ou connexion de moins de 10 minutes sans mot de passe
  ///
  /// Parameters:
  ///
  /// * [DeleteCompteBody] deleteCompteBody:
  Future<void> deleteCompte({
    DeleteCompteBody? deleteCompteBody,
    Future<void>? abortTrigger,
  }) async {
    final response = await deleteCompteWithHttpInfo(
      deleteCompteBody: deleteCompteBody,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retirer une invitation en attente
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [String] invId (required):
  Future<Response> deleteInvitationWithHttpInfo(
    String id,
    String invId, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets/{id}/invitations/{invId}'
        .replaceAll('{id}', id)
        .replaceAll('{invId}', invId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Retirer une invitation en attente
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [String] invId (required):
  Future<void> deleteInvitation(
    String id,
    String invId, {
    Future<void>? abortTrigger,
  }) async {
    final response = await deleteInvitationWithHttpInfo(
      id,
      invId,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retirer un membre ou quitter le projet (le dernier administrateur reste)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [String] userId (required):
  Future<Response> deleteMembreWithHttpInfo(
    String id,
    String userId, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets/{id}/membres/{userId}'
        .replaceAll('{id}', id)
        .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Retirer un membre ou quitter le projet (le dernier administrateur reste)
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [String] userId (required):
  Future<void> deleteMembre(
    String id,
    String userId, {
    Future<void>? abortTrigger,
  }) async {
    final response = await deleteMembreWithHttpInfo(
      id,
      userId,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Supprimer un projet : clés révoquées, webhooks supprimés (irréversible)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  Future<Response> deleteProjetWithHttpInfo(
    String id, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets/{id}'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Supprimer un projet : clés révoquées, webhooks supprimés (irréversible)
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  Future<void> deleteProjet(
    String id, {
    Future<void>? abortTrigger,
  }) async {
    final response = await deleteProjetWithHttpInfo(
      id,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Supprimer un abonnement
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [String] subscriptionId (required):
  Future<Response> deleteWebhookWithHttpInfo(
    String id,
    String subscriptionId, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets/{id}/webhooks/{subscriptionId}'
        .replaceAll('{id}', id)
        .replaceAll('{subscriptionId}', subscriptionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Supprimer un abonnement
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [String] subscriptionId (required):
  Future<void> deleteWebhook(
    String id,
    String subscriptionId, {
    Future<void>? abortTrigger,
  }) async {
    final response = await deleteWebhookWithHttpInfo(
      id,
      subscriptionId,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Exporter mes données : profil, projets, clés (sans secret), journal des appels, webhooks et livraisons, favoris, abonnements et signalements
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> exportCompteWithHttpInfo({
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compte/export';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Exporter mes données : profil, projets, clés (sans secret), journal des appels, webhooks et livraisons, favoris, abonnements et signalements
  Future<Map<String, Object?>?> exportCompte({
    Future<void>? abortTrigger,
  }) async {
    final response = await exportCompteWithHttpInfo(
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return Map<String, Object?>.from(
        await apiClient.deserializeAsync(
            await _decodeBodyBytes(response), 'Map<String, Object?>'),
      );
    }
    return null;
  }

  /// Mode live du projet : les clés live déplacent de l'argent réel
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  Future<Response> getModeLiveWithHttpInfo(
    String id, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets/{id}/live'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Mode live du projet : les clés live déplacent de l'argent réel
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  Future<ModeLive?> getModeLive(
    String id, {
    Future<void>? abortTrigger,
  }) async {
    final response = await getModeLiveWithHttpInfo(
      id,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ModeLive',
      ) as ModeLive;
    }
    return null;
  }

  /// Tableau de bord du projet : clés, consommation, journal, webhooks
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  Future<Response> getProjetWithHttpInfo(
    String id, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets/{id}'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Tableau de bord du projet : clés, consommation, journal, webhooks
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  Future<ProjetTableau?> getProjet(
    String id, {
    Future<void>? abortTrigger,
  }) async {
    final response = await getProjetWithHttpInfo(
      id,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ProjetTableau',
      ) as ProjetTableau;
    }
    return null;
  }

  /// Membres du projet et invitations en attente
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  Future<Response> listMembresWithHttpInfo(
    String id, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets/{id}/membres'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Membres du projet et invitations en attente
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  Future<Membres?> listMembres(
    String id, {
    Future<void>? abortTrigger,
  }) async {
    final response = await listMembresWithHttpInfo(
      id,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Membres',
      ) as Membres;
    }
    return null;
  }

  /// Mes projets (20 au plus)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listProjetsWithHttpInfo({
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Mes projets (20 au plus)
  Future<ProjetListe?> listProjets({
    Future<void>? abortTrigger,
  }) async {
    final response = await listProjetsWithHttpInfo(
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ProjetListe',
      ) as ProjetListe;
    }
    return null;
  }

  /// Points de terminaison webhook du projet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  Future<Response> listWebhooksWithHttpInfo(
    String id, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets/{id}/webhooks'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Points de terminaison webhook du projet
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  Future<List<Abonnement>?> listWebhooks(
    String id, {
    Future<void>? abortTrigger,
  }) async {
    final response = await listWebhooksWithHttpInfo(
      id,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Abonnement>')
              as List)
          .cast<Abonnement>()
          .toList(growable: false);
    }
    return null;
  }

  /// Aperçu public d'une invitation : projet, rôle, adresse masquée, état
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  Future<Response> previewInvitationWithHttpInfo(
    String token, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/invitations/{token}'.replaceAll('{token}', token);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Aperçu public d'une invitation : projet, rôle, adresse masquée, état
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  Future<ApercuInvitation?> previewInvitation(
    String token, {
    Future<void>? abortTrigger,
  }) async {
    final response = await previewInvitationWithHttpInfo(
      token,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ApercuInvitation',
      ) as ApercuInvitation;
    }
    return null;
  }

  /// Renommer un projet (administrateurs du projet)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [RenommerProjetBody] renommerProjetBody (required):
  Future<Response> renameProjetWithHttpInfo(
    String id,
    RenommerProjetBody renommerProjetBody, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets/{id}'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = renommerProjetBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Renommer un projet (administrateurs du projet)
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [RenommerProjetBody] renommerProjetBody (required):
  Future<Projet?> renameProjet(
    String id,
    RenommerProjetBody renommerProjetBody, {
    Future<void>? abortTrigger,
  }) async {
    final response = await renameProjetWithHttpInfo(
      id,
      renommerProjetBody,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Projet',
      ) as Projet;
    }
    return null;
  }

  /// Révoquer une clé API
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [String] keyId (required):
  Future<Response> revokeCleWithHttpInfo(
    String id,
    String keyId, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets/{id}/cles/{keyId}'
        .replaceAll('{id}', id)
        .replaceAll('{keyId}', keyId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Révoquer une clé API
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [String] keyId (required):
  Future<void> revokeCle(
    String id,
    String keyId, {
    Future<void>? abortTrigger,
  }) async {
    final response = await revokeCleWithHttpInfo(
      id,
      keyId,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Remplacer une clé API : nouvelle clé (même nom, mode, portées et quota), l'ancienne reste valide pendant le délai choisi
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [String] keyId (required):
  ///
  /// * [RotationCleBody] rotationCleBody (required):
  Future<Response> rotateCleWithHttpInfo(
    String id,
    String keyId,
    RotationCleBody rotationCleBody, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets/{id}/cles/{keyId}/rotate'
        .replaceAll('{id}', id)
        .replaceAll('{keyId}', keyId);

    // ignore: prefer_final_locals
    Object? postBody = rotationCleBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Remplacer une clé API : nouvelle clé (même nom, mode, portées et quota), l'ancienne reste valide pendant le délai choisi
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [String] keyId (required):
  ///
  /// * [RotationCleBody] rotationCleBody (required):
  Future<CleCreee?> rotateCle(
    String id,
    String keyId,
    RotationCleBody rotationCleBody, {
    Future<void>? abortTrigger,
  }) async {
    final response = await rotateCleWithHttpInfo(
      id,
      keyId,
      rotationCleBody,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'CleCreee',
      ) as CleCreee;
    }
    return null;
  }

  /// Activer ou désactiver le mode live du projet (administrateurs du projet ; confirmation obligatoire pour activer)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [ActivationLiveBody] activationLiveBody (required):
  Future<Response> setModeLiveWithHttpInfo(
    String id,
    ActivationLiveBody activationLiveBody, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets/{id}/live'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = activationLiveBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Activer ou désactiver le mode live du projet (administrateurs du projet ; confirmation obligatoire pour activer)
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [ActivationLiveBody] activationLiveBody (required):
  Future<ModeLive?> setModeLive(
    String id,
    ActivationLiveBody activationLiveBody, {
    Future<void>? abortTrigger,
  }) async {
    final response = await setModeLiveWithHttpInfo(
      id,
      activationLiveBody,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ModeLive',
      ) as ModeLive;
    }
    return null;
  }

  /// Envoyer un événement test.ping signé au point de terminaison (3 par minute au plus)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [String] subscriptionId (required):
  Future<Response> testWebhookWithHttpInfo(
    String id,
    String subscriptionId, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets/{id}/webhooks/{subscriptionId}/test'
        .replaceAll('{id}', id)
        .replaceAll('{subscriptionId}', subscriptionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Envoyer un événement test.ping signé au point de terminaison (3 par minute au plus)
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [String] subscriptionId (required):
  Future<EnvoiTest?> testWebhook(
    String id,
    String subscriptionId, {
    Future<void>? abortTrigger,
  }) async {
    final response = await testWebhookWithHttpInfo(
      id,
      subscriptionId,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'EnvoiTest',
      ) as EnvoiTest;
    }
    return null;
  }

  /// Changer le rôle d'un membre (le dernier administrateur reste)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [String] userId (required):
  ///
  /// * [NouveauRoleBody] nouveauRoleBody (required):
  Future<Response> updateMembreWithHttpInfo(
    String id,
    String userId,
    NouveauRoleBody nouveauRoleBody, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets/{id}/membres/{userId}'
        .replaceAll('{id}', id)
        .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody = nouveauRoleBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Changer le rôle d'un membre (le dernier administrateur reste)
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [String] userId (required):
  ///
  /// * [NouveauRoleBody] nouveauRoleBody (required):
  Future<Membre?> updateMembre(
    String id,
    String userId,
    NouveauRoleBody nouveauRoleBody, {
    Future<void>? abortTrigger,
  }) async {
    final response = await updateMembreWithHttpInfo(
      id,
      userId,
      nouveauRoleBody,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Membre',
      ) as Membre;
    }
    return null;
  }

  /// Choisir les événements et les modes d’un point de terminaison webhook
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [String] subscriptionId (required):
  ///
  /// * [WebhookEventsBody] webhookEventsBody (required):
  Future<Response> updateWebhookWithHttpInfo(
    String id,
    String subscriptionId,
    WebhookEventsBody webhookEventsBody, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projets/{id}/webhooks/{subscriptionId}'
        .replaceAll('{id}', id)
        .replaceAll('{subscriptionId}', subscriptionId);

    // ignore: prefer_final_locals
    Object? postBody = webhookEventsBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Choisir les événements et les modes d’un point de terminaison webhook
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identifiant du projet.
  ///
  /// * [String] subscriptionId (required):
  ///
  /// * [WebhookEventsBody] webhookEventsBody (required):
  Future<Abonnement?> updateWebhook(
    String id,
    String subscriptionId,
    WebhookEventsBody webhookEventsBody, {
    Future<void>? abortTrigger,
  }) async {
    final response = await updateWebhookWithHttpInfo(
      id,
      subscriptionId,
      webhookEventsBody,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Abonnement',
      ) as Abonnement;
    }
    return null;
  }
}
