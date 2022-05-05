# openapi.api.OtherApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateNonsenseWord**](OtherApi.md#generatenonsenseword) | **GET** /words/nonsense/random | Generate Nonsense Word
[**insult**](OtherApi.md#insult) | **GET** /insult | Insult
[**praise**](OtherApi.md#praise) | **GET** /praise | Praise
[**rateWord**](OtherApi.md#rateword) | **GET** /words/rate | Rate Word
[**searchGifs**](OtherApi.md#searchgifs) | **GET** /gif/search | Search Gifs


# **generateNonsenseWord**
> InlineResponse2007 generateNonsenseWord()

Generate Nonsense Word

Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = OtherApi();

try {
    final result = api_instance.generateNonsenseWord();
    print(result);
} catch (e) {
    print('Exception when calling OtherApi->generateNonsenseWord: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **insult**
> InlineResponse2005 insult(name, reason)

Insult

Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = OtherApi();
final name = Alex; // String | The person's name.
final reason = you did it again; // String | The reason for the praise/insult.

try {
    final result = api_instance.insult(name, reason);
    print(result);
} catch (e) {
    print('Exception when calling OtherApi->insult: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The person's name. | 
 **reason** | **String**| The reason for the praise/insult. | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **praise**
> InlineResponse2005 praise(name, reason)

Praise

Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = OtherApi();
final name = Alex; // String | The person's name.
final reason = you did it again; // String | The reason for the praise/insult.

try {
    final result = api_instance.praise(name, reason);
    print(result);
} catch (e) {
    print('Exception when calling OtherApi->praise: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The person's name. | 
 **reason** | **String**| The reason for the praise/insult. | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rateWord**
> InlineResponse2006 rateWord(word)

Rate Word

Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = OtherApi();
final word = cookie; // String | The word to be rated.

try {
    final result = api_instance.rateWord(word);
    print(result);
} catch (e) {
    print('Exception when calling OtherApi->rateWord: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **String**| The word to be rated. | 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGifs**
> InlineResponse2001 searchGifs(query, number)

Search Gifs

Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = OtherApi();
final query = cat; // String | A search query.
final number = 3; // int | The number of results to retrieve between 1 and 10.

try {
    final result = api_instance.searchGifs(query, number);
    print(result);
} catch (e) {
    print('Exception when calling OtherApi->searchGifs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| A search query. | 
 **number** | **int**| The number of results to retrieve between 1 and 10. | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

