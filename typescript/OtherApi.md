# .OtherApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateNonsenseWord**](OtherApi.md#generateNonsenseWord) | **GET** /words/nonsense/random | Generate Nonsense Word
[**insult**](OtherApi.md#insult) | **GET** /insult | Insult
[**praise**](OtherApi.md#praise) | **GET** /praise | Praise
[**rateWord**](OtherApi.md#rateWord) | **GET** /words/rate | Rate Word
[**searchGifs**](OtherApi.md#searchGifs) | **GET** /gif/search | Search Gifs


# **generateNonsenseWord**
> InlineResponse2007 generateNonsenseWord()

Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .OtherApi(configuration);

let body:any = {};

apiInstance.generateNonsenseWord(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters
This endpoint does not need any parameter.


### Return type

**InlineResponse2007**

### Authorization

[apiKey](README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Generate Nonsense Word Response |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **insult**
> InlineResponse2005 insult()

Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .OtherApi(configuration);

let body:.OtherApiInsultRequest = {
  // string | The person's name.
  name: "Alex",
  // string | The reason for the praise/insult.
  reason: "you did it again",
};

apiInstance.insult(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | [**string**] | The person&#39;s name. | defaults to undefined
 **reason** | [**string**] | The reason for the praise/insult. | defaults to undefined


### Return type

**InlineResponse2005**

### Authorization

[apiKey](README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Insult Response |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **praise**
> InlineResponse2005 praise()

Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .OtherApi(configuration);

let body:.OtherApiPraiseRequest = {
  // string | The person's name.
  name: "Alex",
  // string | The reason for the praise/insult.
  reason: "you did it again",
};

apiInstance.praise(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | [**string**] | The person&#39;s name. | defaults to undefined
 **reason** | [**string**] | The reason for the praise/insult. | defaults to undefined


### Return type

**InlineResponse2005**

### Authorization

[apiKey](README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Praise Response |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **rateWord**
> InlineResponse2006 rateWord()

Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .OtherApi(configuration);

let body:.OtherApiRateWordRequest = {
  // string | The word to be rated.
  word: "cookie",
};

apiInstance.rateWord(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | [**string**] | The word to be rated. | defaults to undefined


### Return type

**InlineResponse2006**

### Authorization

[apiKey](README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Word Rating Response |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchGifs**
> InlineResponse2001 searchGifs()

Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .OtherApi(configuration);

let body:.OtherApiSearchGifsRequest = {
  // string | A search query.
  query: "cat",
  // number | The number of results to retrieve between 1 and 10. (optional)
  number: 3,
};

apiInstance.searchGifs(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | A search query. | defaults to undefined
 **number** | [**number**] | The number of results to retrieve between 1 and 10. | (optional) defaults to undefined


### Return type

**InlineResponse2001**

### Authorization

[apiKey](README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Gif Search Response |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


