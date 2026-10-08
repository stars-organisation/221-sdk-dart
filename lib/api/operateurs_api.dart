//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OperateursApi {
  OperateursApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Préfixes des opérateurs de téléphonie : une fiche
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getOperateurWithHttpInfo(
    String id, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/operateurs/{id}'.replaceAll('{id}', id);

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

  /// Préfixes des opérateurs de téléphonie : une fiche
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<PrefixeOperateur?> getOperateur(
    String id, {
    Future<void>? abortTrigger,
  }) async {
    final response = await getOperateurWithHttpInfo(
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
        'PrefixeOperateur',
      ) as PrefixeOperateur;
    }
    return null;
  }

  /// Préfixes des opérateurs de téléphonie
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
  /// * [String] operator_:
  ///
  /// * [String] type:
  Future<Response> listOperateursWithHttpInfo({
    int? page,
    int? perPage,
    String? q,
    String? operator_,
    String? type,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/operateurs';

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
    if (operator_ != null) {
      queryParams.addAll(_queryParams('', 'operator', operator_));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
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

  /// Préfixes des opérateurs de téléphonie
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
  /// * [String] operator_:
  ///
  /// * [String] type:
  Future<DatasetPagePrefixeOperateur?> listOperateurs({
    int? page,
    int? perPage,
    String? q,
    String? operator_,
    String? type,
    Future<void>? abortTrigger,
  }) async {
    final response = await listOperateursWithHttpInfo(
      page: page,
      perPage: perPage,
      q: q,
      operator_: operator_,
      type: type,
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
        'DatasetPagePrefixeOperateur',
      ) as DatasetPagePrefixeOperateur;
    }
    return null;
  }
}
