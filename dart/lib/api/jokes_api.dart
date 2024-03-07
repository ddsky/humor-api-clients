//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class JokesApi {
  JokesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Analyze Joke
  ///
  /// Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] body:
  ///   Post the joke as plain text.
  Future<Response> analyzeJokeWithHttpInfo({ String? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/jokes/analyze';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['text/plain'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Analyze Joke
  ///
  /// Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.
  ///
  /// Parameters:
  ///
  /// * [String] body:
  ///   Post the joke as plain text.
  Future<AnalyzeJoke200Response?> analyzeJoke({ String? body, }) async {
    final response = await analyzeJokeWithHttpInfo( body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AnalyzeJoke200Response',) as AnalyzeJoke200Response;
    
    }
    return null;
  }

  /// Downvote a Joke
  ///
  /// Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The object's id.
  Future<Response> downvoteJokeWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/jokes/{id}/downvote'
      .replaceAll('{id}', id.toString());

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
    );
  }

  /// Downvote a Joke
  ///
  /// Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The object's id.
  Future<SubmitJoke200Response?> downvoteJoke(int id,) async {
    final response = await downvoteJokeWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SubmitJoke200Response',) as SubmitJoke200Response;
    
    }
    return null;
  }

  /// Random Joke
  ///
  /// Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] keywords:
  ///   A comma separated list of keywords.
  ///
  /// * [String] includeTags:
  ///   A comma separated list of tags that the joke must have.
  ///
  /// * [String] excludeTags:
  ///   A comma separated list of tags that the joke must not have.
  ///
  /// * [int] minRating:
  ///   The minimum rating between 0 and 10 the result should have.
  ///
  /// * [int] maxLength:
  ///   The maximum number of letters in the joke.
  Future<Response> randomJokeWithHttpInfo({ String? keywords, String? includeTags, String? excludeTags, int? minRating, int? maxLength, }) async {
    // ignore: prefer_const_declarations
    final path = r'/jokes/random';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (keywords != null) {
      queryParams.addAll(_queryParams('', 'keywords', keywords));
    }
    if (includeTags != null) {
      queryParams.addAll(_queryParams('', 'include-tags', includeTags));
    }
    if (excludeTags != null) {
      queryParams.addAll(_queryParams('', 'exclude-tags', excludeTags));
    }
    if (minRating != null) {
      queryParams.addAll(_queryParams('', 'min-rating', minRating));
    }
    if (maxLength != null) {
      queryParams.addAll(_queryParams('', 'max-length', maxLength));
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

  /// Random Joke
  ///
  /// Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.
  ///
  /// Parameters:
  ///
  /// * [String] keywords:
  ///   A comma separated list of keywords.
  ///
  /// * [String] includeTags:
  ///   A comma separated list of tags that the joke must have.
  ///
  /// * [String] excludeTags:
  ///   A comma separated list of tags that the joke must not have.
  ///
  /// * [int] minRating:
  ///   The minimum rating between 0 and 10 the result should have.
  ///
  /// * [int] maxLength:
  ///   The maximum number of letters in the joke.
  Future<RandomJoke200Response?> randomJoke({ String? keywords, String? includeTags, String? excludeTags, int? minRating, int? maxLength, }) async {
    final response = await randomJokeWithHttpInfo( keywords: keywords, includeTags: includeTags, excludeTags: excludeTags, minRating: minRating, maxLength: maxLength, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RandomJoke200Response',) as RandomJoke200Response;
    
    }
    return null;
  }

  /// Search Jokes
  ///
  /// Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] keywords:
  ///   A comma separated list of keywords.
  ///
  /// * [String] includeTags:
  ///   A comma separated list of tags that the joke must have.
  ///
  /// * [String] excludeTags:
  ///   A comma separated list of tags that the joke must not have.
  ///
  /// * [int] number:
  ///   The number of results to retrieve between 1 and 10.
  ///
  /// * [int] minRating:
  ///   The minimum rating between 0 and 10 the result should have.
  ///
  /// * [int] maxLength:
  ///   The maximum number of letters in the joke.
  ///
  /// * [num] offset:
  ///   The number of results to skip.
  Future<Response> searchJokesWithHttpInfo({ String? keywords, String? includeTags, String? excludeTags, int? number, int? minRating, int? maxLength, num? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/jokes/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (keywords != null) {
      queryParams.addAll(_queryParams('', 'keywords', keywords));
    }
    if (includeTags != null) {
      queryParams.addAll(_queryParams('', 'include-tags', includeTags));
    }
    if (excludeTags != null) {
      queryParams.addAll(_queryParams('', 'exclude-tags', excludeTags));
    }
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }
    if (minRating != null) {
      queryParams.addAll(_queryParams('', 'min-rating', minRating));
    }
    if (maxLength != null) {
      queryParams.addAll(_queryParams('', 'max-length', maxLength));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
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

  /// Search Jokes
  ///
  /// Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.
  ///
  /// Parameters:
  ///
  /// * [String] keywords:
  ///   A comma separated list of keywords.
  ///
  /// * [String] includeTags:
  ///   A comma separated list of tags that the joke must have.
  ///
  /// * [String] excludeTags:
  ///   A comma separated list of tags that the joke must not have.
  ///
  /// * [int] number:
  ///   The number of results to retrieve between 1 and 10.
  ///
  /// * [int] minRating:
  ///   The minimum rating between 0 and 10 the result should have.
  ///
  /// * [int] maxLength:
  ///   The maximum number of letters in the joke.
  ///
  /// * [num] offset:
  ///   The number of results to skip.
  Future<SearchJokes200Response?> searchJokes({ String? keywords, String? includeTags, String? excludeTags, int? number, int? minRating, int? maxLength, num? offset, }) async {
    final response = await searchJokesWithHttpInfo( keywords: keywords, includeTags: includeTags, excludeTags: excludeTags, number: number, minRating: minRating, maxLength: maxLength, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchJokes200Response',) as SearchJokes200Response;
    
    }
    return null;
  }

  /// Submit Joke
  ///
  /// Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] body:
  ///   Post the joke as plain text.
  Future<Response> submitJokeWithHttpInfo({ String? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/jokes';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['text/plain'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Submit Joke
  ///
  /// Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.
  ///
  /// Parameters:
  ///
  /// * [String] body:
  ///   Post the joke as plain text.
  Future<SubmitJoke200Response?> submitJoke({ String? body, }) async {
    final response = await submitJokeWithHttpInfo( body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SubmitJoke200Response',) as SubmitJoke200Response;
    
    }
    return null;
  }

  /// Upvote a Joke
  ///
  /// Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The object's id.
  Future<Response> upvoteJokeWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/jokes/{id}/upvote'
      .replaceAll('{id}', id.toString());

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
    );
  }

  /// Upvote a Joke
  ///
  /// Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The object's id.
  Future<SubmitJoke200Response?> upvoteJoke(int id,) async {
    final response = await upvoteJokeWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SubmitJoke200Response',) as SubmitJoke200Response;
    
    }
    return null;
  }
}
