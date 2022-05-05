# openapi.api.JokesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyzeJoke**](JokesApi.md#analyzejoke) | **POST** /jokes/analyze | Analyze Joke
[**downvoteJoke**](JokesApi.md#downvotejoke) | **POST** /jokes/{id}/downvote | Downvote a Joke
[**randomJoke**](JokesApi.md#randomjoke) | **GET** /jokes/random | Random Joke
[**searchJokes**](JokesApi.md#searchjokes) | **GET** /jokes/search | Search Jokes
[**submitJoke**](JokesApi.md#submitjoke) | **POST** /jokes | Submit Joke
[**upvoteJoke**](JokesApi.md#upvotejoke) | **POST** /jokes/{id}/upvote | Upvote a Joke


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

final api_instance = JokesApi();
final body = String(); // String | Post the joke as plain text.

try {
    final result = api_instance.analyzeJoke(body);
    print(result);
} catch (e) {
    print('Exception when calling JokesApi->analyzeJoke: $e\n');
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

final api_instance = JokesApi();
final id = 1; // int | The object's id.

try {
    final result = api_instance.downvoteJoke(id);
    print(result);
} catch (e) {
    print('Exception when calling JokesApi->downvoteJoke: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The object's id. | 

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

final api_instance = JokesApi();
final keywords = rocket; // String | A comma separated list of keywords.
final includeTags = one_liner; // String | A comma separated list of tags that the joke must have.
final excludeTags = nsfw; // String | A comma separated list of tags that the joke must not have.
final minRating = 7; // int | The minimum rating between 0 and 10 the result should have.
final maxLength = 200; // int | The maximum number of letters in the joke.

try {
    final result = api_instance.randomJoke(keywords, includeTags, excludeTags, minRating, maxLength);
    print(result);
} catch (e) {
    print('Exception when calling JokesApi->randomJoke: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma separated list of keywords. | [optional] 
 **includeTags** | **String**| A comma separated list of tags that the joke must have. | [optional] 
 **excludeTags** | **String**| A comma separated list of tags that the joke must not have. | [optional] 
 **minRating** | **int**| The minimum rating between 0 and 10 the result should have. | [optional] 
 **maxLength** | **int**| The maximum number of letters in the joke. | [optional] 

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

final api_instance = JokesApi();
final keywords = rocket; // String | A comma separated list of keywords.
final includeTags = one_liner; // String | A comma separated list of tags that the joke must have.
final excludeTags = nsfw; // String | A comma separated list of tags that the joke must not have.
final number = 3; // int | The number of results to retrieve between 1 and 10.
final minRating = 7; // int | The minimum rating between 0 and 10 the result should have.
final maxLength = 200; // int | The maximum number of letters in the joke.
final offset = 8.14; // num | The number of results to skip.

try {
    final result = api_instance.searchJokes(keywords, includeTags, excludeTags, number, minRating, maxLength, offset);
    print(result);
} catch (e) {
    print('Exception when calling JokesApi->searchJokes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma separated list of keywords. | [optional] 
 **includeTags** | **String**| A comma separated list of tags that the joke must have. | [optional] 
 **excludeTags** | **String**| A comma separated list of tags that the joke must not have. | [optional] 
 **number** | **int**| The number of results to retrieve between 1 and 10. | [optional] 
 **minRating** | **int**| The minimum rating between 0 and 10 the result should have. | [optional] 
 **maxLength** | **int**| The maximum number of letters in the joke. | [optional] 
 **offset** | **num**| The number of results to skip. | [optional] 

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

final api_instance = JokesApi();
final body = String(); // String | Post the joke as plain text.

try {
    final result = api_instance.submitJoke(body);
    print(result);
} catch (e) {
    print('Exception when calling JokesApi->submitJoke: $e\n');
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

final api_instance = JokesApi();
final id = 1; // int | The object's id.

try {
    final result = api_instance.upvoteJoke(id);
    print(result);
} catch (e) {
    print('Exception when calling JokesApi->upvoteJoke: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The object's id. | 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

