//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class JoursFeriesApi {
  JoursFeriesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Date obtenue en ajoutant N jours ouvrés
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] from (required):
  ///
  /// * [int] days (required):
  Future<Response> addJoursOuvresWithHttpInfo(String from, int days, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/delais';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'from', from));
      queryParams.addAll(_queryParams('', 'days', days));

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

  /// Date obtenue en ajoutant N jours ouvrés
  ///
  /// Parameters:
  ///
  /// * [String] from (required):
  ///
  /// * [int] days (required):
  Future<Delai?> addJoursOuvres(String from, int days, { Future<void>? abortTrigger, }) async {
    final response = await addJoursOuvresWithHttpInfo(from, days, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Delai',) as Delai;
    
    }
    return null;
  }

  /// Nombre de jours ouvrés entre deux dates incluses
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] from (required):
  ///
  /// * [String] to (required):
  Future<Response> countJoursOuvresWithHttpInfo(String from, String to, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/jours-feries/ouvres';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'from', from));
      queryParams.addAll(_queryParams('', 'to', to));

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

  /// Nombre de jours ouvrés entre deux dates incluses
  ///
  /// Parameters:
  ///
  /// * [String] from (required):
  ///
  /// * [String] to (required):
  Future<JoursOuvres?> countJoursOuvres(String from, String to, { Future<void>? abortTrigger, }) async {
    final response = await countJoursOuvresWithHttpInfo(from, to, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JoursOuvres',) as JoursOuvres;
    
    }
    return null;
  }

  /// Jours fériés du Sénégal : une fiche
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getJourFerieWithHttpInfo(String id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/jours-feries/{id}'
      .replaceAll('{id}', id);

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

  /// Jours fériés du Sénégal : une fiche
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Object?> getJourFerie(String id, { Future<void>? abortTrigger, }) async {
    final response = await getJourFerieWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Jours fériés du Sénégal
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  ///
  /// * [String] q:
  ///   Recherche plein texte, sans accents ni casse.
  ///
  /// * [String] type:
  ///
  /// * [String] dateStatus:
  ///
  /// * [String] year:
  Future<Response> listJoursFeriesWithHttpInfo({ int? page, int? perPage, String? q, String? type, String? dateStatus, String? year, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/jours-feries';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (dateStatus != null) {
      queryParams.addAll(_queryParams('', 'date_status', dateStatus));
    }
    if (year != null) {
      queryParams.addAll(_queryParams('', 'year', year));
    }

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

  /// Jours fériés du Sénégal
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  ///
  /// * [String] q:
  ///   Recherche plein texte, sans accents ni casse.
  ///
  /// * [String] type:
  ///
  /// * [String] dateStatus:
  ///
  /// * [String] year:
  Future<ItemPage?> listJoursFeries({ int? page, int? perPage, String? q, String? type, String? dateStatus, String? year, Future<void>? abortTrigger, }) async {
    final response = await listJoursFeriesWithHttpInfo(page: page, perPage: perPage, q: q, type: type, dateStatus: dateStatus, year: year, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ItemPage',) as ItemPage;
    
    }
    return null;
  }
}
