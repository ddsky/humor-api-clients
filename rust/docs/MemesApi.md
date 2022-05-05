# com.humorapi.client\MemesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downvote_meme**](MemesApi.md#downvote_meme) | **POST** /memes/{id}/downvote | Downvote a Meme
[**random_meme**](MemesApi.md#random_meme) | **GET** /memes/random | Random Meme
[**search_memes**](MemesApi.md#search_memes) | **GET** /memes/search | Search Memes
[**upvote_meme**](MemesApi.md#upvote_meme) | **POST** /memes/{id}/upvote | Upvote a Meme



## downvote_meme

> crate::models::InlineResponse2008 downvote_meme(id)
Downvote a Meme

Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The object's id. | [required] |

### Return type

[**crate::models::InlineResponse2008**](inline_response_200_8.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## random_meme

> crate::models::InlineResponse2003 random_meme(keywords, keywords_in_image, media_type, number, min_rating)
Random Meme

Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**keywords** | Option<**String**> | A comma separated list of keywords. |  |
**keywords_in_image** | Option<**bool**> | Whether the keywords should be found in the meme's image. |  |
**media_type** | Option<**String**> | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'. |  |
**number** | Option<**i32**> | The number of results to retrieve between 1 and 10. |  |
**min_rating** | Option<**i32**> | The minimum rating between 0 and 10 the result should have. |  |

### Return type

[**crate::models::InlineResponse2003**](inline_response_200_3.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_memes

> crate::models::InlineResponse2002 search_memes(keywords, keywords_in_image, media_type, number, min_rating, offset)
Search Memes

Search for memes. See https://humorapi.com/docs/#Search-Memes for more.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**keywords** | Option<**String**> | A comma separated list of keywords. |  |
**keywords_in_image** | Option<**bool**> | Whether the keywords should be found in the meme's image. |  |
**media_type** | Option<**String**> | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'. |  |
**number** | Option<**i32**> | The number of results to retrieve between 1 and 10. |  |
**min_rating** | Option<**i32**> | The minimum rating between 0 and 10 the result should have. |  |
**offset** | Option<**f32**> | The number of results to skip. |  |

### Return type

[**crate::models::InlineResponse2002**](inline_response_200_2.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## upvote_meme

> crate::models::InlineResponse2008 upvote_meme(id)
Upvote a Meme

Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The object's id. | [required] |

### Return type

[**crate::models::InlineResponse2008**](inline_response_200_8.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

