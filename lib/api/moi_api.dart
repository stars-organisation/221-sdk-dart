//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MoiApi {
  MoiApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Accepter la version courante des conditions d’utilisation
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ConditionsInputBody] conditionsInputBody (required):
  Future<Response> acceptConditionsWithHttpInfo(
    ConditionsInputBody conditionsInputBody, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/moi/conditions';

    // ignore: prefer_final_locals
    Object? postBody = conditionsInputBody;

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

  /// Accepter la version courante des conditions d’utilisation
  ///
  /// Parameters:
  ///
  /// * [ConditionsInputBody] conditionsInputBody (required):
  Future<Conditions?> acceptConditions(
    ConditionsInputBody conditionsInputBody, {
    Future<void>? abortTrigger,
  }) async {
    final response = await acceptConditionsWithHttpInfo(
      conditionsInputBody,
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
        'Conditions',
      ) as Conditions;
    }
    return null;
  }

  /// Ajouter un jeu à mes abonnements aux nouvelles versions (e-mail) (idempotent)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jeu (required):
  ///   Identifiant du jeu de données (catalogue /v1/jeux).
  Future<Response> addAbonnementWithHttpInfo(
    String jeu, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/moi/abonnements/{jeu}'.replaceAll('{jeu}', jeu);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

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

  /// Ajouter un jeu à mes abonnements aux nouvelles versions (e-mail) (idempotent)
  ///
  /// Parameters:
  ///
  /// * [String] jeu (required):
  ///   Identifiant du jeu de données (catalogue /v1/jeux).
  Future<Suivi?> addAbonnement(
    String jeu, {
    Future<void>? abortTrigger,
  }) async {
    final response = await addAbonnementWithHttpInfo(
      jeu,
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
        'Suivi',
      ) as Suivi;
    }
    return null;
  }

  /// Ajouter un jeu à mes favoris (idempotent)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jeu (required):
  ///   Identifiant du jeu de données (catalogue /v1/jeux).
  Future<Response> addFavoriWithHttpInfo(
    String jeu, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/moi/favoris/{jeu}'.replaceAll('{jeu}', jeu);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

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

  /// Ajouter un jeu à mes favoris (idempotent)
  ///
  /// Parameters:
  ///
  /// * [String] jeu (required):
  ///   Identifiant du jeu de données (catalogue /v1/jeux).
  Future<Suivi?> addFavori(
    String jeu, {
    Future<void>? abortTrigger,
  }) async {
    final response = await addFavoriWithHttpInfo(
      jeu,
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
        'Suivi',
      ) as Suivi;
    }
    return null;
  }

  /// Enregistrer une réponse d’accueil (idempotent)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] question (required):
  ///
  /// * [AnswerInputBody] answerInputBody (required):
  Future<Response> answerOnboardingWithHttpInfo(
    String question,
    AnswerInputBody answerInputBody, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path =
        r'/v1/moi/onboarding/{question}'.replaceAll('{question}', question);

    // ignore: prefer_final_locals
    Object? postBody = answerInputBody;

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

  /// Enregistrer une réponse d’accueil (idempotent)
  ///
  /// Parameters:
  ///
  /// * [String] question (required):
  ///
  /// * [AnswerInputBody] answerInputBody (required):
  Future<void> answerOnboarding(
    String question,
    AnswerInputBody answerInputBody, {
    Future<void>? abortTrigger,
  }) async {
    final response = await answerOnboardingWithHttpInfo(
      question,
      answerInputBody,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// État d’un jeu dans mes abonnements aux nouvelles versions (e-mail)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jeu (required):
  ///   Identifiant du jeu de données (catalogue /v1/jeux).
  Future<Response> getAbonnementWithHttpInfo(
    String jeu, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/moi/abonnements/{jeu}'.replaceAll('{jeu}', jeu);

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

  /// État d’un jeu dans mes abonnements aux nouvelles versions (e-mail)
  ///
  /// Parameters:
  ///
  /// * [String] jeu (required):
  ///   Identifiant du jeu de données (catalogue /v1/jeux).
  Future<Suivi?> getAbonnement(
    String jeu, {
    Future<void>? abortTrigger,
  }) async {
    final response = await getAbonnementWithHttpInfo(
      jeu,
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
        'Suivi',
      ) as Suivi;
    }
    return null;
  }

  /// Projet, mode et portées de la clé API qui appelle
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCleAppelanteWithHttpInfo({
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/moi/cle';

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

  /// Projet, mode et portées de la clé API qui appelle
  Future<CleAppelante?> getCleAppelante({
    Future<void>? abortTrigger,
  }) async {
    final response = await getCleAppelanteWithHttpInfo(
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
        'CleAppelante',
      ) as CleAppelante;
    }
    return null;
  }

  /// Version des conditions d’utilisation et acceptation du compte
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getConditionsWithHttpInfo({
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/moi/conditions';

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

  /// Version des conditions d’utilisation et acceptation du compte
  Future<Conditions?> getConditions({
    Future<void>? abortTrigger,
  }) async {
    final response = await getConditionsWithHttpInfo(
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
        'Conditions',
      ) as Conditions;
    }
    return null;
  }

  /// État d’un jeu dans mes favoris
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jeu (required):
  ///   Identifiant du jeu de données (catalogue /v1/jeux).
  Future<Response> getFavoriWithHttpInfo(
    String jeu, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/moi/favoris/{jeu}'.replaceAll('{jeu}', jeu);

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

  /// État d’un jeu dans mes favoris
  ///
  /// Parameters:
  ///
  /// * [String] jeu (required):
  ///   Identifiant du jeu de données (catalogue /v1/jeux).
  Future<Suivi?> getFavori(
    String jeu, {
    Future<void>? abortTrigger,
  }) async {
    final response = await getFavoriWithHttpInfo(
      jeu,
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
        'Suivi',
      ) as Suivi;
    }
    return null;
  }

  /// Questions d’accueil et réponses du compte
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getOnboardingWithHttpInfo({
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/moi/onboarding';

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

  /// Questions d’accueil et réponses du compte
  Future<Accueil?> getOnboarding({
    Future<void>? abortTrigger,
  }) async {
    final response = await getOnboardingWithHttpInfo(
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
        'Accueil',
      ) as Accueil;
    }
    return null;
  }

  /// Mes abonnements aux nouvelles versions (e-mail)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listAbonnementsWithHttpInfo({
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/moi/abonnements';

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

  /// Mes abonnements aux nouvelles versions (e-mail)
  Future<SuiviListe?> listAbonnements({
    Future<void>? abortTrigger,
  }) async {
    final response = await listAbonnementsWithHttpInfo(
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
        'SuiviListe',
      ) as SuiviListe;
    }
    return null;
  }

  /// Mes favoris
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listFavorisWithHttpInfo({
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/moi/favoris';

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

  /// Mes favoris
  Future<SuiviListe?> listFavoris({
    Future<void>? abortTrigger,
  }) async {
    final response = await listFavorisWithHttpInfo(
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
        'SuiviListe',
      ) as SuiviListe;
    }
    return null;
  }

  /// Retirer un jeu de mes abonnements aux nouvelles versions (e-mail) (idempotent)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jeu (required):
  ///   Identifiant du jeu de données (catalogue /v1/jeux).
  Future<Response> removeAbonnementWithHttpInfo(
    String jeu, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/moi/abonnements/{jeu}'.replaceAll('{jeu}', jeu);

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

  /// Retirer un jeu de mes abonnements aux nouvelles versions (e-mail) (idempotent)
  ///
  /// Parameters:
  ///
  /// * [String] jeu (required):
  ///   Identifiant du jeu de données (catalogue /v1/jeux).
  Future<void> removeAbonnement(
    String jeu, {
    Future<void>? abortTrigger,
  }) async {
    final response = await removeAbonnementWithHttpInfo(
      jeu,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retirer un jeu de mes favoris (idempotent)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jeu (required):
  ///   Identifiant du jeu de données (catalogue /v1/jeux).
  Future<Response> removeFavoriWithHttpInfo(
    String jeu, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/moi/favoris/{jeu}'.replaceAll('{jeu}', jeu);

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

  /// Retirer un jeu de mes favoris (idempotent)
  ///
  /// Parameters:
  ///
  /// * [String] jeu (required):
  ///   Identifiant du jeu de données (catalogue /v1/jeux).
  Future<void> removeFavori(
    String jeu, {
    Future<void>? abortTrigger,
  }) async {
    final response = await removeFavoriWithHttpInfo(
      jeu,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
