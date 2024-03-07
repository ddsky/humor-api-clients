# humorapi.Api.OtherApi

All URIs are relative to *https://api.humorapi.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GenerateNonsenseWord**](OtherApi.md#generatenonsenseword) | **GET** /words/nonsense/random | Generate Nonsense Word |
| [**Insult**](OtherApi.md#insult) | **GET** /insult | Insult |
| [**Praise**](OtherApi.md#praise) | **GET** /praise | Praise |
| [**RateWord**](OtherApi.md#rateword) | **GET** /words/rate | Rate Word |
| [**SearchGifs**](OtherApi.md#searchgifs) | **GET** /gif/search | Search Gifs |

<a id="generatenonsenseword"></a>
# **GenerateNonsenseWord**
> GenerateNonsenseWord200Response GenerateNonsenseWord ()

Generate Nonsense Word

Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using humorapi.Api;
using humorapi.Client;
using humorapi.Model;

namespace Example
{
    public class GenerateNonsenseWordExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.humorapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");

            var apiInstance = new OtherApi(config);

            try
            {
                // Generate Nonsense Word
                GenerateNonsenseWord200Response result = apiInstance.GenerateNonsenseWord();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OtherApi.GenerateNonsenseWord: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GenerateNonsenseWordWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Generate Nonsense Word
    ApiResponse<GenerateNonsenseWord200Response> response = apiInstance.GenerateNonsenseWordWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OtherApi.GenerateNonsenseWordWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="insult"></a>
# **Insult**
> Praise200Response Insult (string name, string reason)

Insult

Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using humorapi.Api;
using humorapi.Client;
using humorapi.Model;

namespace Example
{
    public class InsultExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.humorapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");

            var apiInstance = new OtherApi(config);
            var name = Alex;  // string | The person's name.
            var reason = you did it again;  // string | The reason for the praise/insult.

            try
            {
                // Insult
                Praise200Response result = apiInstance.Insult(name, reason);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OtherApi.Insult: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the InsultWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Insult
    ApiResponse<Praise200Response> response = apiInstance.InsultWithHttpInfo(name, reason);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OtherApi.InsultWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **name** | **string** | The person&#39;s name. |  |
| **reason** | **string** | The reason for the praise/insult. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="praise"></a>
# **Praise**
> Praise200Response Praise (string name, string reason)

Praise

Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using humorapi.Api;
using humorapi.Client;
using humorapi.Model;

namespace Example
{
    public class PraiseExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.humorapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");

            var apiInstance = new OtherApi(config);
            var name = Alex;  // string | The person's name.
            var reason = you did it again;  // string | The reason for the praise/insult.

            try
            {
                // Praise
                Praise200Response result = apiInstance.Praise(name, reason);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OtherApi.Praise: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the PraiseWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Praise
    ApiResponse<Praise200Response> response = apiInstance.PraiseWithHttpInfo(name, reason);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OtherApi.PraiseWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **name** | **string** | The person&#39;s name. |  |
| **reason** | **string** | The reason for the praise/insult. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="rateword"></a>
# **RateWord**
> RateWord200Response RateWord (string word)

Rate Word

Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using humorapi.Api;
using humorapi.Client;
using humorapi.Model;

namespace Example
{
    public class RateWordExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.humorapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");

            var apiInstance = new OtherApi(config);
            var word = cookie;  // string | The word to be rated.

            try
            {
                // Rate Word
                RateWord200Response result = apiInstance.RateWord(word);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OtherApi.RateWord: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RateWordWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Rate Word
    ApiResponse<RateWord200Response> response = apiInstance.RateWordWithHttpInfo(word);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OtherApi.RateWordWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **word** | **string** | The word to be rated. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="searchgifs"></a>
# **SearchGifs**
> SearchGifs200Response SearchGifs (string query, int? number = null)

Search Gifs

Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using humorapi.Api;
using humorapi.Client;
using humorapi.Model;

namespace Example
{
    public class SearchGifsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.humorapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");

            var apiInstance = new OtherApi(config);
            var query = cat;  // string | A search query.
            var number = 3;  // int? | The number of results to retrieve between 1 and 10. (optional) 

            try
            {
                // Search Gifs
                SearchGifs200Response result = apiInstance.SearchGifs(query, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OtherApi.SearchGifs: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchGifsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Gifs
    ApiResponse<SearchGifs200Response> response = apiInstance.SearchGifsWithHttpInfo(query, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OtherApi.SearchGifsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **query** | **string** | A search query. |  |
| **number** | **int?** | The number of results to retrieve between 1 and 10. | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

