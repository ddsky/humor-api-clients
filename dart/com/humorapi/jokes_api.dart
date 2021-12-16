part of openapi.api;



class JokesApi {
  final ApiClient apiClient;

  JokesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Analyze Joke
  ///
  /// Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.
  Future<InlineResponse2009> analyzeJoke({ String body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/jokes/analyze".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["text/plain"];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2009') as InlineResponse2009;
    } else {
      return null;
    }
  }
  /// Downvote a Joke
  ///
  /// Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.
  Future<InlineResponse2008> downvoteJoke(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/jokes/{id}/downvote".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Random Joke
  ///
  /// Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.
  Future<InlineResponse2004> randomJoke({ String keywords, String includeTags, String excludeTags, int minRating, int maxLength }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/jokes/random".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(keywords != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "keywords", keywords));
    }
    if(includeTags != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "include-tags", includeTags));
    }
    if(excludeTags != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "exclude-tags", excludeTags));
    }
    if(minRating != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "min-rating", minRating));
    }
    if(maxLength != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "max-length", maxLength));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2004') as InlineResponse2004;
    } else {
      return null;
    }
  }
  /// Search Jokes
  ///
  /// Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.
  Future<InlineResponse200> searchJokes({ String keywords, String includeTags, String excludeTags, int number, int minRating, int maxLength, num offset }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/jokes/search".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(keywords != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "keywords", keywords));
    }
    if(includeTags != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "include-tags", includeTags));
    }
    if(excludeTags != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "exclude-tags", excludeTags));
    }
    if(number != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "number", number));
    }
    if(minRating != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "min-rating", minRating));
    }
    if(maxLength != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "max-length", maxLength));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse200') as InlineResponse200;
    } else {
      return null;
    }
  }
  /// Submit Joke
  ///
  /// Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.
  Future<InlineResponse2008> submitJoke({ String body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/jokes".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["text/plain"];

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
  /// Upvote a Joke
  ///
  /// Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.
  Future<InlineResponse2008> upvoteJoke(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/jokes/{id}/upvote".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
