# com.humorapi.client\JokesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyze_joke**](JokesApi.md#analyze_joke) | **Post** /jokes/analyze | Analyze Joke
[**downvote_joke**](JokesApi.md#downvote_joke) | **Post** /jokes/{id}/downvote | Downvote a Joke
[**random_joke**](JokesApi.md#random_joke) | **Get** /jokes/random | Random Joke
[**search_jokes**](JokesApi.md#search_jokes) | **Get** /jokes/search | Search Jokes
[**submit_joke**](JokesApi.md#submit_joke) | **Post** /jokes | Submit Joke
[**upvote_joke**](JokesApi.md#upvote_joke) | **Post** /jokes/{id}/upvote | Upvote a Joke



## analyze_joke

> ::models::InlineResponse2009 analyze_joke(ctx, optional)
Analyze Joke

Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**| Post the joke as plain text. | 

### Return type

[**::models::InlineResponse2009**](inline_response_200_9.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## downvote_joke

> ::models::InlineResponse2008 downvote_joke(ctx, id)
Downvote a Joke

Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **i32**| The object's id. | 

### Return type

[**::models::InlineResponse2008**](inline_response_200_8.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## random_joke

> ::models::InlineResponse2004 random_joke(ctx, optional)
Random Joke

Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma separated list of keywords. | 
 **include_tags** | **String**| A comma separated list of tags that the joke must have. | 
 **exclude_tags** | **String**| A comma separated list of tags that the joke must not have. | 
 **min_rating** | **i32**| The minimum rating between 0 and 10 the result should have. | 
 **max_length** | **i32**| The maximum number of letters in the joke. | 

### Return type

[**::models::InlineResponse2004**](inline_response_200_4.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_jokes

> ::models::InlineResponse200 search_jokes(ctx, optional)
Search Jokes

Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma separated list of keywords. | 
 **include_tags** | **String**| A comma separated list of tags that the joke must have. | 
 **exclude_tags** | **String**| A comma separated list of tags that the joke must not have. | 
 **number** | **i32**| The number of results to retrieve between 1 and 10. | 
 **min_rating** | **i32**| The minimum rating between 0 and 10 the result should have. | 
 **max_length** | **i32**| The maximum number of letters in the joke. | 

### Return type

[**::models::InlineResponse200**](inline_response_200.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## submit_joke

> ::models::InlineResponse2008 submit_joke(ctx, optional)
Submit Joke

Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**| Post the joke as plain text. | 

### Return type

[**::models::InlineResponse2008**](inline_response_200_8.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## upvote_joke

> ::models::InlineResponse2008 upvote_joke(ctx, id)
Upvote a Joke

Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **i32**| The object's id. | 

### Return type

[**::models::InlineResponse2008**](inline_response_200_8.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

