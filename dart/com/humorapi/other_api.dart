//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OtherApi {
  OtherApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['apiKey'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Generate Nonsense Word
  ///
  /// Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.
  Future<InlineResponse2007> generateNonsenseWord() async {
    final response = await generateNonsenseWordWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineResponse2007',) as InlineResponse2007;
    
    }
    return Future<InlineResponse2007>.value();
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
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }
    if (reason == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: reason');
    }

    // ignore: prefer_const_declarations
    final path = r'/insult';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'name', name));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'reason', reason));

    const authNames = <String>['apiKey'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
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
  Future<InlineResponse2005> insult(String name, String reason,) async {
    final response = await insultWithHttpInfo(name, reason,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineResponse2005',) as InlineResponse2005;
    
    }
    return Future<InlineResponse2005>.value();
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
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }
    if (reason == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: reason');
    }

    // ignore: prefer_const_declarations
    final path = r'/praise';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'name', name));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'reason', reason));

    const authNames = <String>['apiKey'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
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
  Future<InlineResponse2005> praise(String name, String reason,) async {
    final response = await praiseWithHttpInfo(name, reason,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineResponse2005',) as InlineResponse2005;
    
    }
    return Future<InlineResponse2005>.value();
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
    // Verify required params are set.
    if (word == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: word');
    }

    // ignore: prefer_const_declarations
    final path = r'/words/rate';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'word', word));

    const authNames = <String>['apiKey'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
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
  Future<InlineResponse2006> rateWord(String word,) async {
    final response = await rateWordWithHttpInfo(word,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineResponse2006',) as InlineResponse2006;
    
    }
    return Future<InlineResponse2006>.value();
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
  Future<Response> searchGifsWithHttpInfo(String query, { int number, }) async {
    // Verify required params are set.
    if (query == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: query');
    }

    // ignore: prefer_const_declarations
    final path = r'/gif/search';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'query', query));
    if (number != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'number', number));
    }

    const authNames = <String>['apiKey'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
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
  Future<InlineResponse2001> searchGifs(String query, { int number, }) async {
    final response = await searchGifsWithHttpInfo(query,  number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineResponse2001',) as InlineResponse2001;
    
    }
    return Future<InlineResponse2001>.value();
  }
}
