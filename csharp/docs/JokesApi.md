# com.humorapi.JokesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AnalyzeJoke**](JokesApi.md#analyzejoke) | **POST** /jokes/analyze | Analyze Joke
[**DownvoteJoke**](JokesApi.md#downvotejoke) | **POST** /jokes/{id}/downvote | Downvote a Joke
[**RandomJoke**](JokesApi.md#randomjoke) | **GET** /jokes/random | Random Joke
[**SearchJokes**](JokesApi.md#searchjokes) | **GET** /jokes/search | Search Jokes
[**SubmitJoke**](JokesApi.md#submitjoke) | **POST** /jokes | Submit Joke
[**UpvoteJoke**](JokesApi.md#upvotejoke) | **POST** /jokes/{id}/upvote | Upvote a Joke


<a name="analyzejoke"></a>
# **AnalyzeJoke**
> InlineResponse2009 AnalyzeJoke (string body)

Analyze Joke

Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.

### Example
```csharp
using System;
using System.Diagnostics;
using com.humorapi;
using Org.OpenAPITools.Client;
using com.humorapi.client.model;

namespace Example
{
    public class AnalyzeJokeExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");

            var apiInstance = new JokesApi();
            var body = "body_example";  // string | Post the joke as plain text. (optional) 

            try
            {
                // Analyze Joke
                InlineResponse2009 result = apiInstance.AnalyzeJoke(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling JokesApi.AnalyzeJoke: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **string**| Post the joke as plain text. | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="downvotejoke"></a>
# **DownvoteJoke**
> InlineResponse2008 DownvoteJoke (int? id)

Downvote a Joke

Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.

### Example
```csharp
using System;
using System.Diagnostics;
using com.humorapi;
using Org.OpenAPITools.Client;
using com.humorapi.client.model;

namespace Example
{
    public class DownvoteJokeExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");

            var apiInstance = new JokesApi();
            var id = 1;  // int? | The object's id.

            try
            {
                // Downvote a Joke
                InlineResponse2008 result = apiInstance.DownvoteJoke(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling JokesApi.DownvoteJoke: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The object&#39;s id. | 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="randomjoke"></a>
# **RandomJoke**
> InlineResponse2004 RandomJoke (string keywords, string includeTags, string excludeTags, int? minRating, int? maxLength)

Random Joke

Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.

### Example
```csharp
using System;
using System.Diagnostics;
using com.humorapi;
using Org.OpenAPITools.Client;
using com.humorapi.client.model;

namespace Example
{
    public class RandomJokeExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");

            var apiInstance = new JokesApi();
            var keywords = rocket;  // string | A comma separated list of keywords. (optional) 
            var includeTags = one_liner;  // string | A comma separated list of tags that the joke must have. (optional) 
            var excludeTags = nsfw;  // string | A comma separated list of tags that the joke must not have. (optional) 
            var minRating = 7;  // int? | The minimum rating between 0 and 10 the result should have. (optional) 
            var maxLength = 200;  // int? | The maximum number of letters in the joke. (optional) 

            try
            {
                // Random Joke
                InlineResponse2004 result = apiInstance.RandomJoke(keywords, includeTags, excludeTags, minRating, maxLength);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling JokesApi.RandomJoke: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string**| A comma separated list of keywords. | [optional] 
 **includeTags** | **string**| A comma separated list of tags that the joke must have. | [optional] 
 **excludeTags** | **string**| A comma separated list of tags that the joke must not have. | [optional] 
 **minRating** | **int?**| The minimum rating between 0 and 10 the result should have. | [optional] 
 **maxLength** | **int?**| The maximum number of letters in the joke. | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchjokes"></a>
# **SearchJokes**
> InlineResponse200 SearchJokes (string keywords, string includeTags, string excludeTags, int? number, int? minRating, int? maxLength, decimal? offset)

Search Jokes

Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.

### Example
```csharp
using System;
using System.Diagnostics;
using com.humorapi;
using Org.OpenAPITools.Client;
using com.humorapi.client.model;

namespace Example
{
    public class SearchJokesExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");

            var apiInstance = new JokesApi();
            var keywords = rocket;  // string | A comma separated list of keywords. (optional) 
            var includeTags = one_liner;  // string | A comma separated list of tags that the joke must have. (optional) 
            var excludeTags = nsfw;  // string | A comma separated list of tags that the joke must not have. (optional) 
            var number = 3;  // int? | The number of results to retrieve between 1 and 10. (optional) 
            var minRating = 7;  // int? | The minimum rating between 0 and 10 the result should have. (optional) 
            var maxLength = 200;  // int? | The maximum number of letters in the joke. (optional) 
            var offset = 8.14D;  // decimal? | The number of results to skip. (optional) 

            try
            {
                // Search Jokes
                InlineResponse200 result = apiInstance.SearchJokes(keywords, includeTags, excludeTags, number, minRating, maxLength, offset);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling JokesApi.SearchJokes: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string**| A comma separated list of keywords. | [optional] 
 **includeTags** | **string**| A comma separated list of tags that the joke must have. | [optional] 
 **excludeTags** | **string**| A comma separated list of tags that the joke must not have. | [optional] 
 **number** | **int?**| The number of results to retrieve between 1 and 10. | [optional] 
 **minRating** | **int?**| The minimum rating between 0 and 10 the result should have. | [optional] 
 **maxLength** | **int?**| The maximum number of letters in the joke. | [optional] 
 **offset** | **decimal?**| The number of results to skip. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="submitjoke"></a>
# **SubmitJoke**
> InlineResponse2008 SubmitJoke (string body)

Submit Joke

Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.

### Example
```csharp
using System;
using System.Diagnostics;
using com.humorapi;
using Org.OpenAPITools.Client;
using com.humorapi.client.model;

namespace Example
{
    public class SubmitJokeExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");

            var apiInstance = new JokesApi();
            var body = "body_example";  // string | Post the joke as plain text. (optional) 

            try
            {
                // Submit Joke
                InlineResponse2008 result = apiInstance.SubmitJoke(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling JokesApi.SubmitJoke: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **string**| Post the joke as plain text. | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="upvotejoke"></a>
# **UpvoteJoke**
> InlineResponse2008 UpvoteJoke (int? id)

Upvote a Joke

Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.

### Example
```csharp
using System;
using System.Diagnostics;
using com.humorapi;
using Org.OpenAPITools.Client;
using com.humorapi.client.model;

namespace Example
{
    public class UpvoteJokeExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");

            var apiInstance = new JokesApi();
            var id = 1;  // int? | The object's id.

            try
            {
                // Upvote a Joke
                InlineResponse2008 result = apiInstance.UpvoteJoke(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling JokesApi.UpvoteJoke: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The object&#39;s id. | 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

