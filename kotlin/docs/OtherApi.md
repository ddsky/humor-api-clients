# OtherApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateNonsenseWord**](OtherApi.md#generateNonsenseWord) | **GET** /words/nonsense/random | Generate Nonsense Word
[**insult**](OtherApi.md#insult) | **GET** /insult | Insult
[**praise**](OtherApi.md#praise) | **GET** /praise | Praise
[**rateWord**](OtherApi.md#rateWord) | **GET** /words/rate | Rate Word
[**searchGifs**](OtherApi.md#searchGifs) | **GET** /gif/search | Search Gifs


<a name="generateNonsenseWord"></a>
# **generateNonsenseWord**
> InlineResponse2007 generateNonsenseWord()

Generate Nonsense Word

Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.humorapi.client.model.*

val apiInstance = OtherApi()
try {
    val result : InlineResponse2007 = apiInstance.generateNonsenseWord()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OtherApi#generateNonsenseWord")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OtherApi#generateNonsenseWord")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="insult"></a>
# **insult**
> InlineResponse2005 insult(name, reason)

Insult

Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.humorapi.client.model.*

val apiInstance = OtherApi()
val name : kotlin.String = Alex // kotlin.String | The person's name.
val reason : kotlin.String = you did it again // kotlin.String | The reason for the praise/insult.
try {
    val result : InlineResponse2005 = apiInstance.insult(name, reason)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OtherApi#insult")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OtherApi#insult")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**| The person&#39;s name. |
 **reason** | **kotlin.String**| The reason for the praise/insult. |

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="praise"></a>
# **praise**
> InlineResponse2005 praise(name, reason)

Praise

Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.humorapi.client.model.*

val apiInstance = OtherApi()
val name : kotlin.String = Alex // kotlin.String | The person's name.
val reason : kotlin.String = you did it again // kotlin.String | The reason for the praise/insult.
try {
    val result : InlineResponse2005 = apiInstance.praise(name, reason)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OtherApi#praise")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OtherApi#praise")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**| The person&#39;s name. |
 **reason** | **kotlin.String**| The reason for the praise/insult. |

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="rateWord"></a>
# **rateWord**
> InlineResponse2006 rateWord(word)

Rate Word

Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.humorapi.client.model.*

val apiInstance = OtherApi()
val word : kotlin.String = cookie // kotlin.String | The word to be rated.
try {
    val result : InlineResponse2006 = apiInstance.rateWord(word)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OtherApi#rateWord")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OtherApi#rateWord")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **kotlin.String**| The word to be rated. |

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchGifs"></a>
# **searchGifs**
> InlineResponse2001 searchGifs(query, number)

Search Gifs

Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.humorapi.client.model.*

val apiInstance = OtherApi()
val query : kotlin.String = cat // kotlin.String | A search query.
val number : kotlin.Int = 3 // kotlin.Int | The number of results to retrieve between 1 and 10.
try {
    val result : InlineResponse2001 = apiInstance.searchGifs(query, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OtherApi#searchGifs")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OtherApi#searchGifs")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| A search query. |
 **number** | **kotlin.Int**| The number of results to retrieve between 1 and 10. | [optional]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

