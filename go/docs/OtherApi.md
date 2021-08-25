# com.humorapi.client\OtherApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GenerateNonsenseWord**](OtherApi.md#GenerateNonsenseWord) | **Get** /words/nonsense/random | Generate Nonsense Word
[**Insult**](OtherApi.md#Insult) | **Get** /insult | Insult
[**Praise**](OtherApi.md#Praise) | **Get** /praise | Praise
[**RateWord**](OtherApi.md#RateWord) | **Get** /words/rate | Rate Word
[**SearchGifs**](OtherApi.md#SearchGifs) | **Get** /gif/search | Search Gifs



## GenerateNonsenseWord

> InlineResponse2007 GenerateNonsenseWord(ctx, )
Generate Nonsense Word

Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**InlineResponse2007**](inline_response_200_7.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Insult

> InlineResponse2005 Insult(ctx, name, reason)
Insult

Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**name** | **string**| The person&#39;s name. | 
**reason** | **string**| The reason for the praise/insult. | 

### Return type

[**InlineResponse2005**](inline_response_200_5.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Praise

> InlineResponse2005 Praise(ctx, name, reason)
Praise

Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**name** | **string**| The person&#39;s name. | 
**reason** | **string**| The reason for the praise/insult. | 

### Return type

[**InlineResponse2005**](inline_response_200_5.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RateWord

> InlineResponse2006 RateWord(ctx, word)
Rate Word

Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**word** | **string**| The word to be rated. | 

### Return type

[**InlineResponse2006**](inline_response_200_6.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchGifs

> InlineResponse2001 SearchGifs(ctx, query, optional)
Search Gifs

Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**query** | **string**| A search query. | 
 **optional** | ***SearchGifsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a SearchGifsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **number** | **optional.Int32**| The number of results to retrieve between 1 and 10. | 

### Return type

[**InlineResponse2001**](inline_response_200_1.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

