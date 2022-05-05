# com.humorapi.client\JokesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyze_joke**](JokesApi.md#analyze_joke) | **POST** /jokes/analyze | Analyze Joke
[**downvote_joke**](JokesApi.md#downvote_joke) | **POST** /jokes/{id}/downvote | Downvote a Joke
[**random_joke**](JokesApi.md#random_joke) | **GET** /jokes/random | Random Joke
[**search_jokes**](JokesApi.md#search_jokes) | **GET** /jokes/search | Search Jokes
[**submit_joke**](JokesApi.md#submit_joke) | **POST** /jokes | Submit Joke
[**upvote_joke**](JokesApi.md#upvote_joke) | **POST** /jokes/{id}/upvote | Upvote a Joke



## analyze_joke

> crate::models::InlineResponse2009 analyze_joke(body)
Analyze Joke

Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**body** | Option<**String**> | Post the joke as plain text. |  |

### Return type

[**crate::models::InlineResponse2009**](inline_response_200_9.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## downvote_joke

> crate::models::InlineResponse2008 downvote_joke(id)
Downvote a Joke

Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.

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


## random_joke

> crate::models::InlineResponse2004 random_joke(keywords, include_tags, exclude_tags, min_rating, max_length)
Random Joke

Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**keywords** | Option<**String**> | A comma separated list of keywords. |  |
**include_tags** | Option<**String**> | A comma separated list of tags that the joke must have. |  |
**exclude_tags** | Option<**String**> | A comma separated list of tags that the joke must not have. |  |
**min_rating** | Option<**i32**> | The minimum rating between 0 and 10 the result should have. |  |
**max_length** | Option<**i32**> | The maximum number of letters in the joke. |  |

### Return type

[**crate::models::InlineResponse2004**](inline_response_200_4.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_jokes

> crate::models::InlineResponse200 search_jokes(keywords, include_tags, exclude_tags, number, min_rating, max_length, offset)
Search Jokes

Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**keywords** | Option<**String**> | A comma separated list of keywords. |  |
**include_tags** | Option<**String**> | A comma separated list of tags that the joke must have. |  |
**exclude_tags** | Option<**String**> | A comma separated list of tags that the joke must not have. |  |
**number** | Option<**i32**> | The number of results to retrieve between 1 and 10. |  |
**min_rating** | Option<**i32**> | The minimum rating between 0 and 10 the result should have. |  |
**max_length** | Option<**i32**> | The maximum number of letters in the joke. |  |
**offset** | Option<**f32**> | The number of results to skip. |  |

### Return type

[**crate::models::InlineResponse200**](inline_response_200.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## submit_joke

> crate::models::InlineResponse2008 submit_joke(body)
Submit Joke

Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**body** | Option<**String**> | Post the joke as plain text. |  |

### Return type

[**crate::models::InlineResponse2008**](inline_response_200_8.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## upvote_joke

> crate::models::InlineResponse2008 upvote_joke(id)
Upvote a Joke

Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.

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

