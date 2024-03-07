# MemesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downvoteMeme**](MemesApi.md#downvoteMeme) | **POST** /memes/{id}/downvote | Downvote a Meme
[**randomMeme**](MemesApi.md#randomMeme) | **GET** /memes/random | Random Meme
[**searchMemes**](MemesApi.md#searchMemes) | **GET** /memes/search | Search Memes
[**upvoteMeme**](MemesApi.md#upvoteMeme) | **POST** /memes/{id}/upvote | Upvote a Meme



## downvoteMeme

> SubmitJoke200Response downvoteMeme(id)

Downvote a Meme

Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MemesApi;

MemesApi apiInstance = new MemesApi();
Integer id = 1; // Integer | The object's id.
try {
    SubmitJoke200Response result = apiInstance.downvoteMeme(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MemesApi#downvoteMeme");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The object&#39;s id. | [default to null]

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## randomMeme

> RandomMeme200Response randomMeme(keywords, keywordsInImage, mediaType, number, minRating)

Random Meme

Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MemesApi;

MemesApi apiInstance = new MemesApi();
String keywords = rocket; // String | A comma separated list of keywords.
Boolean keywordsInImage = false; // Boolean | Whether the keywords should be found in the meme's image.
String mediaType = image; // String | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
Integer number = 3; // Integer | The number of results to retrieve between 1 and 10.
Integer minRating = 7; // Integer | The minimum rating between 0 and 10 the result should have.
try {
    RandomMeme200Response result = apiInstance.randomMeme(keywords, keywordsInImage, mediaType, number, minRating);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MemesApi#randomMeme");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma separated list of keywords. | [optional] [default to null]
 **keywordsInImage** | **Boolean**| Whether the keywords should be found in the meme&#39;s image. | [optional] [default to null]
 **mediaType** | **String**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] [default to null] [enum: image, video, jpg, gif, png, mp4]
 **number** | **Integer**| The number of results to retrieve between 1 and 10. | [optional] [default to null]
 **minRating** | **Integer**| The minimum rating between 0 and 10 the result should have. | [optional] [default to null]

### Return type

[**RandomMeme200Response**](RandomMeme200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchMemes

> SearchMemes200Response searchMemes(keywords, keywordsInImage, mediaType, number, minRating, offset)

Search Memes

Search for memes. See https://humorapi.com/docs/#Search-Memes for more.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MemesApi;

MemesApi apiInstance = new MemesApi();
String keywords = rocket; // String | A comma separated list of keywords.
Boolean keywordsInImage = false; // Boolean | Whether the keywords should be found in the meme's image.
String mediaType = image; // String | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
Integer number = 3; // Integer | The number of results to retrieve between 1 and 10.
Integer minRating = 7; // Integer | The minimum rating between 0 and 10 the result should have.
BigDecimal offset = null; // BigDecimal | The number of results to skip.
try {
    SearchMemes200Response result = apiInstance.searchMemes(keywords, keywordsInImage, mediaType, number, minRating, offset);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MemesApi#searchMemes");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma separated list of keywords. | [optional] [default to null]
 **keywordsInImage** | **Boolean**| Whether the keywords should be found in the meme&#39;s image. | [optional] [default to null]
 **mediaType** | **String**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] [default to null] [enum: image, video, jpg, gif, png, mp4]
 **number** | **Integer**| The number of results to retrieve between 1 and 10. | [optional] [default to null]
 **minRating** | **Integer**| The minimum rating between 0 and 10 the result should have. | [optional] [default to null]
 **offset** | **BigDecimal**| The number of results to skip. | [optional] [default to null]

### Return type

[**SearchMemes200Response**](SearchMemes200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## upvoteMeme

> SubmitJoke200Response upvoteMeme(id)

Upvote a Meme

Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MemesApi;

MemesApi apiInstance = new MemesApi();
Integer id = 1; // Integer | The object's id.
try {
    SubmitJoke200Response result = apiInstance.upvoteMeme(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MemesApi#upvoteMeme");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The object&#39;s id. | [default to null]

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

