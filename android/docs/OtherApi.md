# OtherApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateNonsenseWord**](OtherApi.md#generateNonsenseWord) | **GET** /words/nonsense/random | Generate Nonsense Word
[**insult**](OtherApi.md#insult) | **GET** /insult | Insult
[**praise**](OtherApi.md#praise) | **GET** /praise | Praise
[**rateWord**](OtherApi.md#rateWord) | **GET** /words/rate | Rate Word
[**searchGifs**](OtherApi.md#searchGifs) | **GET** /gif/search | Search Gifs



## generateNonsenseWord

> InlineResponse2007 generateNonsenseWord()

Generate Nonsense Word

Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.

### Example

```java
// Import classes:
//import com.humorapi.OtherApi;

OtherApi apiInstance = new OtherApi();
try {
    InlineResponse2007 result = apiInstance.generateNonsenseWord();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OtherApi#generateNonsenseWord");
    e.printStackTrace();
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


## insult

> InlineResponse2005 insult(name, reason)

Insult

Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.

### Example

```java
// Import classes:
//import com.humorapi.OtherApi;

OtherApi apiInstance = new OtherApi();
String name = Alex; // String | The person's name.
String reason = you did it again; // String | The reason for the praise/insult.
try {
    InlineResponse2005 result = apiInstance.insult(name, reason);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OtherApi#insult");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The person&#39;s name. | [default to null]
 **reason** | **String**| The reason for the praise/insult. | [default to null]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## praise

> InlineResponse2005 praise(name, reason)

Praise

Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.

### Example

```java
// Import classes:
//import com.humorapi.OtherApi;

OtherApi apiInstance = new OtherApi();
String name = Alex; // String | The person's name.
String reason = you did it again; // String | The reason for the praise/insult.
try {
    InlineResponse2005 result = apiInstance.praise(name, reason);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OtherApi#praise");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The person&#39;s name. | [default to null]
 **reason** | **String**| The reason for the praise/insult. | [default to null]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rateWord

> InlineResponse2006 rateWord(word)

Rate Word

Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.

### Example

```java
// Import classes:
//import com.humorapi.OtherApi;

OtherApi apiInstance = new OtherApi();
String word = cookie; // String | The word to be rated.
try {
    InlineResponse2006 result = apiInstance.rateWord(word);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OtherApi#rateWord");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **String**| The word to be rated. | [default to null]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchGifs

> InlineResponse2001 searchGifs(query, number)

Search Gifs

Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.

### Example

```java
// Import classes:
//import com.humorapi.OtherApi;

OtherApi apiInstance = new OtherApi();
String query = cat; // String | A search query.
Integer number = 3; // Integer | The number of results to retrieve between 1 and 10.
try {
    InlineResponse2001 result = apiInstance.searchGifs(query, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OtherApi#searchGifs");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| A search query. | [default to null]
 **number** | **Integer**| The number of results to retrieve between 1 and 10. | [optional] [default to null]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

