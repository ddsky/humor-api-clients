# JokesApi

All URIs are relative to *https://api.humorapi.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**analyzeJoke**](JokesApi.md#analyzeJoke) | **POST** /jokes/analyze | Analyze Joke |
| [**downvoteJoke**](JokesApi.md#downvoteJoke) | **POST** /jokes/{id}/downvote | Downvote a Joke |
| [**randomJoke**](JokesApi.md#randomJoke) | **GET** /jokes/random | Random Joke |
| [**searchJokes**](JokesApi.md#searchJokes) | **GET** /jokes/search | Search Jokes |
| [**submitJoke**](JokesApi.md#submitJoke) | **POST** /jokes | Submit Joke |
| [**upvoteJoke**](JokesApi.md#upvoteJoke) | **POST** /jokes/{id}/upvote | Upvote a Joke |


<a id="analyzeJoke"></a>
# **analyzeJoke**
> AnalyzeJoke200Response analyzeJoke(body)

Analyze Joke

Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.

### Example
```java
// Import classes:
import com.humorapi.client.ApiClient;
import com.humorapi.client.ApiException;
import com.humorapi.client.Configuration;
import com.humorapi.client.auth.*;
import com.humorapi.client.models.*;
import com.humorapi.JokesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.humorapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    JokesApi apiInstance = new JokesApi(defaultClient);
    String body = "body_example"; // String | Post the joke as plain text.
    try {
      AnalyzeJoke200Response result = apiInstance.analyzeJoke(body);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JokesApi#analyzeJoke");
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
| **body** | **String**| Post the joke as plain text. | [optional] |

### Return type

[**AnalyzeJoke200Response**](AnalyzeJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful analysis |  -  |

<a id="downvoteJoke"></a>
# **downvoteJoke**
> SubmitJoke200Response downvoteJoke(id)

Downvote a Joke

Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.

### Example
```java
// Import classes:
import com.humorapi.client.ApiClient;
import com.humorapi.client.ApiException;
import com.humorapi.client.Configuration;
import com.humorapi.client.auth.*;
import com.humorapi.client.models.*;
import com.humorapi.JokesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.humorapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    JokesApi apiInstance = new JokesApi(defaultClient);
    Integer id = 1; // Integer | The object's id.
    try {
      SubmitJoke200Response result = apiInstance.downvoteJoke(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JokesApi#downvoteJoke");
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

<a id="randomJoke"></a>
# **randomJoke**
> RandomJoke200Response randomJoke(keywords, includeTags, excludeTags, minRating, maxLength)

Random Joke

Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.

### Example
```java
// Import classes:
import com.humorapi.client.ApiClient;
import com.humorapi.client.ApiException;
import com.humorapi.client.Configuration;
import com.humorapi.client.auth.*;
import com.humorapi.client.models.*;
import com.humorapi.JokesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.humorapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    JokesApi apiInstance = new JokesApi(defaultClient);
    String keywords = "rocket"; // String | A comma separated list of keywords.
    String includeTags = "clean"; // String | A comma separated list of tags that the joke must have.
    String excludeTags = "clean"; // String | A comma separated list of tags that the joke must not have.
    Integer minRating = 7; // Integer | The minimum rating between 0 and 10 the result should have.
    Integer maxLength = 200; // Integer | The maximum number of letters in the joke.
    try {
      RandomJoke200Response result = apiInstance.randomJoke(keywords, includeTags, excludeTags, minRating, maxLength);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JokesApi#randomJoke");
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
| **includeTags** | **String**| A comma separated list of tags that the joke must have. | [optional] [enum: clean, yo_mama, chuck_norris, nsfw, racist, sexist, sexual, political, religious, knock_knock, christmas, nerdy, analogy, one_liner, dark, jewish, school, sport, law, kids, animal, relationship, insults, blondes, deep_thoughts, food, holiday] |
| **excludeTags** | **String**| A comma separated list of tags that the joke must not have. | [optional] [enum: clean, yo_mama, chuck_norris, nsfw, racist, sexist, sexual, political, religious, knock_knock, christmas, nerdy, analogy, one_liner, dark, jewish, school, sport, law, kids, animal, relationship, insults, blondes, deep_thoughts, food, holiday] |
| **minRating** | **Integer**| The minimum rating between 0 and 10 the result should have. | [optional] |
| **maxLength** | **Integer**| The maximum number of letters in the joke. | [optional] |

### Return type

[**RandomJoke200Response**](RandomJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Random Joke Response |  -  |

<a id="searchJokes"></a>
# **searchJokes**
> SearchJokes200Response searchJokes(keywords, includeTags, excludeTags, number, minRating, maxLength, offset)

Search Jokes

Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.

### Example
```java
// Import classes:
import com.humorapi.client.ApiClient;
import com.humorapi.client.ApiException;
import com.humorapi.client.Configuration;
import com.humorapi.client.auth.*;
import com.humorapi.client.models.*;
import com.humorapi.JokesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.humorapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    JokesApi apiInstance = new JokesApi(defaultClient);
    String keywords = "rocket"; // String | A comma separated list of keywords.
    String includeTags = "clean"; // String | A comma separated list of tags that the joke must have.
    String excludeTags = "clean"; // String | A comma separated list of tags that the joke must not have.
    Integer number = 3; // Integer | The number of results to retrieve between 1 and 10.
    Integer minRating = 7; // Integer | The minimum rating between 0 and 10 the result should have.
    Integer maxLength = 200; // Integer | The maximum number of letters in the joke.
    BigDecimal offset = new BigDecimal(78); // BigDecimal | The number of results to skip.
    try {
      SearchJokes200Response result = apiInstance.searchJokes(keywords, includeTags, excludeTags, number, minRating, maxLength, offset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JokesApi#searchJokes");
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
| **includeTags** | **String**| A comma separated list of tags that the joke must have. | [optional] [enum: clean, yo_mama, chuck_norris, nsfw, racist, sexist, sexual, political, religious, knock_knock, christmas, nerdy, analogy, one_liner, dark, jewish, school, sport, law, kids, animal, relationship, insults, blondes, deep_thoughts, food, holiday] |
| **excludeTags** | **String**| A comma separated list of tags that the joke must not have. | [optional] [enum: clean, yo_mama, chuck_norris, nsfw, racist, sexist, sexual, political, religious, knock_knock, christmas, nerdy, analogy, one_liner, dark, jewish, school, sport, law, kids, animal, relationship, insults, blondes, deep_thoughts, food, holiday] |
| **number** | **Integer**| The number of results to retrieve between 1 and 10. | [optional] |
| **minRating** | **Integer**| The minimum rating between 0 and 10 the result should have. | [optional] |
| **maxLength** | **Integer**| The maximum number of letters in the joke. | [optional] |
| **offset** | **BigDecimal**| The number of results to skip. | [optional] |

### Return type

[**SearchJokes200Response**](SearchJokes200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Joke Search Response |  -  |

<a id="submitJoke"></a>
# **submitJoke**
> SubmitJoke200Response submitJoke(body)

Submit Joke

Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.

### Example
```java
// Import classes:
import com.humorapi.client.ApiClient;
import com.humorapi.client.ApiException;
import com.humorapi.client.Configuration;
import com.humorapi.client.auth.*;
import com.humorapi.client.models.*;
import com.humorapi.JokesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.humorapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    JokesApi apiInstance = new JokesApi(defaultClient);
    String body = "body_example"; // String | Post the joke as plain text.
    try {
      SubmitJoke200Response result = apiInstance.submitJoke(body);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JokesApi#submitJoke");
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
| **body** | **String**| Post the joke as plain text. | [optional] |

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful submission. |  -  |

<a id="upvoteJoke"></a>
# **upvoteJoke**
> SubmitJoke200Response upvoteJoke(id)

Upvote a Joke

Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.

### Example
```java
// Import classes:
import com.humorapi.client.ApiClient;
import com.humorapi.client.ApiException;
import com.humorapi.client.Configuration;
import com.humorapi.client.auth.*;
import com.humorapi.client.models.*;
import com.humorapi.JokesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.humorapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    JokesApi apiInstance = new JokesApi(defaultClient);
    Integer id = 1; // Integer | The object's id.
    try {
      SubmitJoke200Response result = apiInstance.upvoteJoke(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JokesApi#upvoteJoke");
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

