//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SignalementsApi {
  SignalementsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Signaler une erreur de donnée (Turnstile, 5 envois par heure et par adresse IP, idempotent)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] idempotencyKey (required):
  ///   Une valeur par signalement : un renvoi avec la même clé renvoie le même signalement.
  ///
  /// * [ReportInputBody] reportInputBody (required):
  Future<Response> createSignalementWithHttpInfo(String idempotencyKey, ReportInputBody reportInputBody, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/signalements';

    // ignore: prefer_final_locals
    Object? postBody = reportInputBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Signaler une erreur de donnée (Turnstile, 5 envois par heure et par adresse IP, idempotent)
  ///
  /// Parameters:
  ///
  /// * [String] idempotencyKey (required):
  ///   Une valeur par signalement : un renvoi avec la même clé renvoie le même signalement.
  ///
  /// * [ReportInputBody] reportInputBody (required):
  Future<Signalement?> createSignalement(String idempotencyKey, ReportInputBody reportInputBody, { Future<void>? abortTrigger, }) async {
    final response = await createSignalementWithHttpInfo(idempotencyKey, reportInputBody, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Signalement',) as Signalement;
    
    }
    return null;
  }

  /// Statut public d’un signalement (sans e-mail)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] numero (required):
  Future<Response> getSignalementWithHttpInfo(String numero, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/signalements/{numero}'
      .replaceAll('{numero}', numero);

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

  /// Statut public d’un signalement (sans e-mail)
  ///
  /// Parameters:
  ///
  /// * [String] numero (required):
  Future<Signalement?> getSignalement(String numero, { Future<void>? abortTrigger, }) async {
    final response = await getSignalementWithHttpInfo(numero, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Signalement',) as Signalement;
    
    }
    return null;
  }
}
