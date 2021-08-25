# com.humorapi.OtherApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GenerateNonsenseWord**](OtherApi.md#generatenonsenseword) | **GET** /words/nonsense/random | Generate Nonsense Word
[**Insult**](OtherApi.md#insult) | **GET** /insult | Insult
[**Praise**](OtherApi.md#praise) | **GET** /praise | Praise
[**RateWord**](OtherApi.md#rateword) | **GET** /words/rate | Rate Word
[**SearchGifs**](OtherApi.md#searchgifs) | **GET** /gif/search | Search Gifs


<a name="generatenonsenseword"></a>
# **GenerateNonsenseWord**
> InlineResponse2007 GenerateNonsenseWord ()

Generate Nonsense Word

Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.

### Example
```csharp
using System;
using System.Diagnostics;
using com.humorapi;
using Org.OpenAPITools.Client;
using com.humorapi.client.model;

namespace Example
{
    public class GenerateNonsenseWordExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");

            var apiInstance = new OtherApi();

            try
            {
                // Generate Nonsense Word
                InlineResponse2007 result = apiInstance.GenerateNonsenseWord();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OtherApi.GenerateNonsenseWord: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="insult"></a>
# **Insult**
> InlineResponse2005 Insult (string name, string reason)

Insult

Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.

### Example
```csharp
using System;
using System.Diagnostics;
using com.humorapi;
using Org.OpenAPITools.Client;
using com.humorapi.client.model;

namespace Example
{
    public class InsultExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");

            var apiInstance = new OtherApi();
            var name = Alex;  // string | The person's name.
            var reason = you did it again;  // string | The reason for the praise/insult.

            try
            {
                // Insult
                InlineResponse2005 result = apiInstance.Insult(name, reason);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OtherApi.Insult: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The person&#39;s name. | 
 **reason** | **string**| The reason for the praise/insult. | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="praise"></a>
# **Praise**
> InlineResponse2005 Praise (string name, string reason)

Praise

Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.

### Example
```csharp
using System;
using System.Diagnostics;
using com.humorapi;
using Org.OpenAPITools.Client;
using com.humorapi.client.model;

namespace Example
{
    public class PraiseExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");

            var apiInstance = new OtherApi();
            var name = Alex;  // string | The person's name.
            var reason = you did it again;  // string | The reason for the praise/insult.

            try
            {
                // Praise
                InlineResponse2005 result = apiInstance.Praise(name, reason);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OtherApi.Praise: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The person&#39;s name. | 
 **reason** | **string**| The reason for the praise/insult. | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="rateword"></a>
# **RateWord**
> InlineResponse2006 RateWord (string word)

Rate Word

Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.

### Example
```csharp
using System;
using System.Diagnostics;
using com.humorapi;
using Org.OpenAPITools.Client;
using com.humorapi.client.model;

namespace Example
{
    public class RateWordExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");

            var apiInstance = new OtherApi();
            var word = cookie;  // string | The word to be rated.

            try
            {
                // Rate Word
                InlineResponse2006 result = apiInstance.RateWord(word);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OtherApi.RateWord: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **string**| The word to be rated. | 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchgifs"></a>
# **SearchGifs**
> InlineResponse2001 SearchGifs (string query, int? number)

Search Gifs

Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.

### Example
```csharp
using System;
using System.Diagnostics;
using com.humorapi;
using Org.OpenAPITools.Client;
using com.humorapi.client.model;

namespace Example
{
    public class SearchGifsExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");

            var apiInstance = new OtherApi();
            var query = cat;  // string | A search query.
            var number = 3;  // int? | The number of results to retrieve between 1 and 10. (optional) 

            try
            {
                // Search Gifs
                InlineResponse2001 result = apiInstance.SearchGifs(query, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OtherApi.SearchGifs: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| A search query. | 
 **number** | **int?**| The number of results to retrieve between 1 and 10. | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

