# MemesApi

All URIs are relative to *https://api.humorapi.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**downvoteMeme**](MemesApi.md#downvoteMeme) | **POST** /memes/{id}/downvote | Downvote a Meme |
| [**randomMeme**](MemesApi.md#randomMeme) | **GET** /memes/random | Random Meme |
| [**searchMemes**](MemesApi.md#searchMemes) | **GET** /memes/search | Search Memes |
| [**upvoteMeme**](MemesApi.md#upvoteMeme) | **POST** /memes/{id}/upvote | Upvote a Meme |


<a id="downvoteMeme"></a>
# **downvoteMeme**
> SubmitJoke200Response downvoteMeme(id)

Downvote a Meme

Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.

### Example
```java
// Import classes:
import com.humorapi.client.ApiClient;
import com.humorapi.client.ApiException;
import com.humorapi.client.Configuration;
import com.humorapi.client.auth.*;
import com.humorapi.client.models.*;
import com.humorapi.MemesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.humorapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    MemesApi apiInstance = new MemesApi(defaultClient);
    Integer id = 1; // Integer | The object's id.
    try {
      SubmitJoke200Response result = apiInstance.downvoteMeme(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MemesApi#downvoteMeme");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The object&#39;s id. | |

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful downvote |  -  |

<a id="randomMeme"></a>
# **randomMeme**
> RandomMeme200Response randomMeme(keywords, keywordsInImage, mediaType, number, minRating)

Random Meme

Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.

### Example
```java
// Import classes:
import com.humorapi.client.ApiClient;
import com.humorapi.client.ApiException;
import com.humorapi.client.Configuration;
import com.humorapi.client.auth.*;
import com.humorapi.client.models.*;
import com.humorapi.MemesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.humorapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    MemesApi apiInstance = new MemesApi(defaultClient);
    String keywords = "rocket"; // String | A comma separated list of keywords.
    Boolean keywordsInImage = false; // Boolean | Whether the keywords should be found in the meme's image.
    String mediaType = "image"; // String | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
    Integer number = 3; // Integer | The number of results to retrieve between 1 and 10.
    Integer minRating = 7; // Integer | The minimum rating between 0 and 10 the result should have.
    try {
      RandomMeme200Response result = apiInstance.randomMeme(keywords, keywordsInImage, mediaType, number, minRating);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MemesApi#randomMeme");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **keywords** | **String**| A comma separated list of keywords. | [optional] |
| **keywordsInImage** | **Boolean**| Whether the keywords should be found in the meme&#39;s image. | [optional] |
| **mediaType** | **String**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] [enum: image, video, jpg, gif, png, mp4] |
| **number** | **Integer**| The number of results to retrieve between 1 and 10. | [optional] |
| **minRating** | **Integer**| The minimum rating between 0 and 10 the result should have. | [optional] |

### Return type

[**RandomMeme200Response**](RandomMeme200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Random Meme Response |  -  |

<a id="searchMemes"></a>
# **searchMemes**
> SearchMemes200Response searchMemes(keywords, keywordsInImage, mediaType, number, minRating, offset)

Search Memes

Search for memes. See https://humorapi.com/docs/#Search-Memes for more.

### Example
```java
// Import classes:
import com.humorapi.client.ApiClient;
import com.humorapi.client.ApiException;
import com.humorapi.client.Configuration;
import com.humorapi.client.auth.*;
import com.humorapi.client.models.*;
import com.humorapi.MemesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.humorapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    MemesApi apiInstance = new MemesApi(defaultClient);
    String keywords = "rocket"; // String | A comma separated list of keywords.
    Boolean keywordsInImage = false; // Boolean | Whether the keywords should be found in the meme's image.
    String mediaType = "image"; // String | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
    Integer number = 3; // Integer | The number of results to retrieve between 1 and 10.
    Integer minRating = 7; // Integer | The minimum rating between 0 and 10 the result should have.
    BigDecimal offset = new BigDecimal(78); // BigDecimal | The number of results to skip.
    try {
      SearchMemes200Response result = apiInstance.searchMemes(keywords, keywordsInImage, mediaType, number, minRating, offset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MemesApi#searchMemes");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **keywords** | **String**| A comma separated list of keywords. | [optional] |
| **keywordsInImage** | **Boolean**| Whether the keywords should be found in the meme&#39;s image. | [optional] |
| **mediaType** | **String**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] [enum: image, video, jpg, gif, png, mp4] |
| **number** | **Integer**| The number of results to retrieve between 1 and 10. | [optional] |
| **minRating** | **Integer**| The minimum rating between 0 and 10 the result should have. | [optional] |
| **offset** | **BigDecimal**| The number of results to skip. | [optional] |

### Return type

[**SearchMemes200Response**](SearchMemes200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Meme Search Response |  -  |

<a id="upvoteMeme"></a>
# **upvoteMeme**
> SubmitJoke200Response upvoteMeme(id)

Upvote a Meme

Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.

### Example
```java
// Import classes:
import com.humorapi.client.ApiClient;
import com.humorapi.client.ApiException;
import com.humorapi.client.Configuration;
import com.humorapi.client.auth.*;
import com.humorapi.client.models.*;
import com.humorapi.MemesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.humorapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    MemesApi apiInstance = new MemesApi(defaultClient);
    Integer id = 1; // Integer | The object's id.
    try {
      SubmitJoke200Response result = apiInstance.upvoteMeme(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MemesApi#upvoteMeme");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The object&#39;s id. | |

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful upvote |  -  |

