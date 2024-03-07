# .MemesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downvoteMeme**](MemesApi.md#downvoteMeme) | **POST** /memes/{id}/downvote | Downvote a Meme
[**randomMeme**](MemesApi.md#randomMeme) | **GET** /memes/random | Random Meme
[**searchMemes**](MemesApi.md#searchMemes) | **GET** /memes/search | Search Memes
[**upvoteMeme**](MemesApi.md#upvoteMeme) | **POST** /memes/{id}/upvote | Upvote a Meme


# **downvoteMeme**
> SubmitJoke200Response downvoteMeme()

Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MemesApi(configuration);

let body:.MemesApiDownvoteMemeRequest = {
  // number | The object\'s id.
  id: 1,
};

apiInstance.downvoteMeme(body).then((data:any) => {
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

# **randomMeme**
> RandomMeme200Response randomMeme()

Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MemesApi(configuration);

let body:.MemesApiRandomMemeRequest = {
  // string | A comma separated list of keywords. (optional)
  keywords: "rocket",
  // boolean | Whether the keywords should be found in the meme\'s image. (optional)
  keywordsInImage: false,
  // 'image' | 'video' | 'jpg' | 'gif' | 'png' | 'mp4' | The type of the content. Can be either \'image\' or \'video\' or specific formats such as \'jpg\', \'png\', \'gif\', or \'mp4\'. (optional)
  mediaType: "image",
  // number | The number of results to retrieve between 1 and 10. (optional)
  number: 3,
  // number | The minimum rating between 0 and 10 the result should have. (optional)
  minRating: 7,
};

apiInstance.randomMeme(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | [**string**] | A comma separated list of keywords. | (optional) defaults to undefined
 **keywordsInImage** | [**boolean**] | Whether the keywords should be found in the meme\&#39;s image. | (optional) defaults to undefined
 **mediaType** | [**&#39;image&#39; | &#39;video&#39; | &#39;jpg&#39; | &#39;gif&#39; | &#39;png&#39; | &#39;mp4&#39;**]**Array<&#39;image&#39; &#124; &#39;video&#39; &#124; &#39;jpg&#39; &#124; &#39;gif&#39; &#124; &#39;png&#39; &#124; &#39;mp4&#39;>** | The type of the content. Can be either \&#39;image\&#39; or \&#39;video\&#39; or specific formats such as \&#39;jpg\&#39;, \&#39;png\&#39;, \&#39;gif\&#39;, or \&#39;mp4\&#39;. | (optional) defaults to undefined
 **number** | [**number**] | The number of results to retrieve between 1 and 10. | (optional) defaults to undefined
 **minRating** | [**number**] | The minimum rating between 0 and 10 the result should have. | (optional) defaults to undefined


### Return type

**RandomMeme200Response**

### Authorization

[apiKey](README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Random Meme Response |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchMemes**
> SearchMemes200Response searchMemes()

Search for memes. See https://humorapi.com/docs/#Search-Memes for more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MemesApi(configuration);

let body:.MemesApiSearchMemesRequest = {
  // string | A comma separated list of keywords. (optional)
  keywords: "rocket",
  // boolean | Whether the keywords should be found in the meme\'s image. (optional)
  keywordsInImage: false,
  // 'image' | 'video' | 'jpg' | 'gif' | 'png' | 'mp4' | The type of the content. Can be either \'image\' or \'video\' or specific formats such as \'jpg\', \'png\', \'gif\', or \'mp4\'. (optional)
  mediaType: "image",
  // number | The number of results to retrieve between 1 and 10. (optional)
  number: 3,
  // number | The minimum rating between 0 and 10 the result should have. (optional)
  minRating: 7,
  // number | The number of results to skip. (optional)
  offset: 0,
};

apiInstance.searchMemes(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | [**string**] | A comma separated list of keywords. | (optional) defaults to undefined
 **keywordsInImage** | [**boolean**] | Whether the keywords should be found in the meme\&#39;s image. | (optional) defaults to undefined
 **mediaType** | [**&#39;image&#39; | &#39;video&#39; | &#39;jpg&#39; | &#39;gif&#39; | &#39;png&#39; | &#39;mp4&#39;**]**Array<&#39;image&#39; &#124; &#39;video&#39; &#124; &#39;jpg&#39; &#124; &#39;gif&#39; &#124; &#39;png&#39; &#124; &#39;mp4&#39;>** | The type of the content. Can be either \&#39;image\&#39; or \&#39;video\&#39; or specific formats such as \&#39;jpg\&#39;, \&#39;png\&#39;, \&#39;gif\&#39;, or \&#39;mp4\&#39;. | (optional) defaults to undefined
 **number** | [**number**] | The number of results to retrieve between 1 and 10. | (optional) defaults to undefined
 **minRating** | [**number**] | The minimum rating between 0 and 10 the result should have. | (optional) defaults to undefined
 **offset** | [**number**] | The number of results to skip. | (optional) defaults to undefined


### Return type

**SearchMemes200Response**

### Authorization

[apiKey](README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Meme Search Response |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **upvoteMeme**
> SubmitJoke200Response upvoteMeme()

Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MemesApi(configuration);

let body:.MemesApiUpvoteMemeRequest = {
  // number | The object\'s id.
  id: 1,
};

apiInstance.upvoteMeme(body).then((data:any) => {
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


