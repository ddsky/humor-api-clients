# humorapi.Api.MemesApi

All URIs are relative to *https://api.humorapi.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**DownvoteMeme**](MemesApi.md#downvotememe) | **POST** /memes/{id}/downvote | Downvote a Meme |
| [**RandomMeme**](MemesApi.md#randommeme) | **GET** /memes/random | Random Meme |
| [**SearchMemes**](MemesApi.md#searchmemes) | **GET** /memes/search | Search Memes |
| [**UpvoteMeme**](MemesApi.md#upvotememe) | **POST** /memes/{id}/upvote | Upvote a Meme |

<a id="downvotememe"></a>
# **DownvoteMeme**
> SubmitJoke200Response DownvoteMeme (int id)

Downvote a Meme

Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using humorapi.Api;
using humorapi.Client;
using humorapi.Model;

namespace Example
{
    public class DownvoteMemeExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.humorapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");

            var apiInstance = new MemesApi(config);
            var id = 1;  // int | The object's id.

            try
            {
                // Downvote a Meme
                SubmitJoke200Response result = apiInstance.DownvoteMeme(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MemesApi.DownvoteMeme: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DownvoteMemeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Downvote a Meme
    ApiResponse<SubmitJoke200Response> response = apiInstance.DownvoteMemeWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MemesApi.DownvoteMemeWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The object&#39;s id. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="randommeme"></a>
# **RandomMeme**
> RandomMeme200Response RandomMeme (string? keywords = null, bool? keywordsInImage = null, string? mediaType = null, int? number = null, int? minRating = null)

Random Meme

Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using humorapi.Api;
using humorapi.Client;
using humorapi.Model;

namespace Example
{
    public class RandomMemeExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.humorapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");

            var apiInstance = new MemesApi(config);
            var keywords = rocket;  // string? | A comma separated list of keywords. (optional) 
            var keywordsInImage = false;  // bool? | Whether the keywords should be found in the meme's image. (optional) 
            var mediaType = image;  // string? | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'. (optional) 
            var number = 3;  // int? | The number of results to retrieve between 1 and 10. (optional) 
            var minRating = 7;  // int? | The minimum rating between 0 and 10 the result should have. (optional) 

            try
            {
                // Random Meme
                RandomMeme200Response result = apiInstance.RandomMeme(keywords, keywordsInImage, mediaType, number, minRating);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MemesApi.RandomMeme: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RandomMemeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Random Meme
    ApiResponse<RandomMeme200Response> response = apiInstance.RandomMemeWithHttpInfo(keywords, keywordsInImage, mediaType, number, minRating);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MemesApi.RandomMemeWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **keywords** | **string?** | A comma separated list of keywords. | [optional]  |
| **keywordsInImage** | **bool?** | Whether the keywords should be found in the meme&#39;s image. | [optional]  |
| **mediaType** | **string?** | The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional]  |
| **number** | **int?** | The number of results to retrieve between 1 and 10. | [optional]  |
| **minRating** | **int?** | The minimum rating between 0 and 10 the result should have. | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="searchmemes"></a>
# **SearchMemes**
> SearchMemes200Response SearchMemes (string? keywords = null, bool? keywordsInImage = null, string? mediaType = null, int? number = null, int? minRating = null, decimal? offset = null)

Search Memes

Search for memes. See https://humorapi.com/docs/#Search-Memes for more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using humorapi.Api;
using humorapi.Client;
using humorapi.Model;

namespace Example
{
    public class SearchMemesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.humorapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");

            var apiInstance = new MemesApi(config);
            var keywords = rocket;  // string? | A comma separated list of keywords. (optional) 
            var keywordsInImage = false;  // bool? | Whether the keywords should be found in the meme's image. (optional) 
            var mediaType = image;  // string? | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'. (optional) 
            var number = 3;  // int? | The number of results to retrieve between 1 and 10. (optional) 
            var minRating = 7;  // int? | The minimum rating between 0 and 10 the result should have. (optional) 
            var offset = 8.14D;  // decimal? | The number of results to skip. (optional) 

            try
            {
                // Search Memes
                SearchMemes200Response result = apiInstance.SearchMemes(keywords, keywordsInImage, mediaType, number, minRating, offset);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MemesApi.SearchMemes: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchMemesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Memes
    ApiResponse<SearchMemes200Response> response = apiInstance.SearchMemesWithHttpInfo(keywords, keywordsInImage, mediaType, number, minRating, offset);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MemesApi.SearchMemesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **keywords** | **string?** | A comma separated list of keywords. | [optional]  |
| **keywordsInImage** | **bool?** | Whether the keywords should be found in the meme&#39;s image. | [optional]  |
| **mediaType** | **string?** | The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional]  |
| **number** | **int?** | The number of results to retrieve between 1 and 10. | [optional]  |
| **minRating** | **int?** | The minimum rating between 0 and 10 the result should have. | [optional]  |
| **offset** | **decimal?** | The number of results to skip. | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="upvotememe"></a>
# **UpvoteMeme**
> SubmitJoke200Response UpvoteMeme (int id)

Upvote a Meme

Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using humorapi.Api;
using humorapi.Client;
using humorapi.Model;

namespace Example
{
    public class UpvoteMemeExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.humorapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");

            var apiInstance = new MemesApi(config);
            var id = 1;  // int | The object's id.

            try
            {
                // Upvote a Meme
                SubmitJoke200Response result = apiInstance.UpvoteMeme(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MemesApi.UpvoteMeme: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the UpvoteMemeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Upvote a Meme
    ApiResponse<SubmitJoke200Response> response = apiInstance.UpvoteMemeWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MemesApi.UpvoteMemeWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The object&#39;s id. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

