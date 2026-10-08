//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GeographieApi {
  GeographieApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Distance à vol d'oiseau entre deux lieux ou points
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] from (required):
  ///   Identifiant de lieu ou « latitude,longitude ».
  ///
  /// * [String] to (required):
  ///   Identifiant de lieu ou « latitude,longitude ».
  Future<Response> distanceLieuxWithHttpInfo(
    String from,
    String to, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/geographie/distance';

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

  /// Distance à vol d'oiseau entre deux lieux ou points
  ///
  /// Parameters:
  ///
  /// * [String] from (required):
  ///   Identifiant de lieu ou « latitude,longitude ».
  ///
  /// * [String] to (required):
  ///   Identifiant de lieu ou « latitude,longitude ».
  Future<Distance?> distanceLieux(
    String from,
    String to, {
    Future<void>? abortTrigger,
  }) async {
    final response = await distanceLieuxWithHttpInfo(
      from,
      to,
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
        'Distance',
      ) as Distance;
    }
    return null;
  }

  /// Un lieu avec ses ancêtres et ses enfants
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getLieuWithHttpInfo(
    String id, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/geographie/{id}'.replaceAll('{id}', id);

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

  /// Un lieu avec ses ancêtres et ses enfants
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<LieuDetail?> getLieu(
    String id, {
    Future<void>? abortTrigger,
  }) async {
    final response = await getLieuWithHttpInfo(
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
        'LieuDetail',
      ) as LieuDetail;
    }
    return null;
  }

  /// Lieux : filtre par niveau, parent ou recherche tolérante
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  ///
  /// * [String] level:
  ///
  /// * [String] parentId:
  ///
  /// * [String] q:
  ///   Sans accents ni casse ; « thies » trouve Thiès.
  Future<Response> listGeographieWithHttpInfo({
    int? page,
    int? perPage,
    String? level,
    String? parentId,
    String? q,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/geographie';

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
    if (level != null) {
      queryParams.addAll(_queryParams('', 'level', level));
    }
    if (parentId != null) {
      queryParams.addAll(_queryParams('', 'parent_id', parentId));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
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

  /// Lieux : filtre par niveau, parent ou recherche tolérante
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  ///
  /// * [String] level:
  ///
  /// * [String] parentId:
  ///
  /// * [String] q:
  ///   Sans accents ni casse ; « thies » trouve Thiès.
  Future<LieuPage?> listGeographie({
    int? page,
    int? perPage,
    String? level,
    String? parentId,
    String? q,
    Future<void>? abortTrigger,
  }) async {
    final response = await listGeographieWithHttpInfo(
      page: page,
      perPage: perPage,
      level: level,
      parentId: parentId,
      q: q,
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
        'LieuPage',
      ) as LieuPage;
    }
    return null;
  }

  /// Rattacher un point GPS à sa région, son département, son arrondissement et sa commune (géocodage inverse)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [double] lat (required):
  ///
  /// * [double] lon (required):
  Future<Response> rattacherPointWithHttpInfo(
    double lat,
    double lon, {
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/geographie/rattacher';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'lat', lat));
    queryParams.addAll(_queryParams('', 'lon', lon));

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

  /// Rattacher un point GPS à sa région, son département, son arrondissement et sa commune (géocodage inverse)
  ///
  /// Parameters:
  ///
  /// * [double] lat (required):
  ///
  /// * [double] lon (required):
  Future<Rattachement?> rattacherPoint(
    double lat,
    double lon, {
    Future<void>? abortTrigger,
  }) async {
    final response = await rattacherPointWithHttpInfo(
      lat,
      lon,
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
        'Rattachement',
      ) as Rattachement;
    }
    return null;
  }
}
