# JokesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyzeJoke**](JokesApi.md#analyzeJoke) | **POST** /jokes/analyze | Analyze Joke
[**downvoteJoke**](JokesApi.md#downvoteJoke) | **POST** /jokes/{id}/downvote | Downvote a Joke
[**randomJoke**](JokesApi.md#randomJoke) | **GET** /jokes/random | Random Joke
[**searchJokes**](JokesApi.md#searchJokes) | **GET** /jokes/search | Search Jokes
[**submitJoke**](JokesApi.md#submitJoke) | **POST** /jokes | Submit Joke
[**upvoteJoke**](JokesApi.md#upvoteJoke) | **POST** /jokes/{id}/upvote | Upvote a Joke


<a id="analyzeJoke"></a>
# **analyzeJoke**
> AnalyzeJoke200Response analyzeJoke(body)

Analyze Joke

Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.

### Example
```kotlin
// Import classes:
//import humorapi.infrastructure.*
//import humorapi.models.*

val apiInstance = JokesApi()
val body : kotlin.String = body_example // kotlin.String | Post the joke as plain text.
try {
    val result : AnalyzeJoke200Response = apiInstance.analyzeJoke(body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling JokesApi#analyzeJoke")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling JokesApi#analyzeJoke")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **kotlin.String**| Post the joke as plain text. | [optional]

### Return type

[**AnalyzeJoke200Response**](AnalyzeJoke200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="downvoteJoke"></a>
# **downvoteJoke**
> SubmitJoke200Response downvoteJoke(id)

Downvote a Joke

Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.

### Example
```kotlin
// Import classes:
//import humorapi.infrastructure.*
//import humorapi.models.*

val apiInstance = JokesApi()
val id : kotlin.Int = 1 // kotlin.Int | The object's id.
try {
    val result : SubmitJoke200Response = apiInstance.downvoteJoke(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling JokesApi#downvoteJoke")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling JokesApi#downvoteJoke")
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

<a id="randomJoke"></a>
# **randomJoke**
> RandomJoke200Response randomJoke(keywords, includeTags, excludeTags, minRating, maxLength)

Random Joke

Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.

### Example
```kotlin
// Import classes:
//import humorapi.infrastructure.*
//import humorapi.models.*

val apiInstance = JokesApi()
val keywords : kotlin.String = rocket // kotlin.String | A comma separated list of keywords.
val includeTags : kotlin.String = one_liner // kotlin.String | A comma separated list of tags that the joke must have.
val excludeTags : kotlin.String = nsfw // kotlin.String | A comma separated list of tags that the joke must not have.
val minRating : kotlin.Int = 7 // kotlin.Int | The minimum rating between 0 and 10 the result should have.
val maxLength : kotlin.Int = 200 // kotlin.Int | The maximum number of letters in the joke.
try {
    val result : RandomJoke200Response = apiInstance.randomJoke(keywords, includeTags, excludeTags, minRating, maxLength)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling JokesApi#randomJoke")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling JokesApi#randomJoke")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **kotlin.String**| A comma separated list of keywords. | [optional]
 **includeTags** | **kotlin.String**| A comma separated list of tags that the joke must have. | [optional] [enum: clean, yo_mama, chuck_norris, nsfw, racist, sexist, sexual, political, religious, knock_knock, christmas, nerdy, analogy, one_liner, dark, jewish, school, sport, law, kids, animal, relationship, insults, blondes, deep_thoughts, food, holiday]
 **excludeTags** | **kotlin.String**| A comma separated list of tags that the joke must not have. | [optional] [enum: clean, yo_mama, chuck_norris, nsfw, racist, sexist, sexual, political, religious, knock_knock, christmas, nerdy, analogy, one_liner, dark, jewish, school, sport, law, kids, animal, relationship, insults, blondes, deep_thoughts, food, holiday]
 **minRating** | **kotlin.Int**| The minimum rating between 0 and 10 the result should have. | [optional]
 **maxLength** | **kotlin.Int**| The maximum number of letters in the joke. | [optional]

### Return type

[**RandomJoke200Response**](RandomJoke200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="searchJokes"></a>
# **searchJokes**
> SearchJokes200Response searchJokes(keywords, includeTags, excludeTags, number, minRating, maxLength, offset)

Search Jokes

Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.

### Example
```kotlin
// Import classes:
//import humorapi.infrastructure.*
//import humorapi.models.*

val apiInstance = JokesApi()
val keywords : kotlin.String = rocket // kotlin.String | A comma separated list of keywords.
val includeTags : kotlin.String = one_liner // kotlin.String | A comma separated list of tags that the joke must have.
val excludeTags : kotlin.String = nsfw // kotlin.String | A comma separated list of tags that the joke must not have.
val number : kotlin.Int = 3 // kotlin.Int | The number of results to retrieve between 1 and 10.
val minRating : kotlin.Int = 7 // kotlin.Int | The minimum rating between 0 and 10 the result should have.
val maxLength : kotlin.Int = 200 // kotlin.Int | The maximum number of letters in the joke.
val offset : java.math.BigDecimal = 8.14 // java.math.BigDecimal | The number of results to skip.
try {
    val result : SearchJokes200Response = apiInstance.searchJokes(keywords, includeTags, excludeTags, number, minRating, maxLength, offset)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling JokesApi#searchJokes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling JokesApi#searchJokes")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **kotlin.String**| A comma separated list of keywords. | [optional]
 **includeTags** | **kotlin.String**| A comma separated list of tags that the joke must have. | [optional] [enum: clean, yo_mama, chuck_norris, nsfw, racist, sexist, sexual, political, religious, knock_knock, christmas, nerdy, analogy, one_liner, dark, jewish, school, sport, law, kids, animal, relationship, insults, blondes, deep_thoughts, food, holiday]
 **excludeTags** | **kotlin.String**| A comma separated list of tags that the joke must not have. | [optional] [enum: clean, yo_mama, chuck_norris, nsfw, racist, sexist, sexual, political, religious, knock_knock, christmas, nerdy, analogy, one_liner, dark, jewish, school, sport, law, kids, animal, relationship, insults, blondes, deep_thoughts, food, holiday]
 **number** | **kotlin.Int**| The number of results to retrieve between 1 and 10. | [optional]
 **minRating** | **kotlin.Int**| The minimum rating between 0 and 10 the result should have. | [optional]
 **maxLength** | **kotlin.Int**| The maximum number of letters in the joke. | [optional]
 **offset** | **java.math.BigDecimal**| The number of results to skip. | [optional]

### Return type

[**SearchJokes200Response**](SearchJokes200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="submitJoke"></a>
# **submitJoke**
> SubmitJoke200Response submitJoke(body)

Submit Joke

Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.

### Example
```kotlin
// Import classes:
//import humorapi.infrastructure.*
//import humorapi.models.*

val apiInstance = JokesApi()
val body : kotlin.String = body_example // kotlin.String | Post the joke as plain text.
try {
    val result : SubmitJoke200Response = apiInstance.submitJoke(body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling JokesApi#submitJoke")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling JokesApi#submitJoke")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **kotlin.String**| Post the joke as plain text. | [optional]

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="upvoteJoke"></a>
# **upvoteJoke**
> SubmitJoke200Response upvoteJoke(id)

Upvote a Joke

Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.

### Example
```kotlin
// Import classes:
//import humorapi.infrastructure.*
//import humorapi.models.*

val apiInstance = JokesApi()
val id : kotlin.Int = 1 // kotlin.Int | The object's id.
try {
    val result : SubmitJoke200Response = apiInstance.upvoteJoke(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling JokesApi#upvoteJoke")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling JokesApi#upvoteJoke")
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

