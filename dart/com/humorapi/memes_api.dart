part of openapi.api;



class MemesApi {
  final ApiClient apiClient;

  MemesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Downvote a Meme
  ///
  /// Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
  Future<InlineResponse2008> downvoteMeme(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/memes/{id}/downvote".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2008') as InlineResponse2008;
    } else {
      return null;
    }
  }
  /// Random Meme
  ///
  /// Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
  Future<InlineResponse2003> randomMeme({ String keywords, bool keywordsInImage, String mediaType, int number, int minRating }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/memes/random".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(keywords != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "keywords", keywords));
    }
    if(keywordsInImage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "keywords-in-image", keywordsInImage));
    }
    if(mediaType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "media-type", mediaType));
    }
    if(number != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "number", number));
    }
    if(minRating != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "min-rating", minRating));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2003') as InlineResponse2003;
    } else {
      return null;
    }
  }
  /// Search Memes
  ///
  /// Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
  Future<InlineResponse2002> searchMemes({ String keywords, bool keywordsInImage, String mediaType, int number, int minRating, num offset }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/memes/search".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(keywords != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "keywords", keywords));
    }
    if(keywordsInImage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "keywords-in-image", keywordsInImage));
    }
    if(mediaType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "media-type", mediaType));
    }
    if(number != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "number", number));
    }
    if(minRating != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "min-rating", minRating));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2002') as InlineResponse2002;
    } else {
      return null;
    }
  }
  /// Upvote a Meme
  ///
  /// Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
  Future<InlineResponse2008> upvoteMeme(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/memes/{id}/upvote".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2008') as InlineResponse2008;
    } else {
      return null;
    }
  }
}
