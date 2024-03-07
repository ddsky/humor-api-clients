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



## analyzeJoke

> AnalyzeJoke200Response analyzeJoke(body)

Analyze Joke

Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.

### Example

```java
// Import classes:
//import org.openapitools.client.api.JokesApi;

JokesApi apiInstance = new JokesApi();
String body = "body_example"; // String | Post the joke as plain text.
try {
    AnalyzeJoke200Response result = apiInstance.analyzeJoke(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling JokesApi#analyzeJoke");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**| Post the joke as plain text. | [optional]

### Return type

[**AnalyzeJoke200Response**](AnalyzeJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: application/json


## downvoteJoke

> SubmitJoke200Response downvoteJoke(id)

Downvote a Joke

Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.

### Example

```java
// Import classes:
//import org.openapitools.client.api.JokesApi;

JokesApi apiInstance = new JokesApi();
Integer id = 1; // Integer | The object's id.
try {
    SubmitJoke200Response result = apiInstance.downvoteJoke(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling JokesApi#downvoteJoke");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The object&#39;s id. | [default to null]

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## randomJoke

> RandomJoke200Response randomJoke(keywords, includeTags, excludeTags, minRating, maxLength)

Random Joke

Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.

### Example

```java
// Import classes:
//import org.openapitools.client.api.JokesApi;

JokesApi apiInstance = new JokesApi();
String keywords = rocket; // String | A comma separated list of keywords.
String includeTags = one_liner; // String | A comma separated list of tags that the joke must have.
String excludeTags = nsfw; // String | A comma separated list of tags that the joke must not have.
Integer minRating = 7; // Integer | The minimum rating between 0 and 10 the result should have.
Integer maxLength = 200; // Integer | The maximum number of letters in the joke.
try {
    RandomJoke200Response result = apiInstance.randomJoke(keywords, includeTags, excludeTags, minRating, maxLength);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling JokesApi#randomJoke");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma separated list of keywords. | [optional] [default to null]
 **includeTags** | **String**| A comma separated list of tags that the joke must have. | [optional] [default to null] [enum: clean, yo_mama, chuck_norris, nsfw, racist, sexist, sexual, political, religious, knock_knock, christmas, nerdy, analogy, one_liner, dark, jewish, school, sport, law, kids, animal, relationship, insults, blondes, deep_thoughts, food, holiday]
 **excludeTags** | **String**| A comma separated list of tags that the joke must not have. | [optional] [default to null] [enum: clean, yo_mama, chuck_norris, nsfw, racist, sexist, sexual, political, religious, knock_knock, christmas, nerdy, analogy, one_liner, dark, jewish, school, sport, law, kids, animal, relationship, insults, blondes, deep_thoughts, food, holiday]
 **minRating** | **Integer**| The minimum rating between 0 and 10 the result should have. | [optional] [default to null]
 **maxLength** | **Integer**| The maximum number of letters in the joke. | [optional] [default to null]

### Return type

[**RandomJoke200Response**](RandomJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchJokes

> SearchJokes200Response searchJokes(keywords, includeTags, excludeTags, number, minRating, maxLength, offset)

Search Jokes

Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.

### Example

```java
// Import classes:
//import org.openapitools.client.api.JokesApi;

JokesApi apiInstance = new JokesApi();
String keywords = rocket; // String | A comma separated list of keywords.
String includeTags = one_liner; // String | A comma separated list of tags that the joke must have.
String excludeTags = nsfw; // String | A comma separated list of tags that the joke must not have.
Integer number = 3; // Integer | The number of results to retrieve between 1 and 10.
Integer minRating = 7; // Integer | The minimum rating between 0 and 10 the result should have.
Integer maxLength = 200; // Integer | The maximum number of letters in the joke.
BigDecimal offset = null; // BigDecimal | The number of results to skip.
try {
    SearchJokes200Response result = apiInstance.searchJokes(keywords, includeTags, excludeTags, number, minRating, maxLength, offset);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling JokesApi#searchJokes");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma separated list of keywords. | [optional] [default to null]
 **includeTags** | **String**| A comma separated list of tags that the joke must have. | [optional] [default to null] [enum: clean, yo_mama, chuck_norris, nsfw, racist, sexist, sexual, political, religious, knock_knock, christmas, nerdy, analogy, one_liner, dark, jewish, school, sport, law, kids, animal, relationship, insults, blondes, deep_thoughts, food, holiday]
 **excludeTags** | **String**| A comma separated list of tags that the joke must not have. | [optional] [default to null] [enum: clean, yo_mama, chuck_norris, nsfw, racist, sexist, sexual, political, religious, knock_knock, christmas, nerdy, analogy, one_liner, dark, jewish, school, sport, law, kids, animal, relationship, insults, blondes, deep_thoughts, food, holiday]
 **number** | **Integer**| The number of results to retrieve between 1 and 10. | [optional] [default to null]
 **minRating** | **Integer**| The minimum rating between 0 and 10 the result should have. | [optional] [default to null]
 **maxLength** | **Integer**| The maximum number of letters in the joke. | [optional] [default to null]
 **offset** | **BigDecimal**| The number of results to skip. | [optional] [default to null]

### Return type

[**SearchJokes200Response**](SearchJokes200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## submitJoke

> SubmitJoke200Response submitJoke(body)

Submit Joke

Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.

### Example

```java
// Import classes:
//import org.openapitools.client.api.JokesApi;

JokesApi apiInstance = new JokesApi();
String body = "body_example"; // String | Post the joke as plain text.
try {
    SubmitJoke200Response result = apiInstance.submitJoke(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling JokesApi#submitJoke");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**| Post the joke as plain text. | [optional]

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: application/json


## upvoteJoke

> SubmitJoke200Response upvoteJoke(id)

Upvote a Joke

Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.

### Example

```java
// Import classes:
//import org.openapitools.client.api.JokesApi;

JokesApi apiInstance = new JokesApi();
Integer id = 1; // Integer | The object's id.
try {
    SubmitJoke200Response result = apiInstance.upvoteJoke(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling JokesApi#upvoteJoke");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The object&#39;s id. | [default to null]

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

