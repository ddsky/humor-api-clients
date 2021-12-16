# com.humorapi.client\MemesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DownvoteMeme**](MemesApi.md#DownvoteMeme) | **Post** /memes/{id}/downvote | Downvote a Meme
[**RandomMeme**](MemesApi.md#RandomMeme) | **Get** /memes/random | Random Meme
[**SearchMemes**](MemesApi.md#SearchMemes) | **Get** /memes/search | Search Memes
[**UpvoteMeme**](MemesApi.md#UpvoteMeme) | **Post** /memes/{id}/upvote | Upvote a Meme



## DownvoteMeme

> InlineResponse2008 DownvoteMeme(ctx, id)
Downvote a Meme

Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.

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


## RandomMeme

> InlineResponse2003 RandomMeme(ctx, optional)
Random Meme

Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***RandomMemeOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a RandomMemeOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **optional.String**| A comma separated list of keywords. | 
 **keywordsInImage** | **optional.Bool**| Whether the keywords should be found in the meme&#39;s image. | 
 **mediaType** | **optional.String**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | 
 **number** | **optional.Int32**| The number of results to retrieve between 1 and 10. | 
 **minRating** | **optional.Int32**| The minimum rating between 0 and 10 the result should have. | 

### Return type

[**InlineResponse2003**](inline_response_200_3.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchMemes

> InlineResponse2002 SearchMemes(ctx, optional)
Search Memes

Search for memes. See https://humorapi.com/docs/#Search-Memes for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***SearchMemesOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a SearchMemesOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **optional.String**| A comma separated list of keywords. | 
 **keywordsInImage** | **optional.Bool**| Whether the keywords should be found in the meme&#39;s image. | 
 **mediaType** | **optional.String**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | 
 **number** | **optional.Int32**| The number of results to retrieve between 1 and 10. | 
 **minRating** | **optional.Int32**| The minimum rating between 0 and 10 the result should have. | 
 **offset** | **optional.Float32**| The number of results to skip. | 

### Return type

[**InlineResponse2002**](inline_response_200_2.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpvoteMeme

> InlineResponse2008 UpvoteMeme(ctx, id)
Upvote a Meme

Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.

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

