//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OtherApi {
  OtherApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Generate Nonsense Word
  ///
  /// Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> generateNonsenseWordWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/words/nonsense/random';

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
    );
  }

  /// Generate Nonsense Word
  ///
  /// Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.
  Future<GenerateNonsenseWord200Response?> generateNonsenseWord() async {
    final response = await generateNonsenseWordWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GenerateNonsenseWord200Response',) as GenerateNonsenseWord200Response;
    
    }
    return null;
  }

  /// Insult
  ///
  /// Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The person's name.
  ///
  /// * [String] reason (required):
  ///   The reason for the praise/insult.
  Future<Response> insultWithHttpInfo(String name, String reason,) async {
    // ignore: prefer_const_declarations
    final path = r'/insult';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'name', name));
      queryParams.addAll(_queryParams('', 'reason', reason));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Insult
  ///
  /// Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The person's name.
  ///
  /// * [String] reason (required):
  ///   The reason for the praise/insult.
  Future<Praise200Response?> insult(String name, String reason,) async {
    final response = await insultWithHttpInfo(name, reason,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Praise200Response',) as Praise200Response;
    
    }
    return null;
  }

  /// Praise
  ///
  /// Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The person's name.
  ///
  /// * [String] reason (required):
  ///   The reason for the praise/insult.
  Future<Response> praiseWithHttpInfo(String name, String reason,) async {
    // ignore: prefer_const_declarations
    final path = r'/praise';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'name', name));
      queryParams.addAll(_queryParams('', 'reason', reason));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Praise
  ///
  /// Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The person's name.
  ///
  /// * [String] reason (required):
  ///   The reason for the praise/insult.
  Future<Praise200Response?> praise(String name, String reason,) async {
    final response = await praiseWithHttpInfo(name, reason,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Praise200Response',) as Praise200Response;
    
    }
    return null;
  }

  /// Rate Word
  ///
  /// Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] word (required):
  ///   The word to be rated.
  Future<Response> rateWordWithHttpInfo(String word,) async {
    // ignore: prefer_const_declarations
    final path = r'/words/rate';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'word', word));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Rate Word
  ///
  /// Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.
  ///
  /// Parameters:
  ///
  /// * [String] word (required):
  ///   The word to be rated.
  Future<RateWord200Response?> rateWord(String word,) async {
    final response = await rateWordWithHttpInfo(word,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RateWord200Response',) as RateWord200Response;
    
    }
    return null;
  }

  /// Search Gifs
  ///
  /// Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   A search query.
  ///
  /// * [int] number:
  ///   The number of results to retrieve between 1 and 10.
  Future<Response> searchGifsWithHttpInfo(String query, { int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/gif/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
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
    );
  }

  /// Search Gifs
  ///
  /// Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   A search query.
  ///
  /// * [int] number:
  ///   The number of results to retrieve between 1 and 10.
  Future<SearchGifs200Response?> searchGifs(String query, { int? number, }) async {
    final response = await searchGifsWithHttpInfo(query,  number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchGifs200Response',) as SearchGifs200Response;
    
    }
    return null;
  }
}
