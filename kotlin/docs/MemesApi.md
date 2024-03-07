# MemesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downvoteMeme**](MemesApi.md#downvoteMeme) | **POST** /memes/{id}/downvote | Downvote a Meme
[**randomMeme**](MemesApi.md#randomMeme) | **GET** /memes/random | Random Meme
[**searchMemes**](MemesApi.md#searchMemes) | **GET** /memes/search | Search Memes
[**upvoteMeme**](MemesApi.md#upvoteMeme) | **POST** /memes/{id}/upvote | Upvote a Meme


<a id="downvoteMeme"></a>
# **downvoteMeme**
> SubmitJoke200Response downvoteMeme(id)

Downvote a Meme

Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.

### Example
```kotlin
// Import classes:
//import humorapi.infrastructure.*
//import humorapi.models.*

val apiInstance = MemesApi()
val id : kotlin.Int = 1 // kotlin.Int | The object's id.
try {
    val result : SubmitJoke200Response = apiInstance.downvoteMeme(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MemesApi#downvoteMeme")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MemesApi#downvoteMeme")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The object&#39;s id. |

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="randomMeme"></a>
# **randomMeme**
> RandomMeme200Response randomMeme(keywords, keywordsInImage, mediaType, number, minRating)

Random Meme

Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.

### Example
```kotlin
// Import classes:
//import humorapi.infrastructure.*
//import humorapi.models.*

val apiInstance = MemesApi()
val keywords : kotlin.String = rocket // kotlin.String | A comma separated list of keywords.
val keywordsInImage : kotlin.Boolean = false // kotlin.Boolean | Whether the keywords should be found in the meme's image.
val mediaType : kotlin.String = image // kotlin.String | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
val number : kotlin.Int = 3 // kotlin.Int | The number of results to retrieve between 1 and 10.
val minRating : kotlin.Int = 7 // kotlin.Int | The minimum rating between 0 and 10 the result should have.
try {
    val result : RandomMeme200Response = apiInstance.randomMeme(keywords, keywordsInImage, mediaType, number, minRating)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MemesApi#randomMeme")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MemesApi#randomMeme")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **kotlin.String**| A comma separated list of keywords. | [optional]
 **keywordsInImage** | **kotlin.Boolean**| Whether the keywords should be found in the meme&#39;s image. | [optional]
 **mediaType** | **kotlin.String**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] [enum: image, video, jpg, gif, png, mp4]
 **number** | **kotlin.Int**| The number of results to retrieve between 1 and 10. | [optional]
 **minRating** | **kotlin.Int**| The minimum rating between 0 and 10 the result should have. | [optional]

### Return type

[**RandomMeme200Response**](RandomMeme200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="searchMemes"></a>
# **searchMemes**
> SearchMemes200Response searchMemes(keywords, keywordsInImage, mediaType, number, minRating, offset)

Search Memes

Search for memes. See https://humorapi.com/docs/#Search-Memes for more.

### Example
```kotlin
// Import classes:
//import humorapi.infrastructure.*
//import humorapi.models.*

val apiInstance = MemesApi()
val keywords : kotlin.String = rocket // kotlin.String | A comma separated list of keywords.
val keywordsInImage : kotlin.Boolean = false // kotlin.Boolean | Whether the keywords should be found in the meme's image.
val mediaType : kotlin.String = image // kotlin.String | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
val number : kotlin.Int = 3 // kotlin.Int | The number of results to retrieve between 1 and 10.
val minRating : kotlin.Int = 7 // kotlin.Int | The minimum rating between 0 and 10 the result should have.
val offset : java.math.BigDecimal = 8.14 // java.math.BigDecimal | The number of results to skip.
try {
    val result : SearchMemes200Response = apiInstance.searchMemes(keywords, keywordsInImage, mediaType, number, minRating, offset)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MemesApi#searchMemes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MemesApi#searchMemes")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **kotlin.String**| A comma separated list of keywords. | [optional]
 **keywordsInImage** | **kotlin.Boolean**| Whether the keywords should be found in the meme&#39;s image. | [optional]
 **mediaType** | **kotlin.String**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] [enum: image, video, jpg, gif, png, mp4]
 **number** | **kotlin.Int**| The number of results to retrieve between 1 and 10. | [optional]
 **minRating** | **kotlin.Int**| The minimum rating between 0 and 10 the result should have. | [optional]
 **offset** | **java.math.BigDecimal**| The number of results to skip. | [optional]

### Return type

[**SearchMemes200Response**](SearchMemes200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="upvoteMeme"></a>
# **upvoteMeme**
> SubmitJoke200Response upvoteMeme(id)

Upvote a Meme

Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.

### Example
```kotlin
// Import classes:
//import humorapi.infrastructure.*
//import humorapi.models.*

val apiInstance = MemesApi()
val id : kotlin.Int = 1 // kotlin.Int | The object's id.
try {
    val result : SubmitJoke200Response = apiInstance.upvoteMeme(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MemesApi#upvoteMeme")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MemesApi#upvoteMeme")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The object&#39;s id. |

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

