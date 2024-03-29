# HumorApi.OtherApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateNonsenseWord**](OtherApi.md#generateNonsenseWord) | **GET** /words/nonsense/random | Generate Nonsense Word
[**insult**](OtherApi.md#insult) | **GET** /insult | Insult
[**praise**](OtherApi.md#praise) | **GET** /praise | Praise
[**rateWord**](OtherApi.md#rateWord) | **GET** /words/rate | Rate Word
[**searchGifs**](OtherApi.md#searchGifs) | **GET** /gif/search | Search Gifs



## generateNonsenseWord

> GenerateNonsenseWord200Response generateNonsenseWord()

Generate Nonsense Word

Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.

### Example

```javascript
import HumorApi from 'humor_api';
let defaultClient = HumorApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

let apiInstance = new HumorApi.OtherApi();
apiInstance.generateNonsenseWord((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GenerateNonsenseWord200Response**](GenerateNonsenseWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## insult

> Praise200Response insult(name, reason)

Insult

Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.

### Example

```javascript
import HumorApi from 'humor_api';
let defaultClient = HumorApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

let apiInstance = new HumorApi.OtherApi();
let name = Alex; // String | The person's name.
let reason = you did it again; // String | The reason for the praise/insult.
apiInstance.insult(name, reason, (error, data, response) => {
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
 **name** | **String**| The person&#39;s name. | 
 **reason** | **String**| The reason for the praise/insult. | 

### Return type

[**Praise200Response**](Praise200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## praise

> Praise200Response praise(name, reason)

Praise

Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.

### Example

```javascript
import HumorApi from 'humor_api';
let defaultClient = HumorApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

let apiInstance = new HumorApi.OtherApi();
let name = Alex; // String | The person's name.
let reason = you did it again; // String | The reason for the praise/insult.
apiInstance.praise(name, reason, (error, data, response) => {
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
 **name** | **String**| The person&#39;s name. | 
 **reason** | **String**| The reason for the praise/insult. | 

### Return type

[**Praise200Response**](Praise200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rateWord

> RateWord200Response rateWord(word)

Rate Word

Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.

### Example

```javascript
import HumorApi from 'humor_api';
let defaultClient = HumorApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

let apiInstance = new HumorApi.OtherApi();
let word = cookie; // String | The word to be rated.
apiInstance.rateWord(word, (error, data, response) => {
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
 **word** | **String**| The word to be rated. | 

### Return type

[**RateWord200Response**](RateWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchGifs

> SearchGifs200Response searchGifs(query, opts)

Search Gifs

Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.

### Example

```javascript
import HumorApi from 'humor_api';
let defaultClient = HumorApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

let apiInstance = new HumorApi.OtherApi();
let query = cat; // String | A search query.
let opts = {
  'number': 3 // Number | The number of results to retrieve between 1 and 10.
};
apiInstance.searchGifs(query, opts, (error, data, response) => {
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
 **query** | **String**| A search query. | 
 **number** | **Number**| The number of results to retrieve between 1 and 10. | [optional] 

### Return type

[**SearchGifs200Response**](SearchGifs200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

