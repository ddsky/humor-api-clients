# com.humorapi.client\JokesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AnalyzeJoke**](JokesApi.md#AnalyzeJoke) | **Post** /jokes/analyze | Analyze Joke
[**DownvoteJoke**](JokesApi.md#DownvoteJoke) | **Post** /jokes/{id}/downvote | Downvote a Joke
[**RandomJoke**](JokesApi.md#RandomJoke) | **Get** /jokes/random | Random Joke
[**SearchJokes**](JokesApi.md#SearchJokes) | **Get** /jokes/search | Search Jokes
[**SubmitJoke**](JokesApi.md#SubmitJoke) | **Post** /jokes | Submit Joke
[**UpvoteJoke**](JokesApi.md#UpvoteJoke) | **Post** /jokes/{id}/upvote | Upvote a Joke



## AnalyzeJoke

> InlineResponse2009 AnalyzeJoke(ctx, optional)
Analyze Joke

Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***AnalyzeJokeOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a AnalyzeJokeOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **optional.String**| Post the joke as plain text. | 

### Return type

[**InlineResponse2009**](inline_response_200_9.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DownvoteJoke

> InlineResponse2008 DownvoteJoke(ctx, id)
Downvote a Joke

Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The object&#39;s id. | 

### Return type

[**InlineResponse2008**](inline_response_200_8.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RandomJoke

> InlineResponse2004 RandomJoke(ctx, optional)
Random Joke

Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***RandomJokeOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a RandomJokeOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **optional.String**| A comma separated list of keywords. | 
 **includeTags** | **optional.String**| A comma separated list of tags that the joke must have. | 
 **excludeTags** | **optional.String**| A comma separated list of tags that the joke must not have. | 
 **minRating** | **optional.Int32**| The minimum rating between 0 and 10 the result should have. | 
 **maxLength** | **optional.Int32**| The maximum number of letters in the joke. | 

### Return type

[**InlineResponse2004**](inline_response_200_4.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchJokes

> InlineResponse200 SearchJokes(ctx, optional)
Search Jokes

Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***SearchJokesOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a SearchJokesOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **optional.String**| A comma separated list of keywords. | 
 **includeTags** | **optional.String**| A comma separated list of tags that the joke must have. | 
 **excludeTags** | **optional.String**| A comma separated list of tags that the joke must not have. | 
 **number** | **optional.Int32**| The number of results to retrieve between 1 and 10. | 
 **minRating** | **optional.Int32**| The minimum rating between 0 and 10 the result should have. | 
 **maxLength** | **optional.Int32**| The maximum number of letters in the joke. | 
 **offset** | **optional.Float32**| The number of results to skip. | 

### Return type

[**InlineResponse200**](inline_response_200.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SubmitJoke

> InlineResponse2008 SubmitJoke(ctx, optional)
Submit Joke

Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***SubmitJokeOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a SubmitJokeOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **optional.String**| Post the joke as plain text. | 

### Return type

[**InlineResponse2008**](inline_response_200_8.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpvoteJoke

> InlineResponse2008 UpvoteJoke(ctx, id)
Upvote a Joke

Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The object&#39;s id. | 

### Return type

[**InlineResponse2008**](inline_response_200_8.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

