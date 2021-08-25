# MemesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downvoteMeme**](MemesApi.md#downvoteMeme) | **POST** /memes/{id}/downvote | Downvote a Meme
[**randomMeme**](MemesApi.md#randomMeme) | **GET** /memes/random | Random Meme
[**searchMemes**](MemesApi.md#searchMemes) | **GET** /memes/search | Search Memes
[**upvoteMeme**](MemesApi.md#upvoteMeme) | **POST** /memes/{id}/upvote | Upvote a Meme


<a name="downvoteMeme"></a>
# **downvoteMeme**
> InlineResponse2008 downvoteMeme(id)

Downvote a Meme

Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.

### Example
```kotlin
// Import classes:
//import humorapi.infrastructure.*
//import com.humorapi.client.model.*

val apiInstance = MemesApi()
val id : kotlin.Int = 56 // kotlin.Int | The object's id.
try {
    val result : InlineResponse2008 = apiInstance.downvoteMeme(id)
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

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="randomMeme"></a>
# **randomMeme**
> InlineResponse2003 randomMeme(keywords, keywordsMinusInMinusImage, mediaMinusType, number, minMinusRating)

Random Meme

Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.

### Example
```kotlin
// Import classes:
//import humorapi.infrastructure.*
//import com.humorapi.client.model.*

val apiInstance = MemesApi()
val keywords : kotlin.String = rocket // kotlin.String | A comma separated list of keywords.
val keywordsMinusInMinusImage : kotlin.Boolean = false // kotlin.Boolean | Whether the keywords should be found in the meme's image.
val mediaMinusType : kotlin.String = image // kotlin.String | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
val number : kotlin.Int = 3 // kotlin.Int | The number of results to retrieve between 1 and 10.
val minMinusRating : kotlin.Int = 7 // kotlin.Int | The minimum rating between 0 and 10 the result should have.
try {
    val result : InlineResponse2003 = apiInstance.randomMeme(keywords, keywordsMinusInMinusImage, mediaMinusType, number, minMinusRating)
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
 **keywordsMinusInMinusImage** | **kotlin.Boolean**| Whether the keywords should be found in the meme&#39;s image. | [optional] [enum: true, false]
 **mediaMinusType** | **kotlin.String**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] [enum: image, video, jpg, gif, png, mp4]
 **number** | **kotlin.Int**| The number of results to retrieve between 1 and 10. | [optional]
 **minMinusRating** | **kotlin.Int**| The minimum rating between 0 and 10 the result should have. | [optional]

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchMemes"></a>
# **searchMemes**
> InlineResponse2002 searchMemes(keywords, keywordsMinusInMinusImage, mediaMinusType, number, minMinusRating)

Search Memes

Search for memes. See https://humorapi.com/docs/#Search-Memes for more.

### Example
```kotlin
// Import classes:
//import humorapi.infrastructure.*
//import com.humorapi.client.model.*

val apiInstance = MemesApi()
val keywords : kotlin.String = rocket // kotlin.String | A comma separated list of keywords.
val keywordsMinusInMinusImage : kotlin.Boolean = false // kotlin.Boolean | Whether the keywords should be found in the meme's image.
val mediaMinusType : kotlin.String = image // kotlin.String | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
val number : kotlin.Int = 3 // kotlin.Int | The number of results to retrieve between 1 and 10.
val minMinusRating : kotlin.Int = 7 // kotlin.Int | The minimum rating between 0 and 10 the result should have.
try {
    val result : InlineResponse2002 = apiInstance.searchMemes(keywords, keywordsMinusInMinusImage, mediaMinusType, number, minMinusRating)
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
 **keywordsMinusInMinusImage** | **kotlin.Boolean**| Whether the keywords should be found in the meme&#39;s image. | [optional] [enum: true, false]
 **mediaMinusType** | **kotlin.String**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] [enum: image, video, jpg, gif, png, mp4]
 **number** | **kotlin.Int**| The number of results to retrieve between 1 and 10. | [optional]
 **minMinusRating** | **kotlin.Int**| The minimum rating between 0 and 10 the result should have. | [optional]

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="upvoteMeme"></a>
# **upvoteMeme**
> InlineResponse2008 upvoteMeme(id)

Upvote a Meme

Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.

### Example
```kotlin
// Import classes:
//import humorapi.infrastructure.*
//import com.humorapi.client.model.*

val apiInstance = MemesApi()
val id : kotlin.Int = 56 // kotlin.Int | The object's id.
try {
    val result : InlineResponse2008 = apiInstance.upvoteMeme(id)
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

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json
