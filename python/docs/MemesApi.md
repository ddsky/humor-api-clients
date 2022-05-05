# openapi_client.MemesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downvote_meme**](MemesApi.md#downvote_meme) | **POST** /memes/{id}/downvote | Downvote a Meme
[**random_meme**](MemesApi.md#random_meme) | **GET** /memes/random | Random Meme
[**search_memes**](MemesApi.md#search_memes) | **GET** /memes/search | Search Memes
[**upvote_meme**](MemesApi.md#upvote_meme) | **POST** /memes/{id}/upvote | Upvote a Meme


# **downvote_meme**
> InlineResponse2008 downvote_meme(id)

Downvote a Meme

Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.

### Example

* Api Key Authentication (apiKey):

```python
import time
import openapi_client
from com.humorapi import memes_api
from openapi_client.model.inline_response2008 import InlineResponse2008
from pprint import pprint
# Defining the host is optional and defaults to https://api.humorapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.humorapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = memes_api.MemesApi(api_client)
    id = 1 # int | The object's id.

    # example passing only required values which don't have defaults set
    try:
        # Downvote a Meme
        api_response = api_instance.downvote_meme(id)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling MemesApi->downvote_meme: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The object&#39;s id. |

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful downvote |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **random_meme**
> InlineResponse2003 random_meme()

Random Meme

Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.

### Example

* Api Key Authentication (apiKey):

```python
import time
import openapi_client
from com.humorapi import memes_api
from openapi_client.model.inline_response2003 import InlineResponse2003
from pprint import pprint
# Defining the host is optional and defaults to https://api.humorapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.humorapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = memes_api.MemesApi(api_client)
    keywords = "rocket" # str | A comma separated list of keywords. (optional)
    keywords_in_image = False # bool | Whether the keywords should be found in the meme's image. (optional)
    media_type = "image" # str | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'. (optional)
    number = 3 # int | The number of results to retrieve between 1 and 10. (optional)
    min_rating = 7 # int | The minimum rating between 0 and 10 the result should have. (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Random Meme
        api_response = api_instance.random_meme(keywords=keywords, keywords_in_image=keywords_in_image, media_type=media_type, number=number, min_rating=min_rating)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling MemesApi->random_meme: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **str**| A comma separated list of keywords. | [optional]
 **keywords_in_image** | **bool**| Whether the keywords should be found in the meme&#39;s image. | [optional]
 **media_type** | **str**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional]
 **number** | **int**| The number of results to retrieve between 1 and 10. | [optional]
 **min_rating** | **int**| The minimum rating between 0 and 10 the result should have. | [optional]

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Random Meme Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_memes**
> InlineResponse2002 search_memes()

Search Memes

Search for memes. See https://humorapi.com/docs/#Search-Memes for more.

### Example

* Api Key Authentication (apiKey):

```python
import time
import openapi_client
from com.humorapi import memes_api
from openapi_client.model.inline_response2002 import InlineResponse2002
from pprint import pprint
# Defining the host is optional and defaults to https://api.humorapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.humorapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = memes_api.MemesApi(api_client)
    keywords = "rocket" # str | A comma separated list of keywords. (optional)
    keywords_in_image = False # bool | Whether the keywords should be found in the meme's image. (optional)
    media_type = "image" # str | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'. (optional)
    number = 3 # int | The number of results to retrieve between 1 and 10. (optional)
    min_rating = 7 # int | The minimum rating between 0 and 10 the result should have. (optional)
    offset = 0 # float | The number of results to skip. (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Search Memes
        api_response = api_instance.search_memes(keywords=keywords, keywords_in_image=keywords_in_image, media_type=media_type, number=number, min_rating=min_rating, offset=offset)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling MemesApi->search_memes: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **str**| A comma separated list of keywords. | [optional]
 **keywords_in_image** | **bool**| Whether the keywords should be found in the meme&#39;s image. | [optional]
 **media_type** | **str**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional]
 **number** | **int**| The number of results to retrieve between 1 and 10. | [optional]
 **min_rating** | **int**| The minimum rating between 0 and 10 the result should have. | [optional]
 **offset** | **float**| The number of results to skip. | [optional]

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Meme Search Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upvote_meme**
> InlineResponse2008 upvote_meme(id)

Upvote a Meme

Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.

### Example

* Api Key Authentication (apiKey):

```python
import time
import openapi_client
from com.humorapi import memes_api
from openapi_client.model.inline_response2008 import InlineResponse2008
from pprint import pprint
# Defining the host is optional and defaults to https://api.humorapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.humorapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = memes_api.MemesApi(api_client)
    id = 1 # int | The object's id.

    # example passing only required values which don't have defaults set
    try:
        # Upvote a Meme
        api_response = api_instance.upvote_meme(id)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling MemesApi->upvote_meme: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The object&#39;s id. |

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful upvote |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

