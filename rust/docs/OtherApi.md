# com.humorapi.client\OtherApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_nonsense_word**](OtherApi.md#generate_nonsense_word) | **Get** /words/nonsense/random | Generate Nonsense Word
[**insult**](OtherApi.md#insult) | **Get** /insult | Insult
[**praise**](OtherApi.md#praise) | **Get** /praise | Praise
[**rate_word**](OtherApi.md#rate_word) | **Get** /words/rate | Rate Word
[**search_gifs**](OtherApi.md#search_gifs) | **Get** /gif/search | Search Gifs



## generate_nonsense_word

> ::models::InlineResponse2007 generate_nonsense_word(ctx, )
Generate Nonsense Word

Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**::models::InlineResponse2007**](inline_response_200_7.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## insult

> ::models::InlineResponse2005 insult(ctx, name, reason)
Insult

Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| The person's name. | 
  **reason** | **String**| The reason for the praise/insult. | 

### Return type

[**::models::InlineResponse2005**](inline_response_200_5.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## praise

> ::models::InlineResponse2005 praise(ctx, name, reason)
Praise

Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| The person's name. | 
  **reason** | **String**| The reason for the praise/insult. | 

### Return type

[**::models::InlineResponse2005**](inline_response_200_5.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## rate_word

> ::models::InlineResponse2006 rate_word(ctx, word)
Rate Word

Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **word** | **String**| The word to be rated. | 

### Return type

[**::models::InlineResponse2006**](inline_response_200_6.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_gifs

> ::models::InlineResponse2001 search_gifs(ctx, query, optional)
Search Gifs

Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **query** | **String**| A search query. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| A search query. | 
 **number** | **i32**| The number of results to retrieve between 1 and 10. | 

### Return type

[**::models::InlineResponse2001**](inline_response_200_1.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

