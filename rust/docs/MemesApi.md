# com.humorapi.client\MemesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downvote_meme**](MemesApi.md#downvote_meme) | **Post** /memes/{id}/downvote | Downvote a Meme
[**random_meme**](MemesApi.md#random_meme) | **Get** /memes/random | Random Meme
[**search_memes**](MemesApi.md#search_memes) | **Get** /memes/search | Search Memes
[**upvote_meme**](MemesApi.md#upvote_meme) | **Post** /memes/{id}/upvote | Upvote a Meme



## downvote_meme

> ::models::InlineResponse2008 downvote_meme(ctx, id)
Downvote a Meme

Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.

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


## random_meme

> ::models::InlineResponse2003 random_meme(ctx, optional)
Random Meme

Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.

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
 **keywords_in_image** | **bool**| Whether the keywords should be found in the meme's image. | 
 **media_type** | **String**| The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'. | 
 **number** | **i32**| The number of results to retrieve between 1 and 10. | 
 **min_rating** | **i32**| The minimum rating between 0 and 10 the result should have. | 

### Return type

[**::models::InlineResponse2003**](inline_response_200_3.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_memes

> ::models::InlineResponse2002 search_memes(ctx, optional)
Search Memes

Search for memes. See https://humorapi.com/docs/#Search-Memes for more.

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
 **keywords_in_image** | **bool**| Whether the keywords should be found in the meme's image. | 
 **media_type** | **String**| The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'. | 
 **number** | **i32**| The number of results to retrieve between 1 and 10. | 
 **min_rating** | **i32**| The minimum rating between 0 and 10 the result should have. | 
 **offset** | **f32**| The number of results to skip. | 

### Return type

[**::models::InlineResponse2002**](inline_response_200_2.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## upvote_meme

> ::models::InlineResponse2008 upvote_meme(ctx, id)
Upvote a Meme

Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.

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

