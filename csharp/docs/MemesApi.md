# com.humorapi.MemesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DownvoteMeme**](MemesApi.md#downvotememe) | **POST** /memes/{id}/downvote | Downvote a Meme
[**RandomMeme**](MemesApi.md#randommeme) | **GET** /memes/random | Random Meme
[**SearchMemes**](MemesApi.md#searchmemes) | **GET** /memes/search | Search Memes
[**UpvoteMeme**](MemesApi.md#upvotememe) | **POST** /memes/{id}/upvote | Upvote a Meme


<a name="downvotememe"></a>
# **DownvoteMeme**
> InlineResponse2008 DownvoteMeme (int? id)

Downvote a Meme

Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.

### Example
```csharp
using System;
using System.Diagnostics;
using com.humorapi;
using Org.OpenAPITools.Client;
using com.humorapi.client.model;

namespace Example
{
    public class DownvoteMemeExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");

            var apiInstance = new MemesApi();
            var id = 1;  // int? | The object's id.

            try
            {
                // Downvote a Meme
                InlineResponse2008 result = apiInstance.DownvoteMeme(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MemesApi.DownvoteMeme: " + e.Message );
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

<a name="randommeme"></a>
# **RandomMeme**
> InlineResponse2003 RandomMeme (string keywords, bool? keywordsInImage, string mediaType, int? number, int? minRating)

Random Meme

Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.

### Example
```csharp
using System;
using System.Diagnostics;
using com.humorapi;
using Org.OpenAPITools.Client;
using com.humorapi.client.model;

namespace Example
{
    public class RandomMemeExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");

            var apiInstance = new MemesApi();
            var keywords = rocket;  // string | A comma separated list of keywords. (optional) 
            var keywordsInImage = false;  // bool? | Whether the keywords should be found in the meme's image. (optional) 
            var mediaType = image;  // string | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'. (optional) 
            var number = 3;  // int? | The number of results to retrieve between 1 and 10. (optional) 
            var minRating = 7;  // int? | The minimum rating between 0 and 10 the result should have. (optional) 

            try
            {
                // Random Meme
                InlineResponse2003 result = apiInstance.RandomMeme(keywords, keywordsInImage, mediaType, number, minRating);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MemesApi.RandomMeme: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string**| A comma separated list of keywords. | [optional] 
 **keywordsInImage** | **bool?**| Whether the keywords should be found in the meme&#39;s image. | [optional] 
 **mediaType** | **string**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] 
 **number** | **int?**| The number of results to retrieve between 1 and 10. | [optional] 
 **minRating** | **int?**| The minimum rating between 0 and 10 the result should have. | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchmemes"></a>
# **SearchMemes**
> InlineResponse2002 SearchMemes (string keywords, bool? keywordsInImage, string mediaType, int? number, int? minRating, decimal? offset)

Search Memes

Search for memes. See https://humorapi.com/docs/#Search-Memes for more.

### Example
```csharp
using System;
using System.Diagnostics;
using com.humorapi;
using Org.OpenAPITools.Client;
using com.humorapi.client.model;

namespace Example
{
    public class SearchMemesExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");

            var apiInstance = new MemesApi();
            var keywords = rocket;  // string | A comma separated list of keywords. (optional) 
            var keywordsInImage = false;  // bool? | Whether the keywords should be found in the meme's image. (optional) 
            var mediaType = image;  // string | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'. (optional) 
            var number = 3;  // int? | The number of results to retrieve between 1 and 10. (optional) 
            var minRating = 7;  // int? | The minimum rating between 0 and 10 the result should have. (optional) 
            var offset = 8.14;  // decimal? | The number of results to skip. (optional) 

            try
            {
                // Search Memes
                InlineResponse2002 result = apiInstance.SearchMemes(keywords, keywordsInImage, mediaType, number, minRating, offset);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MemesApi.SearchMemes: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string**| A comma separated list of keywords. | [optional] 
 **keywordsInImage** | **bool?**| Whether the keywords should be found in the meme&#39;s image. | [optional] 
 **mediaType** | **string**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] 
 **number** | **int?**| The number of results to retrieve between 1 and 10. | [optional] 
 **minRating** | **int?**| The minimum rating between 0 and 10 the result should have. | [optional] 
 **offset** | **decimal?**| The number of results to skip. | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="upvotememe"></a>
# **UpvoteMeme**
> InlineResponse2008 UpvoteMeme (int? id)

Upvote a Meme

Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.

### Example
```csharp
using System;
using System.Diagnostics;
using com.humorapi;
using Org.OpenAPITools.Client;
using com.humorapi.client.model;

namespace Example
{
    public class UpvoteMemeExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");

            var apiInstance = new MemesApi();
            var id = 1;  // int? | The object's id.

            try
            {
                // Upvote a Meme
                InlineResponse2008 result = apiInstance.UpvoteMeme(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MemesApi.UpvoteMeme: " + e.Message );
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

