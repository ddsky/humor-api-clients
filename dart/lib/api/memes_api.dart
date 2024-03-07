//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MemesApi {
  MemesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Downvote a Meme
  ///
  /// Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The object's id.
  Future<Response> downvoteMemeWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/memes/{id}/downvote'
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

  /// Downvote a Meme
  ///
  /// Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The object's id.
  Future<SubmitJoke200Response?> downvoteMeme(int id,) async {
    final response = await downvoteMemeWithHttpInfo(id,);
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

  /// Random Meme
  ///
  /// Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] keywords:
  ///   A comma separated list of keywords.
  ///
  /// * [bool] keywordsInImage:
  ///   Whether the keywords should be found in the meme's image.
  ///
  /// * [String] mediaType:
  ///   The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
  ///
  /// * [int] number:
  ///   The number of results to retrieve between 1 and 10.
  ///
  /// * [int] minRating:
  ///   The minimum rating between 0 and 10 the result should have.
  Future<Response> randomMemeWithHttpInfo({ String? keywords, bool? keywordsInImage, String? mediaType, int? number, int? minRating, }) async {
    // ignore: prefer_const_declarations
    final path = r'/memes/random';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (keywords != null) {
      queryParams.addAll(_queryParams('', 'keywords', keywords));
    }
    if (keywordsInImage != null) {
      queryParams.addAll(_queryParams('', 'keywords-in-image', keywordsInImage));
    }
    if (mediaType != null) {
      queryParams.addAll(_queryParams('', 'media-type', mediaType));
    }
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }
    if (minRating != null) {
      queryParams.addAll(_queryParams('', 'min-rating', minRating));
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

  /// Random Meme
  ///
  /// Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
  ///
  /// Parameters:
  ///
  /// * [String] keywords:
  ///   A comma separated list of keywords.
  ///
  /// * [bool] keywordsInImage:
  ///   Whether the keywords should be found in the meme's image.
  ///
  /// * [String] mediaType:
  ///   The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
  ///
  /// * [int] number:
  ///   The number of results to retrieve between 1 and 10.
  ///
  /// * [int] minRating:
  ///   The minimum rating between 0 and 10 the result should have.
  Future<RandomMeme200Response?> randomMeme({ String? keywords, bool? keywordsInImage, String? mediaType, int? number, int? minRating, }) async {
    final response = await randomMemeWithHttpInfo( keywords: keywords, keywordsInImage: keywordsInImage, mediaType: mediaType, number: number, minRating: minRating, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RandomMeme200Response',) as RandomMeme200Response;
    
    }
    return null;
  }

  /// Search Memes
  ///
  /// Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] keywords:
  ///   A comma separated list of keywords.
  ///
  /// * [bool] keywordsInImage:
  ///   Whether the keywords should be found in the meme's image.
  ///
  /// * [String] mediaType:
  ///   The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
  ///
  /// * [int] number:
  ///   The number of results to retrieve between 1 and 10.
  ///
  /// * [int] minRating:
  ///   The minimum rating between 0 and 10 the result should have.
  ///
  /// * [num] offset:
  ///   The number of results to skip.
  Future<Response> searchMemesWithHttpInfo({ String? keywords, bool? keywordsInImage, String? mediaType, int? number, int? minRating, num? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/memes/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (keywords != null) {
      queryParams.addAll(_queryParams('', 'keywords', keywords));
    }
    if (keywordsInImage != null) {
      queryParams.addAll(_queryParams('', 'keywords-in-image', keywordsInImage));
    }
    if (mediaType != null) {
      queryParams.addAll(_queryParams('', 'media-type', mediaType));
    }
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }
    if (minRating != null) {
      queryParams.addAll(_queryParams('', 'min-rating', minRating));
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

  /// Search Memes
  ///
  /// Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
  ///
  /// Parameters:
  ///
  /// * [String] keywords:
  ///   A comma separated list of keywords.
  ///
  /// * [bool] keywordsInImage:
  ///   Whether the keywords should be found in the meme's image.
  ///
  /// * [String] mediaType:
  ///   The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
  ///
  /// * [int] number:
  ///   The number of results to retrieve between 1 and 10.
  ///
  /// * [int] minRating:
  ///   The minimum rating between 0 and 10 the result should have.
  ///
  /// * [num] offset:
  ///   The number of results to skip.
  Future<SearchMemes200Response?> searchMemes({ String? keywords, bool? keywordsInImage, String? mediaType, int? number, int? minRating, num? offset, }) async {
    final response = await searchMemesWithHttpInfo( keywords: keywords, keywordsInImage: keywordsInImage, mediaType: mediaType, number: number, minRating: minRating, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchMemes200Response',) as SearchMemes200Response;
    
    }
    return null;
  }

  /// Upvote a Meme
  ///
  /// Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The object's id.
  Future<Response> upvoteMemeWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/memes/{id}/upvote'
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

  /// Upvote a Meme
  ///
  /// Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The object's id.
  Future<SubmitJoke200Response?> upvoteMeme(int id,) async {
    final response = await upvoteMemeWithHttpInfo(id,);
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
