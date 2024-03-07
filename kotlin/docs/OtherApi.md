# OtherApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateNonsenseWord**](OtherApi.md#generateNonsenseWord) | **GET** /words/nonsense/random | Generate Nonsense Word
[**insult**](OtherApi.md#insult) | **GET** /insult | Insult
[**praise**](OtherApi.md#praise) | **GET** /praise | Praise
[**rateWord**](OtherApi.md#rateWord) | **GET** /words/rate | Rate Word
[**searchGifs**](OtherApi.md#searchGifs) | **GET** /gif/search | Search Gifs


<a id="generateNonsenseWord"></a>
# **generateNonsenseWord**
> GenerateNonsenseWord200Response generateNonsenseWord()

Generate Nonsense Word

Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.

### Example
```kotlin
// Import classes:
//import humorapi.infrastructure.*
//import humorapi.models.*

val apiInstance = OtherApi()
try {
    val result : GenerateNonsenseWord200Response = apiInstance.generateNonsenseWord()
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

[**GenerateNonsenseWord200Response**](GenerateNonsenseWord200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="insult"></a>
# **insult**
> Praise200Response insult(name, reason)

Insult

Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.

### Example
```kotlin
// Import classes:
//import humorapi.infrastructure.*
//import humorapi.models.*

val apiInstance = OtherApi()
val name : kotlin.String = Alex // kotlin.String | The person's name.
val reason : kotlin.String = you did it again // kotlin.String | The reason for the praise/insult.
try {
    val result : Praise200Response = apiInstance.insult(name, reason)
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

[**Praise200Response**](Praise200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="praise"></a>
# **praise**
> Praise200Response praise(name, reason)

Praise

Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.

### Example
```kotlin
// Import classes:
//import humorapi.infrastructure.*
//import humorapi.models.*

val apiInstance = OtherApi()
val name : kotlin.String = Alex // kotlin.String | The person's name.
val reason : kotlin.String = you did it again // kotlin.String | The reason for the praise/insult.
try {
    val result : Praise200Response = apiInstance.praise(name, reason)
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

[**Praise200Response**](Praise200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="rateWord"></a>
# **rateWord**
> RateWord200Response rateWord(word)

Rate Word

Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.

### Example
```kotlin
// Import classes:
//import humorapi.infrastructure.*
//import humorapi.models.*

val apiInstance = OtherApi()
val word : kotlin.String = cookie // kotlin.String | The word to be rated.
try {
    val result : RateWord200Response = apiInstance.rateWord(word)
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

[**RateWord200Response**](RateWord200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="searchGifs"></a>
# **searchGifs**
> SearchGifs200Response searchGifs(query, number)

Search Gifs

Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.

### Example
```kotlin
// Import classes:
//import humorapi.infrastructure.*
//import humorapi.models.*

val apiInstance = OtherApi()
val query : kotlin.String = cat // kotlin.String | A search query.
val number : kotlin.Int = 3 // kotlin.Int | The number of results to retrieve between 1 and 10.
try {
    val result : SearchGifs200Response = apiInstance.searchGifs(query, number)
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

[**SearchGifs200Response**](SearchGifs200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

