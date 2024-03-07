# HumorApi.JokesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyzeJoke**](JokesApi.md#analyzeJoke) | **POST** /jokes/analyze | Analyze Joke
[**downvoteJoke**](JokesApi.md#downvoteJoke) | **POST** /jokes/{id}/downvote | Downvote a Joke
[**randomJoke**](JokesApi.md#randomJoke) | **GET** /jokes/random | Random Joke
[**searchJokes**](JokesApi.md#searchJokes) | **GET** /jokes/search | Search Jokes
[**submitJoke**](JokesApi.md#submitJoke) | **POST** /jokes | Submit Joke
[**upvoteJoke**](JokesApi.md#upvoteJoke) | **POST** /jokes/{id}/upvote | Upvote a Joke



## analyzeJoke

> AnalyzeJoke200Response analyzeJoke(opts)

Analyze Joke

Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.

### Example

```javascript
import HumorApi from 'humor_api';
let defaultClient = HumorApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

let apiInstance = new HumorApi.JokesApi();
let opts = {
  'body': "body_example" // String | Post the joke as plain text.
};
apiInstance.analyzeJoke(opts, (error, data, response) => {
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
 **body** | **String**| Post the joke as plain text. | [optional] 

### Return type

[**AnalyzeJoke200Response**](AnalyzeJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: application/json


## downvoteJoke

> SubmitJoke200Response downvoteJoke(id)

Downvote a Joke

Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.

### Example

```javascript
import HumorApi from 'humor_api';
let defaultClient = HumorApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

let apiInstance = new HumorApi.JokesApi();
let id = 1; // Number | The object's id.
apiInstance.downvoteJoke(id, (error, data, response) => {
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


## randomJoke

> RandomJoke200Response randomJoke(opts)

Random Joke

Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.

### Example

```javascript
import HumorApi from 'humor_api';
let defaultClient = HumorApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

let apiInstance = new HumorApi.JokesApi();
let opts = {
  'keywords': rocket, // String | A comma separated list of keywords.
  'includeTags': one_liner, // String | A comma separated list of tags that the joke must have.
  'excludeTags': nsfw, // String | A comma separated list of tags that the joke must not have.
  'minRating': 7, // Number | The minimum rating between 0 and 10 the result should have.
  'maxLength': 200 // Number | The maximum number of letters in the joke.
};
apiInstance.randomJoke(opts, (error, data, response) => {
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
 **includeTags** | **String**| A comma separated list of tags that the joke must have. | [optional] 
 **excludeTags** | **String**| A comma separated list of tags that the joke must not have. | [optional] 
 **minRating** | **Number**| The minimum rating between 0 and 10 the result should have. | [optional] 
 **maxLength** | **Number**| The maximum number of letters in the joke. | [optional] 

### Return type

[**RandomJoke200Response**](RandomJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchJokes

> SearchJokes200Response searchJokes(opts)

Search Jokes

Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.

### Example

```javascript
import HumorApi from 'humor_api';
let defaultClient = HumorApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

let apiInstance = new HumorApi.JokesApi();
let opts = {
  'keywords': rocket, // String | A comma separated list of keywords.
  'includeTags': one_liner, // String | A comma separated list of tags that the joke must have.
  'excludeTags': nsfw, // String | A comma separated list of tags that the joke must not have.
  'number': 3, // Number | The number of results to retrieve between 1 and 10.
  'minRating': 7, // Number | The minimum rating between 0 and 10 the result should have.
  'maxLength': 200, // Number | The maximum number of letters in the joke.
  'offset': 3.4 // Number | The number of results to skip.
};
apiInstance.searchJokes(opts, (error, data, response) => {
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
 **includeTags** | **String**| A comma separated list of tags that the joke must have. | [optional] 
 **excludeTags** | **String**| A comma separated list of tags that the joke must not have. | [optional] 
 **number** | **Number**| The number of results to retrieve between 1 and 10. | [optional] 
 **minRating** | **Number**| The minimum rating between 0 and 10 the result should have. | [optional] 
 **maxLength** | **Number**| The maximum number of letters in the joke. | [optional] 
 **offset** | **Number**| The number of results to skip. | [optional] 

### Return type

[**SearchJokes200Response**](SearchJokes200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## submitJoke

> SubmitJoke200Response submitJoke(opts)

Submit Joke

Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.

### Example

```javascript
import HumorApi from 'humor_api';
let defaultClient = HumorApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

let apiInstance = new HumorApi.JokesApi();
let opts = {
  'body': "body_example" // String | Post the joke as plain text.
};
apiInstance.submitJoke(opts, (error, data, response) => {
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
 **body** | **String**| Post the joke as plain text. | [optional] 

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: application/json


## upvoteJoke

> SubmitJoke200Response upvoteJoke(id)

Upvote a Joke

Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.

### Example

```javascript
import HumorApi from 'humor_api';
let defaultClient = HumorApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

let apiInstance = new HumorApi.JokesApi();
let id = 1; // Number | The object's id.
apiInstance.upvoteJoke(id, (error, data, response) => {
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

