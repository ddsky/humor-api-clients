# openapi.api.JokesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyzeJoke**](JokesApi.md#analyzeJoke) | **POST** /jokes/analyze | Analyze Joke
[**downvoteJoke**](JokesApi.md#downvoteJoke) | **POST** /jokes/{id}/downvote | Downvote a Joke
[**randomJoke**](JokesApi.md#randomJoke) | **GET** /jokes/random | Random Joke
[**searchJokes**](JokesApi.md#searchJokes) | **GET** /jokes/search | Search Jokes
[**submitJoke**](JokesApi.md#submitJoke) | **POST** /jokes | Submit Joke
[**upvoteJoke**](JokesApi.md#upvoteJoke) | **POST** /jokes/{id}/upvote | Upvote a Joke


# **analyzeJoke**
> InlineResponse2009 analyzeJoke(body)

Analyze Joke

Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

var api_instance = new JokesApi();
var body = new String(); // String | Post the joke as plain text.

try { 
    var result = api_instance.analyzeJoke(body);
    print(result);
} catch (e) {
    print("Exception when calling JokesApi->analyzeJoke: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**| Post the joke as plain text. | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downvoteJoke**
> InlineResponse2008 downvoteJoke(id)

Downvote a Joke

Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

var api_instance = new JokesApi();
var id = 1; // int | The object's id.

try { 
    var result = api_instance.downvoteJoke(id);
    print(result);
} catch (e) {
    print("Exception when calling JokesApi->downvoteJoke: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The object&#39;s id. | [default to null]

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **randomJoke**
> InlineResponse2004 randomJoke(keywords, includeTags, excludeTags, minRating, maxLength)

Random Joke

Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

var api_instance = new JokesApi();
var keywords = rocket; // String | A comma separated list of keywords.
var includeTags = one_liner; // String | A comma separated list of tags that the joke must have.
var excludeTags = nsfw; // String | A comma separated list of tags that the joke must not have.
var minRating = 7; // int | The minimum rating between 0 and 10 the result should have.
var maxLength = 200; // int | The maximum number of letters in the joke.

try { 
    var result = api_instance.randomJoke(keywords, includeTags, excludeTags, minRating, maxLength);
    print(result);
} catch (e) {
    print("Exception when calling JokesApi->randomJoke: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma separated list of keywords. | [optional] [default to null]
 **includeTags** | **String**| A comma separated list of tags that the joke must have. | [optional] [default to null]
 **excludeTags** | **String**| A comma separated list of tags that the joke must not have. | [optional] [default to null]
 **minRating** | **int**| The minimum rating between 0 and 10 the result should have. | [optional] [default to null]
 **maxLength** | **int**| The maximum number of letters in the joke. | [optional] [default to null]

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchJokes**
> InlineResponse200 searchJokes(keywords, includeTags, excludeTags, number, minRating, maxLength, offset)

Search Jokes

Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

var api_instance = new JokesApi();
var keywords = rocket; // String | A comma separated list of keywords.
var includeTags = one_liner; // String | A comma separated list of tags that the joke must have.
var excludeTags = nsfw; // String | A comma separated list of tags that the joke must not have.
var number = 3; // int | The number of results to retrieve between 1 and 10.
var minRating = 7; // int | The minimum rating between 0 and 10 the result should have.
var maxLength = 200; // int | The maximum number of letters in the joke.
var offset = 8.14; // num | The number of results to skip.

try { 
    var result = api_instance.searchJokes(keywords, includeTags, excludeTags, number, minRating, maxLength, offset);
    print(result);
} catch (e) {
    print("Exception when calling JokesApi->searchJokes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma separated list of keywords. | [optional] [default to null]
 **includeTags** | **String**| A comma separated list of tags that the joke must have. | [optional] [default to null]
 **excludeTags** | **String**| A comma separated list of tags that the joke must not have. | [optional] [default to null]
 **number** | **int**| The number of results to retrieve between 1 and 10. | [optional] [default to null]
 **minRating** | **int**| The minimum rating between 0 and 10 the result should have. | [optional] [default to null]
 **maxLength** | **int**| The maximum number of letters in the joke. | [optional] [default to null]
 **offset** | **num**| The number of results to skip. | [optional] [default to null]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitJoke**
> InlineResponse2008 submitJoke(body)

Submit Joke

Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

var api_instance = new JokesApi();
var body = new String(); // String | Post the joke as plain text.

try { 
    var result = api_instance.submitJoke(body);
    print(result);
} catch (e) {
    print("Exception when calling JokesApi->submitJoke: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**| Post the joke as plain text. | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upvoteJoke**
> InlineResponse2008 upvoteJoke(id)

Upvote a Joke

Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

var api_instance = new JokesApi();
var id = 1; // int | The object's id.

try { 
    var result = api_instance.upvoteJoke(id);
    print(result);
} catch (e) {
    print("Exception when calling JokesApi->upvoteJoke: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The object&#39;s id. | [default to null]

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

