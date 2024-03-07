# .JokesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyzeJoke**](JokesApi.md#analyzeJoke) | **POST** /jokes/analyze | Analyze Joke
[**downvoteJoke**](JokesApi.md#downvoteJoke) | **POST** /jokes/{id}/downvote | Downvote a Joke
[**randomJoke**](JokesApi.md#randomJoke) | **GET** /jokes/random | Random Joke
[**searchJokes**](JokesApi.md#searchJokes) | **GET** /jokes/search | Search Jokes
[**submitJoke**](JokesApi.md#submitJoke) | **POST** /jokes | Submit Joke
[**upvoteJoke**](JokesApi.md#upvoteJoke) | **POST** /jokes/{id}/upvote | Upvote a Joke


# **analyzeJoke**
> AnalyzeJoke200Response analyzeJoke()

Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .JokesApi(configuration);

let body:.JokesApiAnalyzeJokeRequest = {
  // string | Post the joke as plain text. (optional)
  body: "body_example",
};

apiInstance.analyzeJoke(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **string**| Post the joke as plain text. |


### Return type

**AnalyzeJoke200Response**

### Authorization

[apiKey](README.md#apiKey)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful analysis |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **downvoteJoke**
> SubmitJoke200Response downvoteJoke()

Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .JokesApi(configuration);

let body:.JokesApiDownvoteJokeRequest = {
  // number | The object\'s id.
  id: 1,
};

apiInstance.downvoteJoke(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The object\&#39;s id. | defaults to undefined


### Return type

**SubmitJoke200Response**

### Authorization

[apiKey](README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful downvote |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **randomJoke**
> RandomJoke200Response randomJoke()

Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .JokesApi(configuration);

let body:.JokesApiRandomJokeRequest = {
  // string | A comma separated list of keywords. (optional)
  keywords: "rocket",
  // 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday' | A comma separated list of tags that the joke must have. (optional)
  includeTags: "one_liner",
  // 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday' | A comma separated list of tags that the joke must not have. (optional)
  excludeTags: "nsfw",
  // number | The minimum rating between 0 and 10 the result should have. (optional)
  minRating: 7,
  // number | The maximum number of letters in the joke. (optional)
  maxLength: 200,
};

apiInstance.randomJoke(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | [**string**] | A comma separated list of keywords. | (optional) defaults to undefined
 **includeTags** | [**&#39;clean&#39; | &#39;yo_mama&#39; | &#39;chuck_norris&#39; | &#39;nsfw&#39; | &#39;racist&#39; | &#39;sexist&#39; | &#39;sexual&#39; | &#39;political&#39; | &#39;religious&#39; | &#39;knock_knock&#39; | &#39;christmas&#39; | &#39;nerdy&#39; | &#39;analogy&#39; | &#39;one_liner&#39; | &#39;dark&#39; | &#39;jewish&#39; | &#39;school&#39; | &#39;sport&#39; | &#39;law&#39; | &#39;kids&#39; | &#39;animal&#39; | &#39;relationship&#39; | &#39;insults&#39; | &#39;blondes&#39; | &#39;deep_thoughts&#39; | &#39;food&#39; | &#39;holiday&#39;**]**Array<&#39;clean&#39; &#124; &#39;yo_mama&#39; &#124; &#39;chuck_norris&#39; &#124; &#39;nsfw&#39; &#124; &#39;racist&#39; &#124; &#39;sexist&#39; &#124; &#39;sexual&#39; &#124; &#39;political&#39; &#124; &#39;religious&#39; &#124; &#39;knock_knock&#39; &#124; &#39;christmas&#39; &#124; &#39;nerdy&#39; &#124; &#39;analogy&#39; &#124; &#39;one_liner&#39; &#124; &#39;dark&#39; &#124; &#39;jewish&#39; &#124; &#39;school&#39; &#124; &#39;sport&#39; &#124; &#39;law&#39; &#124; &#39;kids&#39; &#124; &#39;animal&#39; &#124; &#39;relationship&#39; &#124; &#39;insults&#39; &#124; &#39;blondes&#39; &#124; &#39;deep_thoughts&#39; &#124; &#39;food&#39; &#124; &#39;holiday&#39;>** | A comma separated list of tags that the joke must have. | (optional) defaults to undefined
 **excludeTags** | [**&#39;clean&#39; | &#39;yo_mama&#39; | &#39;chuck_norris&#39; | &#39;nsfw&#39; | &#39;racist&#39; | &#39;sexist&#39; | &#39;sexual&#39; | &#39;political&#39; | &#39;religious&#39; | &#39;knock_knock&#39; | &#39;christmas&#39; | &#39;nerdy&#39; | &#39;analogy&#39; | &#39;one_liner&#39; | &#39;dark&#39; | &#39;jewish&#39; | &#39;school&#39; | &#39;sport&#39; | &#39;law&#39; | &#39;kids&#39; | &#39;animal&#39; | &#39;relationship&#39; | &#39;insults&#39; | &#39;blondes&#39; | &#39;deep_thoughts&#39; | &#39;food&#39; | &#39;holiday&#39;**]**Array<&#39;clean&#39; &#124; &#39;yo_mama&#39; &#124; &#39;chuck_norris&#39; &#124; &#39;nsfw&#39; &#124; &#39;racist&#39; &#124; &#39;sexist&#39; &#124; &#39;sexual&#39; &#124; &#39;political&#39; &#124; &#39;religious&#39; &#124; &#39;knock_knock&#39; &#124; &#39;christmas&#39; &#124; &#39;nerdy&#39; &#124; &#39;analogy&#39; &#124; &#39;one_liner&#39; &#124; &#39;dark&#39; &#124; &#39;jewish&#39; &#124; &#39;school&#39; &#124; &#39;sport&#39; &#124; &#39;law&#39; &#124; &#39;kids&#39; &#124; &#39;animal&#39; &#124; &#39;relationship&#39; &#124; &#39;insults&#39; &#124; &#39;blondes&#39; &#124; &#39;deep_thoughts&#39; &#124; &#39;food&#39; &#124; &#39;holiday&#39;>** | A comma separated list of tags that the joke must not have. | (optional) defaults to undefined
 **minRating** | [**number**] | The minimum rating between 0 and 10 the result should have. | (optional) defaults to undefined
 **maxLength** | [**number**] | The maximum number of letters in the joke. | (optional) defaults to undefined


### Return type

**RandomJoke200Response**

### Authorization

[apiKey](README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Random Joke Response |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchJokes**
> SearchJokes200Response searchJokes()

Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .JokesApi(configuration);

let body:.JokesApiSearchJokesRequest = {
  // string | A comma separated list of keywords. (optional)
  keywords: "rocket",
  // 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday' | A comma separated list of tags that the joke must have. (optional)
  includeTags: "one_liner",
  // 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday' | A comma separated list of tags that the joke must not have. (optional)
  excludeTags: "nsfw",
  // number | The number of results to retrieve between 1 and 10. (optional)
  number: 3,
  // number | The minimum rating between 0 and 10 the result should have. (optional)
  minRating: 7,
  // number | The maximum number of letters in the joke. (optional)
  maxLength: 200,
  // number | The number of results to skip. (optional)
  offset: 0,
};

apiInstance.searchJokes(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | [**string**] | A comma separated list of keywords. | (optional) defaults to undefined
 **includeTags** | [**&#39;clean&#39; | &#39;yo_mama&#39; | &#39;chuck_norris&#39; | &#39;nsfw&#39; | &#39;racist&#39; | &#39;sexist&#39; | &#39;sexual&#39; | &#39;political&#39; | &#39;religious&#39; | &#39;knock_knock&#39; | &#39;christmas&#39; | &#39;nerdy&#39; | &#39;analogy&#39; | &#39;one_liner&#39; | &#39;dark&#39; | &#39;jewish&#39; | &#39;school&#39; | &#39;sport&#39; | &#39;law&#39; | &#39;kids&#39; | &#39;animal&#39; | &#39;relationship&#39; | &#39;insults&#39; | &#39;blondes&#39; | &#39;deep_thoughts&#39; | &#39;food&#39; | &#39;holiday&#39;**]**Array<&#39;clean&#39; &#124; &#39;yo_mama&#39; &#124; &#39;chuck_norris&#39; &#124; &#39;nsfw&#39; &#124; &#39;racist&#39; &#124; &#39;sexist&#39; &#124; &#39;sexual&#39; &#124; &#39;political&#39; &#124; &#39;religious&#39; &#124; &#39;knock_knock&#39; &#124; &#39;christmas&#39; &#124; &#39;nerdy&#39; &#124; &#39;analogy&#39; &#124; &#39;one_liner&#39; &#124; &#39;dark&#39; &#124; &#39;jewish&#39; &#124; &#39;school&#39; &#124; &#39;sport&#39; &#124; &#39;law&#39; &#124; &#39;kids&#39; &#124; &#39;animal&#39; &#124; &#39;relationship&#39; &#124; &#39;insults&#39; &#124; &#39;blondes&#39; &#124; &#39;deep_thoughts&#39; &#124; &#39;food&#39; &#124; &#39;holiday&#39;>** | A comma separated list of tags that the joke must have. | (optional) defaults to undefined
 **excludeTags** | [**&#39;clean&#39; | &#39;yo_mama&#39; | &#39;chuck_norris&#39; | &#39;nsfw&#39; | &#39;racist&#39; | &#39;sexist&#39; | &#39;sexual&#39; | &#39;political&#39; | &#39;religious&#39; | &#39;knock_knock&#39; | &#39;christmas&#39; | &#39;nerdy&#39; | &#39;analogy&#39; | &#39;one_liner&#39; | &#39;dark&#39; | &#39;jewish&#39; | &#39;school&#39; | &#39;sport&#39; | &#39;law&#39; | &#39;kids&#39; | &#39;animal&#39; | &#39;relationship&#39; | &#39;insults&#39; | &#39;blondes&#39; | &#39;deep_thoughts&#39; | &#39;food&#39; | &#39;holiday&#39;**]**Array<&#39;clean&#39; &#124; &#39;yo_mama&#39; &#124; &#39;chuck_norris&#39; &#124; &#39;nsfw&#39; &#124; &#39;racist&#39; &#124; &#39;sexist&#39; &#124; &#39;sexual&#39; &#124; &#39;political&#39; &#124; &#39;religious&#39; &#124; &#39;knock_knock&#39; &#124; &#39;christmas&#39; &#124; &#39;nerdy&#39; &#124; &#39;analogy&#39; &#124; &#39;one_liner&#39; &#124; &#39;dark&#39; &#124; &#39;jewish&#39; &#124; &#39;school&#39; &#124; &#39;sport&#39; &#124; &#39;law&#39; &#124; &#39;kids&#39; &#124; &#39;animal&#39; &#124; &#39;relationship&#39; &#124; &#39;insults&#39; &#124; &#39;blondes&#39; &#124; &#39;deep_thoughts&#39; &#124; &#39;food&#39; &#124; &#39;holiday&#39;>** | A comma separated list of tags that the joke must not have. | (optional) defaults to undefined
 **number** | [**number**] | The number of results to retrieve between 1 and 10. | (optional) defaults to undefined
 **minRating** | [**number**] | The minimum rating between 0 and 10 the result should have. | (optional) defaults to undefined
 **maxLength** | [**number**] | The maximum number of letters in the joke. | (optional) defaults to undefined
 **offset** | [**number**] | The number of results to skip. | (optional) defaults to undefined


### Return type

**SearchJokes200Response**

### Authorization

[apiKey](README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Joke Search Response |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **submitJoke**
> SubmitJoke200Response submitJoke()

Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .JokesApi(configuration);

let body:.JokesApiSubmitJokeRequest = {
  // string | Post the joke as plain text. (optional)
  body: "body_example",
};

apiInstance.submitJoke(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **string**| Post the joke as plain text. |


### Return type

**SubmitJoke200Response**

### Authorization

[apiKey](README.md#apiKey)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful submission. |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **upvoteJoke**
> SubmitJoke200Response upvoteJoke()

Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .JokesApi(configuration);

let body:.JokesApiUpvoteJokeRequest = {
  // number | The object\'s id.
  id: 1,
};

apiInstance.upvoteJoke(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The object\&#39;s id. | defaults to undefined


### Return type

**SubmitJoke200Response**

### Authorization

[apiKey](README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful upvote |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


