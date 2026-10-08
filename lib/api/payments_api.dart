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
  PaymentsApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

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
  Future<Response> balancesGetWithHttpInfo({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
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
  Future<Balances?> balancesGet({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await balancesGetWithHttpInfo(
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'Balances',
      ) as Balances;
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
  Future<Response> customersGetWithHttpInfo(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/customers/{id}'.replaceAll('{id}', id);

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
  Future<Customer?> customersGet(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await customersGetWithHttpInfo(
      id,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'Customer',
      ) as Customer;
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
  Future<Response> customersListWithHttpInfo({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    String? limit,
    String? offset,
    String? q,
    String? from,
    String? to,
    Future<void>? abortTrigger,
  }) async {
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
  Future<PageCustomer?> customersList({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    String? limit,
    String? offset,
    String? q,
    String? from,
    String? to,
    Future<void>? abortTrigger,
  }) async {
    final response = await customersListWithHttpInfo(
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
      limit: limit,
      offset: offset,
      q: q,
      from: from,
      to: to,
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
        'PageCustomer',
      ) as PageCustomer;
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
  Future<Response> disputesAcceptWithHttpInfo(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/disputes/{id}/accept'.replaceAll('{id}', id);

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
  Future<Dispute?> disputesAccept(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await disputesAcceptWithHttpInfo(
      id,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'Dispute',
      ) as Dispute;
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/disputes/{id}/evidence' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [DisputeChallengeRequest] disputeChallengeRequest (required):
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
  Future<Response> disputesChallengeWithHttpInfo(
    String id,
    DisputeChallengeRequest disputeChallengeRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    String? contentType,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/disputes/{id}/evidence'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = disputeChallengeRequest;

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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [DisputeChallengeRequest] disputeChallengeRequest (required):
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
  Future<Dispute?> disputesChallenge(
    String id,
    DisputeChallengeRequest disputeChallengeRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    String? contentType,
    Future<void>? abortTrigger,
  }) async {
    final response = await disputesChallengeWithHttpInfo(
      id,
      disputeChallengeRequest,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
      contentType: contentType,
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
        'Dispute',
      ) as Dispute;
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/disputes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [DisputeRequest] disputeRequest (required):
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
  Future<Response> disputesCreateWithHttpInfo(
    DisputeRequest disputeRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/disputes';

    // ignore: prefer_final_locals
    Object? postBody = disputeRequest;

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

  /// Parameters:
  ///
  /// * [DisputeRequest] disputeRequest (required):
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
  Future<Dispute?> disputesCreate(
    DisputeRequest disputeRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await disputesCreateWithHttpInfo(
      disputeRequest,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'Dispute',
      ) as Dispute;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /v1/disputes/{id}/evidence' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] evidenceType (required):
  ///
  /// * [MultipartFile] file (required):
  ///   JPEG, PNG ou PDF, 5 Mo au plus : le type est vérifié sur le contenu du fichier.
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
  ///
  /// * [String] disputeId:
  ///   Facultatif ; doit être celui de l'URL.
  Future<Response> disputesEvidenceUploadWithHttpInfo(
    String id,
    String evidenceType,
    MultipartFile file, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    String? contentType,
    String? disputeId,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/disputes/{id}/evidence'.replaceAll('{id}', id);

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
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('PUT', Uri.parse(path));
    if (disputeId != null) {
      hasFields = true;
      mp.fields[r'dispute_id'] = parameterToString(disputeId);
    }
    if (evidenceType != null) {
      hasFields = true;
      mp.fields[r'evidence_type'] = parameterToString(evidenceType);
    }
    if (file != null) {
      hasFields = true;
      mp.fields[r'file'] = file.field;
      mp.files.add(file);
    }
    if (hasFields) {
      postBody = mp;
    }

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
  /// * [String] evidenceType (required):
  ///
  /// * [MultipartFile] file (required):
  ///   JPEG, PNG ou PDF, 5 Mo au plus : le type est vérifié sur le contenu du fichier.
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
  ///
  /// * [String] disputeId:
  ///   Facultatif ; doit être celui de l'URL.
  Future<DisputeEvidenceFile?> disputesEvidenceUpload(
    String id,
    String evidenceType,
    MultipartFile file, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    String? contentType,
    String? disputeId,
    Future<void>? abortTrigger,
  }) async {
    final response = await disputesEvidenceUploadWithHttpInfo(
      id,
      evidenceType,
      file,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
      contentType: contentType,
      disputeId: disputeId,
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
        'DisputeEvidenceFile',
      ) as DisputeEvidenceFile;
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
  Future<Response> disputesGetWithHttpInfo(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/disputes/{id}'.replaceAll('{id}', id);

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
  Future<Dispute?> disputesGet(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await disputesGetWithHttpInfo(
      id,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'Dispute',
      ) as Dispute;
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
  /// * [String] status:
  ///
  /// * [String] from:
  ///
  /// * [String] to:
  Future<Response> disputesListWithHttpInfo({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    String? limit,
    String? offset,
    String? paymentId,
    String? status,
    String? from,
    String? to,
    Future<void>? abortTrigger,
  }) async {
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
  Future<PageDispute?> disputesList({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    String? limit,
    String? offset,
    String? paymentId,
    String? status,
    String? from,
    String? to,
    Future<void>? abortTrigger,
  }) async {
    final response = await disputesListWithHttpInfo(
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
      limit: limit,
      offset: offset,
      paymentId: paymentId,
      status: status,
      from: from,
      to: to,
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
        'PageDispute',
      ) as PageDispute;
    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/fees' operation and returns the [Response].
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
  Future<Response> feesGetWithHttpInfo({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/fees';

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
  Future<Fees?> feesGet({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await feesGetWithHttpInfo(
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'Fees',
      ) as Fees;
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
  Future<Response> kycDocumentsWithHttpInfo({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
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
  Future<KycDocuments?> kycDocuments({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await kycDocumentsWithHttpInfo(
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'KycDocuments',
      ) as KycDocuments;
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/kyc/sessions' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [KycSessionRequest] kycSessionRequest (required):
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
  Future<Response> kycSessionsCreateWithHttpInfo(
    KycSessionRequest kycSessionRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kyc/sessions';

    // ignore: prefer_final_locals
    Object? postBody = kycSessionRequest;

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

  /// Parameters:
  ///
  /// * [KycSessionRequest] kycSessionRequest (required):
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
  Future<KycSession?> kycSessionsCreate(
    KycSessionRequest kycSessionRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await kycSessionsCreateWithHttpInfo(
      kycSessionRequest,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'KycSession',
      ) as KycSession;
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
  Future<Response> kycSessionsUploadsWithHttpInfo({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
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
  Future<KycSession?> kycSessionsUploads({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await kycSessionsUploadsWithHttpInfo(
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'KycSession',
      ) as KycSession;
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
  Future<Response> kycStatusWithHttpInfo({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
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
  Future<KycStatus?> kycStatus({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await kycStatusWithHttpInfo(
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'KycStatus',
      ) as KycStatus;
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
  Future<Response> kycSubmitWithHttpInfo({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
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
  Future<KycSession?> kycSubmit({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await kycSubmitWithHttpInfo(
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'KycSession',
      ) as KycSession;
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/offers' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [OfferRequest] offerRequest (required):
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
  Future<Response> offersCreateWithHttpInfo(
    OfferRequest offerRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/offers';

    // ignore: prefer_final_locals
    Object? postBody = offerRequest;

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

  /// Parameters:
  ///
  /// * [OfferRequest] offerRequest (required):
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
  Future<Offer?> offersCreate(
    OfferRequest offerRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await offersCreateWithHttpInfo(
      offerRequest,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'Offer',
      ) as Offer;
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
  Future<Response> offersDeleteWithHttpInfo(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/offers/{id}'.replaceAll('{id}', id);

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
  Future<Offer?> offersDelete(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await offersDeleteWithHttpInfo(
      id,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'Offer',
      ) as Offer;
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
  Future<Response> offersGetWithHttpInfo(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/offers/{id}'.replaceAll('{id}', id);

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
  Future<Offer?> offersGet(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await offersGetWithHttpInfo(
      id,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'Offer',
      ) as Offer;
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
  Future<Response> offersListWithHttpInfo({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    String? limit,
    String? offset,
    String? status,
    Future<void>? abortTrigger,
  }) async {
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
  Future<PageOffer?> offersList({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    String? limit,
    String? offset,
    String? status,
    Future<void>? abortTrigger,
  }) async {
    final response = await offersListWithHttpInfo(
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
      limit: limit,
      offset: offset,
      status: status,
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
        'PageOffer',
      ) as PageOffer;
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/offers/{id}/status' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [OfferStatusRequest] offerStatusRequest (required):
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
  Future<Response> offersStatusWithHttpInfo(
    String id,
    OfferStatusRequest offerStatusRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/offers/{id}/status'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = offerStatusRequest;

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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [OfferStatusRequest] offerStatusRequest (required):
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
  Future<Offer?> offersStatus(
    String id,
    OfferStatusRequest offerStatusRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await offersStatusWithHttpInfo(
      id,
      offerStatusRequest,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'Offer',
      ) as Offer;
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/payment-links' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [PaymentLinkRequest] paymentLinkRequest (required):
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
  Future<Response> paymentLinksCreateWithHttpInfo(
    PaymentLinkRequest paymentLinkRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payment-links';

    // ignore: prefer_final_locals
    Object? postBody = paymentLinkRequest;

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

  /// Parameters:
  ///
  /// * [PaymentLinkRequest] paymentLinkRequest (required):
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
  Future<PaymentLink?> paymentLinksCreate(
    PaymentLinkRequest paymentLinkRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await paymentLinksCreateWithHttpInfo(
      paymentLinkRequest,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'PaymentLink',
      ) as PaymentLink;
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
  Future<Response> paymentLinksGetWithHttpInfo(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payment-links/{id}'.replaceAll('{id}', id);

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
  Future<PaymentLink?> paymentLinksGet(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await paymentLinksGetWithHttpInfo(
      id,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'PaymentLink',
      ) as PaymentLink;
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
  Future<Response> paymentLinksListWithHttpInfo({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    String? limit,
    String? offset,
    String? status,
    String? from,
    String? to,
    Future<void>? abortTrigger,
  }) async {
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
  Future<PagePaymentLink?> paymentLinksList({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    String? limit,
    String? offset,
    String? status,
    String? from,
    String? to,
    Future<void>? abortTrigger,
  }) async {
    final response = await paymentLinksListWithHttpInfo(
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
      limit: limit,
      offset: offset,
      status: status,
      from: from,
      to: to,
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
        'PagePaymentLink',
      ) as PagePaymentLink;
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/payment-links/{id}/status' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [PaymentLinkStatusRequest] paymentLinkStatusRequest (required):
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
  Future<Response> paymentLinksStatusWithHttpInfo(
    String id,
    PaymentLinkStatusRequest paymentLinkStatusRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payment-links/{id}/status'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = paymentLinkStatusRequest;

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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [PaymentLinkStatusRequest] paymentLinkStatusRequest (required):
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
  Future<PaymentLink?> paymentLinksStatus(
    String id,
    PaymentLinkStatusRequest paymentLinkStatusRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await paymentLinksStatusWithHttpInfo(
      id,
      paymentLinkStatusRequest,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'PaymentLink',
      ) as PaymentLink;
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
  Future<Response> paymentsConsoleWithHttpInfo({
    String? lang,
    Future<void>? abortTrigger,
  }) async {
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
  Future<Error?> paymentsConsole({
    String? lang,
    Future<void>? abortTrigger,
  }) async {
    final response = await paymentsConsoleWithHttpInfo(
      lang: lang,
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
        'Error',
      ) as Error;
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/payments' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] idempotencyKey (required):
  ///   Valeur unique par opération. Un renvoi avec la même valeur et le même corps rend le résultat déjà obtenu ; un corps différent donne IDEMPOTENCY_CONFLICT.
  ///
  /// * [PaymentRequest] paymentRequest (required):
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
  Future<Response> paymentsCreateWithHttpInfo(
    String idempotencyKey,
    PaymentRequest paymentRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payments';

    // ignore: prefer_final_locals
    Object? postBody = paymentRequest;

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
    headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);

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

  /// Parameters:
  ///
  /// * [String] idempotencyKey (required):
  ///   Valeur unique par opération. Un renvoi avec la même valeur et le même corps rend le résultat déjà obtenu ; un corps différent donne IDEMPOTENCY_CONFLICT.
  ///
  /// * [PaymentRequest] paymentRequest (required):
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
  Future<Payment?> paymentsCreate(
    String idempotencyKey,
    PaymentRequest paymentRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await paymentsCreateWithHttpInfo(
      idempotencyKey,
      paymentRequest,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'Payment',
      ) as Payment;
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
  Future<Response> paymentsGetWithHttpInfo(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payments/{id}'.replaceAll('{id}', id);

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
  Future<PaymentDetail?> paymentsGet(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await paymentsGetWithHttpInfo(
      id,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'PaymentDetail',
      ) as PaymentDetail;
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
  Future<Response> paymentsListWithHttpInfo({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    String? limit,
    String? offset,
    String? cursor,
    List<String>? status,
    String? method,
    String? rail,
    String? from,
    String? to,
    String? q,
    String? customerPhone,
    Future<void>? abortTrigger,
  }) async {
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
  Future<PaymentList?> paymentsList({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    String? limit,
    String? offset,
    String? cursor,
    List<String>? status,
    String? method,
    String? rail,
    String? from,
    String? to,
    String? q,
    String? customerPhone,
    Future<void>? abortTrigger,
  }) async {
    final response = await paymentsListWithHttpInfo(
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
      limit: limit,
      offset: offset,
      cursor: cursor,
      status: status,
      method: method,
      rail: rail,
      from: from,
      to: to,
      q: q,
      customerPhone: customerPhone,
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
        'PaymentList',
      ) as PaymentList;
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/payout-destinations' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [PayoutDestinationRequest] payoutDestinationRequest (required):
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
  Future<Response> payoutDestinationsAddWithHttpInfo(
    PayoutDestinationRequest payoutDestinationRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payout-destinations';

    // ignore: prefer_final_locals
    Object? postBody = payoutDestinationRequest;

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

  /// Parameters:
  ///
  /// * [PayoutDestinationRequest] payoutDestinationRequest (required):
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
  Future<PayoutDestination?> payoutDestinationsAdd(
    PayoutDestinationRequest payoutDestinationRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await payoutDestinationsAddWithHttpInfo(
      payoutDestinationRequest,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'PayoutDestination',
      ) as PayoutDestination;
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
  Future<Response> payoutDestinationsListWithHttpInfo({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
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
  Future<CollectionPayoutDestination?> payoutDestinationsList({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await payoutDestinationsListWithHttpInfo(
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'CollectionPayoutDestination',
      ) as CollectionPayoutDestination;
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
  Future<Response> payoutDestinationsRemoveWithHttpInfo(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payout-destinations/{id}'.replaceAll('{id}', id);

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
  Future<void> payoutDestinationsRemove(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await payoutDestinationsRemoveWithHttpInfo(
      id,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
      abortTrigger: abortTrigger,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /v1/payout-destinations/{id}/resend' operation and returns the [Response].
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
  Future<Response> payoutDestinationsResendWithHttpInfo(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payout-destinations/{id}/resend'.replaceAll('{id}', id);

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
  Future<PayoutDestination?> payoutDestinationsResend(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await payoutDestinationsResendWithHttpInfo(
      id,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'PayoutDestination',
      ) as PayoutDestination;
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/payout-destinations/{id}/verify' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [DestinationCodeRequest] destinationCodeRequest (required):
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
  Future<Response> payoutDestinationsVerifyWithHttpInfo(
    String id,
    DestinationCodeRequest destinationCodeRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payout-destinations/{id}/verify'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = destinationCodeRequest;

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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [DestinationCodeRequest] destinationCodeRequest (required):
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
  Future<PayoutDestination?> payoutDestinationsVerify(
    String id,
    DestinationCodeRequest destinationCodeRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await payoutDestinationsVerifyWithHttpInfo(
      id,
      destinationCodeRequest,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'PayoutDestination',
      ) as PayoutDestination;
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/payout-quotes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [PayoutQuoteRequest] payoutQuoteRequest (required):
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
  Future<Response> payoutQuotesCreateWithHttpInfo(
    PayoutQuoteRequest payoutQuoteRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payout-quotes';

    // ignore: prefer_final_locals
    Object? postBody = payoutQuoteRequest;

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

  /// Parameters:
  ///
  /// * [PayoutQuoteRequest] payoutQuoteRequest (required):
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
  Future<PayoutQuote?> payoutQuotesCreate(
    PayoutQuoteRequest payoutQuoteRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await payoutQuotesCreateWithHttpInfo(
      payoutQuoteRequest,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'PayoutQuote',
      ) as PayoutQuote;
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/payouts' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] idempotencyKey (required):
  ///   Valeur unique par opération. Un renvoi avec la même valeur et le même corps rend le résultat déjà obtenu ; un corps différent donne IDEMPOTENCY_CONFLICT.
  ///
  /// * [PayoutRequest] payoutRequest (required):
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
  Future<Response> payoutsCreateWithHttpInfo(
    String idempotencyKey,
    PayoutRequest payoutRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payouts';

    // ignore: prefer_final_locals
    Object? postBody = payoutRequest;

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
    headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);

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

  /// Parameters:
  ///
  /// * [String] idempotencyKey (required):
  ///   Valeur unique par opération. Un renvoi avec la même valeur et le même corps rend le résultat déjà obtenu ; un corps différent donne IDEMPOTENCY_CONFLICT.
  ///
  /// * [PayoutRequest] payoutRequest (required):
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
  Future<Payout?> payoutsCreate(
    String idempotencyKey,
    PayoutRequest payoutRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await payoutsCreateWithHttpInfo(
      idempotencyKey,
      payoutRequest,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'Payout',
      ) as Payout;
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
  Future<Response> payoutsGetWithHttpInfo(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payouts/{id}'.replaceAll('{id}', id);

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
  Future<Payout?> payoutsGet(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await payoutsGetWithHttpInfo(
      id,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'Payout',
      ) as Payout;
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
  Future<Response> payoutsListWithHttpInfo({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
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
  Future<CollectionPayout?> payoutsList({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await payoutsListWithHttpInfo(
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'CollectionPayout',
      ) as CollectionPayout;
    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/payouts/{id}/receipt' operation and returns the [Response].
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
  Future<Response> payoutsReceiptWithHttpInfo(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payouts/{id}/receipt'.replaceAll('{id}', id);

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
  Future<PayoutReceipt?> payoutsReceipt(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await payoutsReceiptWithHttpInfo(
      id,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'PayoutReceipt',
      ) as PayoutReceipt;
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
  Future<Response> railsListWithHttpInfo({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
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
  Future<RailList?> railsList({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await railsListWithHttpInfo(
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'RailList',
      ) as RailList;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /v1/rails/{id}/enabled' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [RailSwitchRequest] railSwitchRequest (required):
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
  Future<Response> railsSetEnabledWithHttpInfo(
    String id,
    RailSwitchRequest railSwitchRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/rails/{id}/enabled'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = railSwitchRequest;

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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [RailSwitchRequest] railSwitchRequest (required):
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
  Future<Rail?> railsSetEnabled(
    String id,
    RailSwitchRequest railSwitchRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await railsSetEnabledWithHttpInfo(
      id,
      railSwitchRequest,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'Rail',
      ) as Rail;
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/refund-quotes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RefundQuoteRequest] refundQuoteRequest (required):
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
  Future<Response> refundQuotesCreateWithHttpInfo(
    RefundQuoteRequest refundQuoteRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/refund-quotes';

    // ignore: prefer_final_locals
    Object? postBody = refundQuoteRequest;

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

  /// Parameters:
  ///
  /// * [RefundQuoteRequest] refundQuoteRequest (required):
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
  Future<RefundQuote?> refundQuotesCreate(
    RefundQuoteRequest refundQuoteRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await refundQuotesCreateWithHttpInfo(
      refundQuoteRequest,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'RefundQuote',
      ) as RefundQuote;
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/refunds' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] idempotencyKey (required):
  ///   Valeur unique par opération. Un renvoi avec la même valeur et le même corps rend le résultat déjà obtenu ; un corps différent donne IDEMPOTENCY_CONFLICT.
  ///
  /// * [RefundRequest] refundRequest (required):
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
  Future<Response> refundsCreateWithHttpInfo(
    String idempotencyKey,
    RefundRequest refundRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/refunds';

    // ignore: prefer_final_locals
    Object? postBody = refundRequest;

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
    headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);

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

  /// Parameters:
  ///
  /// * [String] idempotencyKey (required):
  ///   Valeur unique par opération. Un renvoi avec la même valeur et le même corps rend le résultat déjà obtenu ; un corps différent donne IDEMPOTENCY_CONFLICT.
  ///
  /// * [RefundRequest] refundRequest (required):
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
  Future<Refund?> refundsCreate(
    String idempotencyKey,
    RefundRequest refundRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await refundsCreateWithHttpInfo(
      idempotencyKey,
      refundRequest,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'Refund',
      ) as Refund;
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
  Future<Response> refundsGetWithHttpInfo(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/refunds/{id}'.replaceAll('{id}', id);

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
  Future<Refund?> refundsGet(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await refundsGetWithHttpInfo(
      id,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'Refund',
      ) as Refund;
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
  Future<Response> refundsListWithHttpInfo({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    String? limit,
    String? offset,
    String? paymentId,
    String? status,
    String? from,
    String? to,
    Future<void>? abortTrigger,
  }) async {
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
  Future<PageRefund?> refundsList({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    String? limit,
    String? offset,
    String? paymentId,
    String? status,
    String? from,
    String? to,
    Future<void>? abortTrigger,
  }) async {
    final response = await refundsListWithHttpInfo(
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
      limit: limit,
      offset: offset,
      paymentId: paymentId,
      status: status,
      from: from,
      to: to,
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
        'PageRefund',
      ) as PageRefund;
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
  Future<Response> settingsGetWithHttpInfo({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
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
  Future<Settings?> settingsGet({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await settingsGetWithHttpInfo(
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'Settings',
      ) as Settings;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /v1/settings' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SettingsRequest] settingsRequest (required):
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
  Future<Response> settingsUpdateWithHttpInfo(
    SettingsRequest settingsRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/settings';

    // ignore: prefer_final_locals
    Object? postBody = settingsRequest;

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

  /// Parameters:
  ///
  /// * [SettingsRequest] settingsRequest (required):
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
  Future<Settings?> settingsUpdate(
    SettingsRequest settingsRequest, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await settingsUpdateWithHttpInfo(
      settingsRequest,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'Settings',
      ) as Settings;
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
  Future<Response> webhookEventAttemptsWithHttpInfo(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webhook-events/{id}/attempts'.replaceAll('{id}', id);

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
  Future<List<WebhookAttempt>?> webhookEventAttempts(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await webhookEventAttemptsWithHttpInfo(
      id,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
      return (await apiClient.deserializeAsync(
              responseBody, 'List<WebhookAttempt>') as List)
          .cast<WebhookAttempt>()
          .toList(growable: false);
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
  Future<Response> webhookEventRetryWithHttpInfo(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webhook-events/{id}/retry'.replaceAll('{id}', id);

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
  Future<WebhookAttempt?> webhookEventRetry(
    String id, {
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    Future<void>? abortTrigger,
  }) async {
    final response = await webhookEventRetryWithHttpInfo(
      id,
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
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
        'WebhookAttempt',
      ) as WebhookAttempt;
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
  Future<Response> webhookEventsListWithHttpInfo({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    String? limit,
    String? offset,
    String? createdAfter,
    String? createdBefore,
    String? objectId,
    String? eventId,
    Future<void>? abortTrigger,
  }) async {
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
  Future<WebhookEventList?> webhookEventsList({
    String? authorization,
    String? xAPIKey,
    String? cookie,
    String? x221ExternalRef,
    String? x221ProjectId,
    String? projectId,
    String? lang,
    String? acceptLanguage,
    String? limit,
    String? offset,
    String? createdAfter,
    String? createdBefore,
    String? objectId,
    String? eventId,
    Future<void>? abortTrigger,
  }) async {
    final response = await webhookEventsListWithHttpInfo(
      authorization: authorization,
      xAPIKey: xAPIKey,
      cookie: cookie,
      x221ExternalRef: x221ExternalRef,
      x221ProjectId: x221ProjectId,
      projectId: projectId,
      lang: lang,
      acceptLanguage: acceptLanguage,
      limit: limit,
      offset: offset,
      createdAfter: createdAfter,
      createdBefore: createdBefore,
      objectId: objectId,
      eventId: eventId,
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
        'WebhookEventList',
      ) as WebhookEventList;
    }
    return null;
  }
}
