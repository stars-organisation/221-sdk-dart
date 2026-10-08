//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PaymentsApi {
  PaymentsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /v1/alerts/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> alertsActWithHttpInfo(String id, MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/alerts/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> alertsAct(String id, MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await alertsActWithHttpInfo(id, body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'POST /v1/alerts/list' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> alertsListWithHttpInfo(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/alerts/list';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> alertsList(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await alertsListWithHttpInfo(body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'POST /v1/analytics/filters/{domain}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] domain (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> analyticsFiltersWithHttpInfo(String domain, MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/analytics/filters/{domain}'
      .replaceAll('{domain}', domain);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [String] domain (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> analyticsFilters(String domain, MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await analyticsFiltersWithHttpInfo(domain, body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'POST /v1/analytics/metrics/{domain}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] domain (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> analyticsMetricsWithHttpInfo(String domain, MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/analytics/metrics/{domain}'
      .replaceAll('{domain}', domain);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [String] domain (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> analyticsMetrics(String domain, MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await analyticsMetricsWithHttpInfo(domain, body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/balances' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> balancesGetWithHttpInfo({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/balances';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> balancesGet({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await balancesGetWithHttpInfo(authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'POST /v1/chat' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> chatWithHttpInfo(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/chat';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> chat(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await chatWithHttpInfo(body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/customers/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> customersGetWithHttpInfo(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/customers/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> customersGet(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await customersGetWithHttpInfo(id, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/customers' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] limit:
  ///
  /// * [String] offset:
  ///
  /// * [String] q:
  ///
  /// * [String] from:
  ///
  /// * [String] to:
  Future<Response> customersListWithHttpInfo({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? limit, String? offset, String? q, String? from, String? to, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/customers';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] limit:
  ///
  /// * [String] offset:
  ///
  /// * [String] q:
  ///
  /// * [String] from:
  ///
  /// * [String] to:
  Future<Object?> customersList({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? limit, String? offset, String? q, String? from, String? to, Future<void>? abortTrigger, }) async {
    final response = await customersListWithHttpInfo(authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, limit: limit, offset: offset, q: q, from: from, to: to, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'POST /v1/disputes/{id}/accept' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> disputesAcceptWithHttpInfo(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/disputes/{id}/accept'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> disputesAccept(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await disputesAcceptWithHttpInfo(id, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'POST /v1/disputes/{id}/evidence' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] contentType:
  Future<Response> disputesChallengeWithHttpInfo(String id, MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? contentType, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/disputes/{id}/evidence'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] contentType:
  Future<Object?> disputesChallenge(String id, MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? contentType, Future<void>? abortTrigger, }) async {
    final response = await disputesChallengeWithHttpInfo(id, body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, contentType: contentType, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'POST /v1/disputes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> disputesCreateWithHttpInfo(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/disputes';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> disputesCreate(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await disputesCreateWithHttpInfo(body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/disputes/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> disputesGetWithHttpInfo(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/disputes/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> disputesGet(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await disputesGetWithHttpInfo(id, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/disputes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] limit:
  ///
  /// * [String] offset:
  ///
  /// * [String] paymentId:
  ///
  /// * [String] disputeStatus:
  ///
  /// * [String] from:
  ///
  /// * [String] to:
  Future<Response> disputesListWithHttpInfo({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? limit, String? offset, String? paymentId, String? disputeStatus, String? from, String? to, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/disputes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (paymentId != null) {
      queryParams.addAll(_queryParams('', 'payment_id', paymentId));
    }
    if (disputeStatus != null) {
      queryParams.addAll(_queryParams('', 'dispute_status', disputeStatus));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] limit:
  ///
  /// * [String] offset:
  ///
  /// * [String] paymentId:
  ///
  /// * [String] disputeStatus:
  ///
  /// * [String] from:
  ///
  /// * [String] to:
  Future<Object?> disputesList({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? limit, String? offset, String? paymentId, String? disputeStatus, String? from, String? to, Future<void>? abortTrigger, }) async {
    final response = await disputesListWithHttpInfo(authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, limit: limit, offset: offset, paymentId: paymentId, disputeStatus: disputeStatus, from: from, to: to, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/kyc/documents' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> kycDocumentsWithHttpInfo({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kyc/documents';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> kycDocuments({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await kycDocumentsWithHttpInfo(authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'POST /v1/kyc/sessions' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> kycSessionsCreateWithHttpInfo(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kyc/sessions';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> kycSessionsCreate(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await kycSessionsCreateWithHttpInfo(body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'POST /v1/kyc/sessions/uploads' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> kycSessionsUploadsWithHttpInfo({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kyc/sessions/uploads';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

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

  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> kycSessionsUploads({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await kycSessionsUploadsWithHttpInfo(authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/kyc/status' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> kycStatusWithHttpInfo({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kyc/status';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> kycStatus({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await kycStatusWithHttpInfo(authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'POST /v1/kyc/submit' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> kycSubmitWithHttpInfo({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kyc/submit';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

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

  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> kycSubmit({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await kycSubmitWithHttpInfo(authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'POST /v1/offers' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> offersCreateWithHttpInfo(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/offers';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> offersCreate(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await offersCreateWithHttpInfo(body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'DELETE /v1/offers/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> offersDeleteWithHttpInfo(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/offers/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> offersDelete(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await offersDeleteWithHttpInfo(id, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/offers/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> offersGetWithHttpInfo(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/offers/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> offersGet(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await offersGetWithHttpInfo(id, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/offers' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] limit:
  ///
  /// * [String] offset:
  ///
  /// * [String] status:
  Future<Response> offersListWithHttpInfo({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? limit, String? offset, String? status, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/offers';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] limit:
  ///
  /// * [String] offset:
  ///
  /// * [String] status:
  Future<Object?> offersList({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? limit, String? offset, String? status, Future<void>? abortTrigger, }) async {
    final response = await offersListWithHttpInfo(authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, limit: limit, offset: offset, status: status, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'POST /v1/offers/{id}/status' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> offersStatusWithHttpInfo(String id, MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/offers/{id}/status'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> offersStatus(String id, MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await offersStatusWithHttpInfo(id, body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'POST /v1/payment-links' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> paymentLinksCreateWithHttpInfo(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payment-links';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> paymentLinksCreate(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await paymentLinksCreateWithHttpInfo(body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/payment-links/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> paymentLinksGetWithHttpInfo(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payment-links/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> paymentLinksGet(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await paymentLinksGetWithHttpInfo(id, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/payment-links' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] limit:
  ///
  /// * [String] offset:
  ///
  /// * [String] status:
  ///
  /// * [String] from:
  ///
  /// * [String] to:
  Future<Response> paymentLinksListWithHttpInfo({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? limit, String? offset, String? status, String? from, String? to, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payment-links';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] limit:
  ///
  /// * [String] offset:
  ///
  /// * [String] status:
  ///
  /// * [String] from:
  ///
  /// * [String] to:
  Future<Object?> paymentLinksList({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? limit, String? offset, String? status, String? from, String? to, Future<void>? abortTrigger, }) async {
    final response = await paymentLinksListWithHttpInfo(authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, limit: limit, offset: offset, status: status, from: from, to: to, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'POST /v1/payment-links/{id}/status' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> paymentLinksStatusWithHttpInfo(String id, MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payment-links/{id}/status'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> paymentLinksStatus(String id, MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await paymentLinksStatusWithHttpInfo(id, body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Ouvrir le tableau de bord des paiements (Control Center)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] lang:
  Future<Response> paymentsConsoleWithHttpInfo({ String? lang, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payments/console';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
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

  /// Ouvrir le tableau de bord des paiements (Control Center)
  ///
  /// Parameters:
  ///
  /// * [String] lang:
  Future<Error?> paymentsConsole({ String? lang, Future<void>? abortTrigger, }) async {
    final response = await paymentsConsoleWithHttpInfo(lang: lang, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Error',) as Error;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/payments' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] idempotencyKey:
  Future<Response> paymentsCreateWithHttpInfo(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? idempotencyKey, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payments';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }
    if (idempotencyKey != null) {
      headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] idempotencyKey:
  Future<Object?> paymentsCreate(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? idempotencyKey, Future<void>? abortTrigger, }) async {
    final response = await paymentsCreateWithHttpInfo(body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, idempotencyKey: idempotencyKey, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/payments/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> paymentsGetWithHttpInfo(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payments/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> paymentsGet(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await paymentsGetWithHttpInfo(id, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/payments' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] limit:
  ///
  /// * [String] offset:
  ///
  /// * [String] cursor:
  ///
  /// * [List<String>] status:
  ///
  /// * [String] method:
  ///
  /// * [String] rail:
  ///
  /// * [String] from:
  ///
  /// * [String] to:
  ///
  /// * [String] q:
  ///
  /// * [String] customerPhone:
  Future<Response> paymentsListWithHttpInfo({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? limit, String? offset, String? cursor, List<String>? status, String? method, String? rail, String? from, String? to, String? q, String? customerPhone, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payments';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (cursor != null) {
      queryParams.addAll(_queryParams('', 'cursor', cursor));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('multi', 'status', status));
    }
    if (method != null) {
      queryParams.addAll(_queryParams('', 'method', method));
    }
    if (rail != null) {
      queryParams.addAll(_queryParams('', 'rail', rail));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (customerPhone != null) {
      queryParams.addAll(_queryParams('', 'customer_phone', customerPhone));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] limit:
  ///
  /// * [String] offset:
  ///
  /// * [String] cursor:
  ///
  /// * [List<String>] status:
  ///
  /// * [String] method:
  ///
  /// * [String] rail:
  ///
  /// * [String] from:
  ///
  /// * [String] to:
  ///
  /// * [String] q:
  ///
  /// * [String] customerPhone:
  Future<Object?> paymentsList({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? limit, String? offset, String? cursor, List<String>? status, String? method, String? rail, String? from, String? to, String? q, String? customerPhone, Future<void>? abortTrigger, }) async {
    final response = await paymentsListWithHttpInfo(authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, limit: limit, offset: offset, cursor: cursor, status: status, method: method, rail: rail, from: from, to: to, q: q, customerPhone: customerPhone, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'POST /v1/payout-destinations' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> payoutDestinationsAddWithHttpInfo(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payout-destinations';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> payoutDestinationsAdd(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await payoutDestinationsAddWithHttpInfo(body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/payout-destinations' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> payoutDestinationsListWithHttpInfo({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payout-destinations';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> payoutDestinationsList({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await payoutDestinationsListWithHttpInfo(authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'DELETE /v1/payout-destinations/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> payoutDestinationsRemoveWithHttpInfo(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payout-destinations/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<void> payoutDestinationsRemove(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await payoutDestinationsRemoveWithHttpInfo(id, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /v1/payout-quotes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> payoutQuotesCreateWithHttpInfo(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payout-quotes';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> payoutQuotesCreate(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await payoutQuotesCreateWithHttpInfo(body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'POST /v1/payouts' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] idempotencyKey:
  Future<Response> payoutsCreateWithHttpInfo(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? idempotencyKey, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payouts';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }
    if (idempotencyKey != null) {
      headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] idempotencyKey:
  Future<Object?> payoutsCreate(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? idempotencyKey, Future<void>? abortTrigger, }) async {
    final response = await payoutsCreateWithHttpInfo(body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, idempotencyKey: idempotencyKey, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/payouts/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> payoutsGetWithHttpInfo(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payouts/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> payoutsGet(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await payoutsGetWithHttpInfo(id, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/payouts' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> payoutsListWithHttpInfo({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payouts';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> payoutsList({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await payoutsListWithHttpInfo(authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/rails' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> railsListWithHttpInfo({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/rails';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> railsList({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await railsListWithHttpInfo(authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'PUT /v1/rails/{id}/enabled' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> railsSetEnabledWithHttpInfo(String id, MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/rails/{id}/enabled'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> railsSetEnabled(String id, MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await railsSetEnabledWithHttpInfo(id, body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'POST /v1/refund-quotes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> refundQuotesCreateWithHttpInfo(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/refund-quotes';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> refundQuotesCreate(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await refundQuotesCreateWithHttpInfo(body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'POST /v1/refunds' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] idempotencyKey:
  Future<Response> refundsCreateWithHttpInfo(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? idempotencyKey, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/refunds';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }
    if (idempotencyKey != null) {
      headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] idempotencyKey:
  Future<Object?> refundsCreate(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? idempotencyKey, Future<void>? abortTrigger, }) async {
    final response = await refundsCreateWithHttpInfo(body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, idempotencyKey: idempotencyKey, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/refunds/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> refundsGetWithHttpInfo(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/refunds/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> refundsGet(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await refundsGetWithHttpInfo(id, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/refunds' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] limit:
  ///
  /// * [String] offset:
  ///
  /// * [String] paymentId:
  ///
  /// * [String] status:
  ///
  /// * [String] from:
  ///
  /// * [String] to:
  Future<Response> refundsListWithHttpInfo({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? limit, String? offset, String? paymentId, String? status, String? from, String? to, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/refunds';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (paymentId != null) {
      queryParams.addAll(_queryParams('', 'payment_id', paymentId));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] limit:
  ///
  /// * [String] offset:
  ///
  /// * [String] paymentId:
  ///
  /// * [String] status:
  ///
  /// * [String] from:
  ///
  /// * [String] to:
  Future<Object?> refundsList({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? limit, String? offset, String? paymentId, String? status, String? from, String? to, Future<void>? abortTrigger, }) async {
    final response = await refundsListWithHttpInfo(authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, limit: limit, offset: offset, paymentId: paymentId, status: status, from: from, to: to, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/settings' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> settingsGetWithHttpInfo({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/settings';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> settingsGet({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await settingsGetWithHttpInfo(authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'PUT /v1/settings' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> settingsUpdateWithHttpInfo(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/settings';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Parameters:
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> settingsUpdate(MultipartFile body, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await settingsUpdateWithHttpInfo(body, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/webhook-events/{id}/attempts' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> webhookEventAttemptsWithHttpInfo(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webhook-events/{id}/attempts'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> webhookEventAttempts(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await webhookEventAttemptsWithHttpInfo(id, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'POST /v1/webhook-events/{id}/retry' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Response> webhookEventRetryWithHttpInfo(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webhook-events/{id}/retry'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  Future<Object?> webhookEventRetry(String id, { String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, Future<void>? abortTrigger, }) async {
    final response = await webhookEventRetryWithHttpInfo(id, authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, abortTrigger: abortTrigger,);
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

  /// Performs an HTTP 'GET /v1/webhook-events' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] limit:
  ///
  /// * [String] offset:
  ///
  /// * [String] createdAfter:
  ///
  /// * [String] createdBefore:
  ///
  /// * [String] objectId:
  ///
  /// * [String] eventId:
  Future<Response> webhookEventsListWithHttpInfo({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? limit, String? offset, String? createdAfter, String? createdBefore, String? objectId, String? eventId, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webhook-events';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (projectId != null) {
      queryParams.addAll(_queryParams('', 'project_id', projectId));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (createdAfter != null) {
      queryParams.addAll(_queryParams('', 'created_after', createdAfter));
    }
    if (createdBefore != null) {
      queryParams.addAll(_queryParams('', 'created_before', createdBefore));
    }
    if (objectId != null) {
      queryParams.addAll(_queryParams('', 'object_id', objectId));
    }
    if (eventId != null) {
      queryParams.addAll(_queryParams('', 'event_id', eventId));
    }

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }
    if (xAPIKey != null) {
      headerParams[r'X-API-Key'] = parameterToString(xAPIKey);
    }
    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (x221ExternalRef != null) {
      headerParams[r'X-221-External-Ref'] = parameterToString(x221ExternalRef);
    }
    if (x221ProjectId != null) {
      headerParams[r'X-221-Project-Id'] = parameterToString(x221ProjectId);
    }
    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
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

  /// Parameters:
  ///
  /// * [String] authorization:
  ///
  /// * [String] xAPIKey:
  ///
  /// * [String] cookie:
  ///
  /// * [String] x221ExternalRef:
  ///
  /// * [String] x221ProjectId:
  ///
  /// * [String] projectId:
  ///
  /// * [String] lang:
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [String] limit:
  ///
  /// * [String] offset:
  ///
  /// * [String] createdAfter:
  ///
  /// * [String] createdBefore:
  ///
  /// * [String] objectId:
  ///
  /// * [String] eventId:
  Future<Object?> webhookEventsList({ String? authorization, String? xAPIKey, String? cookie, String? x221ExternalRef, String? x221ProjectId, String? projectId, String? lang, String? acceptLanguage, String? limit, String? offset, String? createdAfter, String? createdBefore, String? objectId, String? eventId, Future<void>? abortTrigger, }) async {
    final response = await webhookEventsListWithHttpInfo(authorization: authorization, xAPIKey: xAPIKey, cookie: cookie, x221ExternalRef: x221ExternalRef, x221ProjectId: x221ProjectId, projectId: projectId, lang: lang, acceptLanguage: acceptLanguage, limit: limit, offset: offset, createdAfter: createdAfter, createdBefore: createdBefore, objectId: objectId, eventId: eventId, abortTrigger: abortTrigger,);
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
}
