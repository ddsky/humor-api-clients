# OtherApi

All URIs are relative to *https://api.humorapi.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**generateNonsenseWord**](OtherApi.md#generateNonsenseWord) | **GET** /words/nonsense/random | Generate Nonsense Word |
| [**insult**](OtherApi.md#insult) | **GET** /insult | Insult |
| [**praise**](OtherApi.md#praise) | **GET** /praise | Praise |
| [**rateWord**](OtherApi.md#rateWord) | **GET** /words/rate | Rate Word |
| [**searchGifs**](OtherApi.md#searchGifs) | **GET** /gif/search | Search Gifs |


<a id="generateNonsenseWord"></a>
# **generateNonsenseWord**
> GenerateNonsenseWord200Response generateNonsenseWord()

Generate Nonsense Word

Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.

### Example
```java
// Import classes:
import com.humorapi.client.ApiClient;
import com.humorapi.client.ApiException;
import com.humorapi.client.Configuration;
import com.humorapi.client.auth.*;
import com.humorapi.client.models.*;
import com.humorapi.OtherApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.humorapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    OtherApi apiInstance = new OtherApi(defaultClient);
    try {
      GenerateNonsenseWord200Response result = apiInstance.generateNonsenseWord();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OtherApi#generateNonsenseWord");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GenerateNonsenseWord200Response**](GenerateNonsenseWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Generate Nonsense Word Response |  -  |

<a id="insult"></a>
# **insult**
> Praise200Response insult(name, reason)

Insult

Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.

### Example
```java
// Import classes:
import com.humorapi.client.ApiClient;
import com.humorapi.client.ApiException;
import com.humorapi.client.Configuration;
import com.humorapi.client.auth.*;
import com.humorapi.client.models.*;
import com.humorapi.OtherApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.humorapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    OtherApi apiInstance = new OtherApi(defaultClient);
    String name = "Alex"; // String | The person's name.
    String reason = "you did it again"; // String | The reason for the praise/insult.
    try {
      Praise200Response result = apiInstance.insult(name, reason);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OtherApi#insult");
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
| **name** | **String**| The person&#39;s name. | |
| **reason** | **String**| The reason for the praise/insult. | |

### Return type

[**Praise200Response**](Praise200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Insult Response |  -  |

<a id="praise"></a>
# **praise**
> Praise200Response praise(name, reason)

Praise

Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.

### Example
```java
// Import classes:
import com.humorapi.client.ApiClient;
import com.humorapi.client.ApiException;
import com.humorapi.client.Configuration;
import com.humorapi.client.auth.*;
import com.humorapi.client.models.*;
import com.humorapi.OtherApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.humorapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    OtherApi apiInstance = new OtherApi(defaultClient);
    String name = "Alex"; // String | The person's name.
    String reason = "you did it again"; // String | The reason for the praise/insult.
    try {
      Praise200Response result = apiInstance.praise(name, reason);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OtherApi#praise");
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
| **name** | **String**| The person&#39;s name. | |
| **reason** | **String**| The reason for the praise/insult. | |

### Return type

[**Praise200Response**](Praise200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Praise Response |  -  |

<a id="rateWord"></a>
# **rateWord**
> RateWord200Response rateWord(word)

Rate Word

Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.

### Example
```java
// Import classes:
import com.humorapi.client.ApiClient;
import com.humorapi.client.ApiException;
import com.humorapi.client.Configuration;
import com.humorapi.client.auth.*;
import com.humorapi.client.models.*;
import com.humorapi.OtherApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.humorapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    OtherApi apiInstance = new OtherApi(defaultClient);
    String word = "cookie"; // String | The word to be rated.
    try {
      RateWord200Response result = apiInstance.rateWord(word);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OtherApi#rateWord");
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
| **word** | **String**| The word to be rated. | |

### Return type

[**RateWord200Response**](RateWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Word Rating Response |  -  |

<a id="searchGifs"></a>
# **searchGifs**
> SearchGifs200Response searchGifs(query, number)

Search Gifs

Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.

### Example
```java
// Import classes:
import com.humorapi.client.ApiClient;
import com.humorapi.client.ApiException;
import com.humorapi.client.Configuration;
import com.humorapi.client.auth.*;
import com.humorapi.client.models.*;
import com.humorapi.OtherApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.humorapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    OtherApi apiInstance = new OtherApi(defaultClient);
    String query = "cat"; // String | A search query.
    Integer number = 3; // Integer | The number of results to retrieve between 1 and 10.
    try {
      SearchGifs200Response result = apiInstance.searchGifs(query, number);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OtherApi#searchGifs");
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
| **query** | **String**| A search query. | |
| **number** | **Integer**| The number of results to retrieve between 1 and 10. | [optional] |

### Return type

[**SearchGifs200Response**](SearchGifs200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Gif Search Response |  -  |

