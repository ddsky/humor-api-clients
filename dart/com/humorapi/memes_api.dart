//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MemesApi {
  MemesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/memes/{id}/downvote'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['apiKey'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
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
  Future<InlineResponse2008> downvoteMeme(int id,) async {
    final response = await downvoteMemeWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineResponse2008',) as InlineResponse2008;
    
    }
    return Future<InlineResponse2008>.value();
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
  Future<Response> randomMemeWithHttpInfo({ String keywords, bool keywordsInImage, String mediaType, int number, int minRating, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/memes/random';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (keywords != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'keywords', keywords));
    }
    if (keywordsInImage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'keywords-in-image', keywordsInImage));
    }
    if (mediaType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'media-type', mediaType));
    }
    if (number != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'number', number));
    }
    if (minRating != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'min-rating', minRating));
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
  Future<InlineResponse2003> randomMeme({ String keywords, bool keywordsInImage, String mediaType, int number, int minRating, }) async {
    final response = await randomMemeWithHttpInfo( keywords: keywords, keywordsInImage: keywordsInImage, mediaType: mediaType, number: number, minRating: minRating, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineResponse2003',) as InlineResponse2003;
    
    }
    return Future<InlineResponse2003>.value();
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
  Future<Response> searchMemesWithHttpInfo({ String keywords, bool keywordsInImage, String mediaType, int number, int minRating, num offset, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/memes/search';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (keywords != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'keywords', keywords));
    }
    if (keywordsInImage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'keywords-in-image', keywordsInImage));
    }
    if (mediaType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'media-type', mediaType));
    }
    if (number != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'number', number));
    }
    if (minRating != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'min-rating', minRating));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
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
  Future<InlineResponse2002> searchMemes({ String keywords, bool keywordsInImage, String mediaType, int number, int minRating, num offset, }) async {
    final response = await searchMemesWithHttpInfo( keywords: keywords, keywordsInImage: keywordsInImage, mediaType: mediaType, number: number, minRating: minRating, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineResponse2002',) as InlineResponse2002;
    
    }
    return Future<InlineResponse2002>.value();
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
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/memes/{id}/upvote'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['apiKey'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
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
  Future<InlineResponse2008> upvoteMeme(int id,) async {
    final response = await upvoteMemeWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineResponse2008',) as InlineResponse2008;
    
    }
    return Future<InlineResponse2008>.value();
  }
}
