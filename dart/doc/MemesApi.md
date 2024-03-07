# openapi.api.MemesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downvoteMeme**](MemesApi.md#downvotememe) | **POST** /memes/{id}/downvote | Downvote a Meme
[**randomMeme**](MemesApi.md#randommeme) | **GET** /memes/random | Random Meme
[**searchMemes**](MemesApi.md#searchmemes) | **GET** /memes/search | Search Memes
[**upvoteMeme**](MemesApi.md#upvotememe) | **POST** /memes/{id}/upvote | Upvote a Meme


# **downvoteMeme**
> SubmitJoke200Response downvoteMeme(id)

Downvote a Meme

Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = MemesApi();
final id = 1; // int | The object's id.

try {
    final result = api_instance.downvoteMeme(id);
    print(result);
} catch (e) {
    print('Exception when calling MemesApi->downvoteMeme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The object's id. | 

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **randomMeme**
> RandomMeme200Response randomMeme(keywords, keywordsInImage, mediaType, number, minRating)

Random Meme

Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = MemesApi();
final keywords = rocket; // String | A comma separated list of keywords.
final keywordsInImage = false; // bool | Whether the keywords should be found in the meme's image.
final mediaType = image; // String | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
final number = 3; // int | The number of results to retrieve between 1 and 10.
final minRating = 7; // int | The minimum rating between 0 and 10 the result should have.

try {
    final result = api_instance.randomMeme(keywords, keywordsInImage, mediaType, number, minRating);
    print(result);
} catch (e) {
    print('Exception when calling MemesApi->randomMeme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma separated list of keywords. | [optional] 
 **keywordsInImage** | **bool**| Whether the keywords should be found in the meme's image. | [optional] 
 **mediaType** | **String**| The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'. | [optional] 
 **number** | **int**| The number of results to retrieve between 1 and 10. | [optional] 
 **minRating** | **int**| The minimum rating between 0 and 10 the result should have. | [optional] 

### Return type

[**RandomMeme200Response**](RandomMeme200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchMemes**
> SearchMemes200Response searchMemes(keywords, keywordsInImage, mediaType, number, minRating, offset)

Search Memes

Search for memes. See https://humorapi.com/docs/#Search-Memes for more.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = MemesApi();
final keywords = rocket; // String | A comma separated list of keywords.
final keywordsInImage = false; // bool | Whether the keywords should be found in the meme's image.
final mediaType = image; // String | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
final number = 3; // int | The number of results to retrieve between 1 and 10.
final minRating = 7; // int | The minimum rating between 0 and 10 the result should have.
final offset = 8.14; // num | The number of results to skip.

try {
    final result = api_instance.searchMemes(keywords, keywordsInImage, mediaType, number, minRating, offset);
    print(result);
} catch (e) {
    print('Exception when calling MemesApi->searchMemes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma separated list of keywords. | [optional] 
 **keywordsInImage** | **bool**| Whether the keywords should be found in the meme's image. | [optional] 
 **mediaType** | **String**| The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'. | [optional] 
 **number** | **int**| The number of results to retrieve between 1 and 10. | [optional] 
 **minRating** | **int**| The minimum rating between 0 and 10 the result should have. | [optional] 
 **offset** | **num**| The number of results to skip. | [optional] 

### Return type

[**SearchMemes200Response**](SearchMemes200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upvoteMeme**
> SubmitJoke200Response upvoteMeme(id)

Upvote a Meme

Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = MemesApi();
final id = 1; // int | The object's id.

try {
    final result = api_instance.upvoteMeme(id);
    print(result);
} catch (e) {
    print('Exception when calling MemesApi->upvoteMeme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The object's id. | 

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

