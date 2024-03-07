# \OtherApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_nonsense_word**](OtherApi.md#generate_nonsense_word) | **GET** /words/nonsense/random | Generate Nonsense Word
[**insult**](OtherApi.md#insult) | **GET** /insult | Insult
[**praise**](OtherApi.md#praise) | **GET** /praise | Praise
[**rate_word**](OtherApi.md#rate_word) | **GET** /words/rate | Rate Word
[**search_gifs**](OtherApi.md#search_gifs) | **GET** /gif/search | Search Gifs



## generate_nonsense_word

> crate::models::GenerateNonsenseWord200Response generate_nonsense_word()
Generate Nonsense Word

Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.

### Parameters

This endpoint does not need any parameter.

### Return type

[**crate::models::GenerateNonsenseWord200Response**](generate_nonsense_word_200_response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## insult

> crate::models::Praise200Response insult(name, reason)
Insult

Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** | The person's name. | [required] |
**reason** | **String** | The reason for the praise/insult. | [required] |

### Return type

[**crate::models::Praise200Response**](praise_200_response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## praise

> crate::models::Praise200Response praise(name, reason)
Praise

Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** | The person's name. | [required] |
**reason** | **String** | The reason for the praise/insult. | [required] |

### Return type

[**crate::models::Praise200Response**](praise_200_response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## rate_word

> crate::models::RateWord200Response rate_word(word)
Rate Word

Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**word** | **String** | The word to be rated. | [required] |

### Return type

[**crate::models::RateWord200Response**](rate_word_200_response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_gifs

> crate::models::SearchGifs200Response search_gifs(query, number)
Search Gifs

Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** | A search query. | [required] |
**number** | Option<**i32**> | The number of results to retrieve between 1 and 10. |  |

### Return type

[**crate::models::SearchGifs200Response**](search_gifs_200_response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

