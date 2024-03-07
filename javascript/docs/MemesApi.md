# HumorApi.MemesApi

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

```javascript
import HumorApi from 'humor_api';
let defaultClient = HumorApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

let apiInstance = new HumorApi.MemesApi();
let id = 1; // Number | The object's id.
apiInstance.downvoteMeme(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The object&#39;s id. | 

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## randomMeme

> RandomMeme200Response randomMeme(opts)

Random Meme

Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.

### Example

```javascript
import HumorApi from 'humor_api';
let defaultClient = HumorApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

let apiInstance = new HumorApi.MemesApi();
let opts = {
  'keywords': rocket, // String | A comma separated list of keywords.
  'keywordsInImage': false, // Boolean | Whether the keywords should be found in the meme's image.
  'mediaType': image, // String | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
  'number': 3, // Number | The number of results to retrieve between 1 and 10.
  'minRating': 7 // Number | The minimum rating between 0 and 10 the result should have.
};
apiInstance.randomMeme(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma separated list of keywords. | [optional] 
 **keywordsInImage** | **Boolean**| Whether the keywords should be found in the meme&#39;s image. | [optional] 
 **mediaType** | **String**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] 
 **number** | **Number**| The number of results to retrieve between 1 and 10. | [optional] 
 **minRating** | **Number**| The minimum rating between 0 and 10 the result should have. | [optional] 

### Return type

[**RandomMeme200Response**](RandomMeme200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchMemes

> SearchMemes200Response searchMemes(opts)

Search Memes

Search for memes. See https://humorapi.com/docs/#Search-Memes for more.

### Example

```javascript
import HumorApi from 'humor_api';
let defaultClient = HumorApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

let apiInstance = new HumorApi.MemesApi();
let opts = {
  'keywords': rocket, // String | A comma separated list of keywords.
  'keywordsInImage': false, // Boolean | Whether the keywords should be found in the meme's image.
  'mediaType': image, // String | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
  'number': 3, // Number | The number of results to retrieve between 1 and 10.
  'minRating': 7, // Number | The minimum rating between 0 and 10 the result should have.
  'offset': 3.4 // Number | The number of results to skip.
};
apiInstance.searchMemes(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma separated list of keywords. | [optional] 
 **keywordsInImage** | **Boolean**| Whether the keywords should be found in the meme&#39;s image. | [optional] 
 **mediaType** | **String**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] 
 **number** | **Number**| The number of results to retrieve between 1 and 10. | [optional] 
 **minRating** | **Number**| The minimum rating between 0 and 10 the result should have. | [optional] 
 **offset** | **Number**| The number of results to skip. | [optional] 

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

```javascript
import HumorApi from 'humor_api';
let defaultClient = HumorApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

let apiInstance = new HumorApi.MemesApi();
let id = 1; // Number | The object's id.
apiInstance.upvoteMeme(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The object&#39;s id. | 

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

