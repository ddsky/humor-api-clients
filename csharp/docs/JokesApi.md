# humorapi.Api.JokesApi

All URIs are relative to *https://api.humorapi.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AnalyzeJoke**](JokesApi.md#analyzejoke) | **POST** /jokes/analyze | Analyze Joke |
| [**DownvoteJoke**](JokesApi.md#downvotejoke) | **POST** /jokes/{id}/downvote | Downvote a Joke |
| [**RandomJoke**](JokesApi.md#randomjoke) | **GET** /jokes/random | Random Joke |
| [**SearchJokes**](JokesApi.md#searchjokes) | **GET** /jokes/search | Search Jokes |
| [**SubmitJoke**](JokesApi.md#submitjoke) | **POST** /jokes | Submit Joke |
| [**UpvoteJoke**](JokesApi.md#upvotejoke) | **POST** /jokes/{id}/upvote | Upvote a Joke |

<a id="analyzejoke"></a>
# **AnalyzeJoke**
> AnalyzeJoke200Response AnalyzeJoke (string? body = null)

Analyze Joke

Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using humorapi.Api;
using humorapi.Client;
using humorapi.Model;

namespace Example
{
    public class AnalyzeJokeExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.humorapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");

            var apiInstance = new JokesApi(config);
            var body = "body_example";  // string? | Post the joke as plain text. (optional) 

            try
            {
                // Analyze Joke
                AnalyzeJoke200Response result = apiInstance.AnalyzeJoke(body);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling JokesApi.AnalyzeJoke: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AnalyzeJokeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Analyze Joke
    ApiResponse<AnalyzeJoke200Response> response = apiInstance.AnalyzeJokeWithHttpInfo(body);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling JokesApi.AnalyzeJokeWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **body** | **string?** | Post the joke as plain text. | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="downvotejoke"></a>
# **DownvoteJoke**
> SubmitJoke200Response DownvoteJoke (int id)

Downvote a Joke

Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using humorapi.Api;
using humorapi.Client;
using humorapi.Model;

namespace Example
{
    public class DownvoteJokeExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.humorapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");

            var apiInstance = new JokesApi(config);
            var id = 1;  // int | The object's id.

            try
            {
                // Downvote a Joke
                SubmitJoke200Response result = apiInstance.DownvoteJoke(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling JokesApi.DownvoteJoke: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DownvoteJokeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Downvote a Joke
    ApiResponse<SubmitJoke200Response> response = apiInstance.DownvoteJokeWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling JokesApi.DownvoteJokeWithHttpInfo: " + e.Message);
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

<a id="randomjoke"></a>
# **RandomJoke**
> RandomJoke200Response RandomJoke (string? keywords = null, string? includeTags = null, string? excludeTags = null, int? minRating = null, int? maxLength = null)

Random Joke

Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using humorapi.Api;
using humorapi.Client;
using humorapi.Model;

namespace Example
{
    public class RandomJokeExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.humorapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");

            var apiInstance = new JokesApi(config);
            var keywords = rocket;  // string? | A comma separated list of keywords. (optional) 
            var includeTags = one_liner;  // string? | A comma separated list of tags that the joke must have. (optional) 
            var excludeTags = nsfw;  // string? | A comma separated list of tags that the joke must not have. (optional) 
            var minRating = 7;  // int? | The minimum rating between 0 and 10 the result should have. (optional) 
            var maxLength = 200;  // int? | The maximum number of letters in the joke. (optional) 

            try
            {
                // Random Joke
                RandomJoke200Response result = apiInstance.RandomJoke(keywords, includeTags, excludeTags, minRating, maxLength);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling JokesApi.RandomJoke: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RandomJokeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Random Joke
    ApiResponse<RandomJoke200Response> response = apiInstance.RandomJokeWithHttpInfo(keywords, includeTags, excludeTags, minRating, maxLength);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling JokesApi.RandomJokeWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **keywords** | **string?** | A comma separated list of keywords. | [optional]  |
| **includeTags** | **string?** | A comma separated list of tags that the joke must have. | [optional]  |
| **excludeTags** | **string?** | A comma separated list of tags that the joke must not have. | [optional]  |
| **minRating** | **int?** | The minimum rating between 0 and 10 the result should have. | [optional]  |
| **maxLength** | **int?** | The maximum number of letters in the joke. | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="searchjokes"></a>
# **SearchJokes**
> SearchJokes200Response SearchJokes (string? keywords = null, string? includeTags = null, string? excludeTags = null, int? number = null, int? minRating = null, int? maxLength = null, decimal? offset = null)

Search Jokes

Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using humorapi.Api;
using humorapi.Client;
using humorapi.Model;

namespace Example
{
    public class SearchJokesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.humorapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");

            var apiInstance = new JokesApi(config);
            var keywords = rocket;  // string? | A comma separated list of keywords. (optional) 
            var includeTags = one_liner;  // string? | A comma separated list of tags that the joke must have. (optional) 
            var excludeTags = nsfw;  // string? | A comma separated list of tags that the joke must not have. (optional) 
            var number = 3;  // int? | The number of results to retrieve between 1 and 10. (optional) 
            var minRating = 7;  // int? | The minimum rating between 0 and 10 the result should have. (optional) 
            var maxLength = 200;  // int? | The maximum number of letters in the joke. (optional) 
            var offset = 8.14D;  // decimal? | The number of results to skip. (optional) 

            try
            {
                // Search Jokes
                SearchJokes200Response result = apiInstance.SearchJokes(keywords, includeTags, excludeTags, number, minRating, maxLength, offset);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling JokesApi.SearchJokes: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchJokesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Jokes
    ApiResponse<SearchJokes200Response> response = apiInstance.SearchJokesWithHttpInfo(keywords, includeTags, excludeTags, number, minRating, maxLength, offset);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling JokesApi.SearchJokesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **keywords** | **string?** | A comma separated list of keywords. | [optional]  |
| **includeTags** | **string?** | A comma separated list of tags that the joke must have. | [optional]  |
| **excludeTags** | **string?** | A comma separated list of tags that the joke must not have. | [optional]  |
| **number** | **int?** | The number of results to retrieve between 1 and 10. | [optional]  |
| **minRating** | **int?** | The minimum rating between 0 and 10 the result should have. | [optional]  |
| **maxLength** | **int?** | The maximum number of letters in the joke. | [optional]  |
| **offset** | **decimal?** | The number of results to skip. | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="submitjoke"></a>
# **SubmitJoke**
> SubmitJoke200Response SubmitJoke (string? body = null)

Submit Joke

Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using humorapi.Api;
using humorapi.Client;
using humorapi.Model;

namespace Example
{
    public class SubmitJokeExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.humorapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");

            var apiInstance = new JokesApi(config);
            var body = "body_example";  // string? | Post the joke as plain text. (optional) 

            try
            {
                // Submit Joke
                SubmitJoke200Response result = apiInstance.SubmitJoke(body);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling JokesApi.SubmitJoke: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SubmitJokeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Submit Joke
    ApiResponse<SubmitJoke200Response> response = apiInstance.SubmitJokeWithHttpInfo(body);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling JokesApi.SubmitJokeWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **body** | **string?** | Post the joke as plain text. | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="upvotejoke"></a>
# **UpvoteJoke**
> SubmitJoke200Response UpvoteJoke (int id)

Upvote a Joke

Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using humorapi.Api;
using humorapi.Client;
using humorapi.Model;

namespace Example
{
    public class UpvoteJokeExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.humorapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");

            var apiInstance = new JokesApi(config);
            var id = 1;  // int | The object's id.

            try
            {
                // Upvote a Joke
                SubmitJoke200Response result = apiInstance.UpvoteJoke(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling JokesApi.UpvoteJoke: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the UpvoteJokeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Upvote a Joke
    ApiResponse<SubmitJoke200Response> response = apiInstance.UpvoteJokeWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling JokesApi.UpvoteJokeWithHttpInfo: " + e.Message);
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

