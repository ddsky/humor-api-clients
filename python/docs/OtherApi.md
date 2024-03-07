# humorapi.OtherApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_nonsense_word**](OtherApi.md#generate_nonsense_word) | **GET** /words/nonsense/random | Generate Nonsense Word
[**insult**](OtherApi.md#insult) | **GET** /insult | Insult
[**praise**](OtherApi.md#praise) | **GET** /praise | Praise
[**rate_word**](OtherApi.md#rate_word) | **GET** /words/rate | Rate Word
[**search_gifs**](OtherApi.md#search_gifs) | **GET** /gif/search | Search Gifs


# **generate_nonsense_word**
> GenerateNonsenseWord200Response generate_nonsense_word()

Generate Nonsense Word

Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.

### Example

* Api Key Authentication (apiKey):

```python
import humorapi
from humorapi.models.generate_nonsense_word200_response import GenerateNonsenseWord200Response
from humorapi.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.humorapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = humorapi.Configuration(
    host = "https://api.humorapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with humorapi.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = humorapi.OtherApi(api_client)

    try:
        # Generate Nonsense Word
        api_response = api_instance.generate_nonsense_word()
        print("The response of OtherApi->generate_nonsense_word:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OtherApi->generate_nonsense_word: %s\n" % e)
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

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Generate Nonsense Word Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **insult**
> Praise200Response insult(name, reason)

Insult

Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.

### Example

* Api Key Authentication (apiKey):

```python
import humorapi
from humorapi.models.praise200_response import Praise200Response
from humorapi.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.humorapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = humorapi.Configuration(
    host = "https://api.humorapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with humorapi.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = humorapi.OtherApi(api_client)
    name = 'Alex' # str | The person's name.
    reason = 'you did it again' # str | The reason for the praise/insult.

    try:
        # Insult
        api_response = api_instance.insult(name, reason)
        print("The response of OtherApi->insult:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OtherApi->insult: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The person&#39;s name. | 
 **reason** | **str**| The reason for the praise/insult. | 

### Return type

[**Praise200Response**](Praise200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Insult Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **praise**
> Praise200Response praise(name, reason)

Praise

Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.

### Example

* Api Key Authentication (apiKey):

```python
import humorapi
from humorapi.models.praise200_response import Praise200Response
from humorapi.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.humorapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = humorapi.Configuration(
    host = "https://api.humorapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with humorapi.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = humorapi.OtherApi(api_client)
    name = 'Alex' # str | The person's name.
    reason = 'you did it again' # str | The reason for the praise/insult.

    try:
        # Praise
        api_response = api_instance.praise(name, reason)
        print("The response of OtherApi->praise:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OtherApi->praise: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The person&#39;s name. | 
 **reason** | **str**| The reason for the praise/insult. | 

### Return type

[**Praise200Response**](Praise200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Praise Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rate_word**
> RateWord200Response rate_word(word)

Rate Word

Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.

### Example

* Api Key Authentication (apiKey):

```python
import humorapi
from humorapi.models.rate_word200_response import RateWord200Response
from humorapi.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.humorapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = humorapi.Configuration(
    host = "https://api.humorapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with humorapi.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = humorapi.OtherApi(api_client)
    word = 'cookie' # str | The word to be rated.

    try:
        # Rate Word
        api_response = api_instance.rate_word(word)
        print("The response of OtherApi->rate_word:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OtherApi->rate_word: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **str**| The word to be rated. | 

### Return type

[**RateWord200Response**](RateWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Word Rating Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_gifs**
> SearchGifs200Response search_gifs(query, number=number)

Search Gifs

Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.

### Example

* Api Key Authentication (apiKey):

```python
import humorapi
from humorapi.models.search_gifs200_response import SearchGifs200Response
from humorapi.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.humorapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = humorapi.Configuration(
    host = "https://api.humorapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with humorapi.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = humorapi.OtherApi(api_client)
    query = 'cat' # str | A search query.
    number = 3 # int | The number of results to retrieve between 1 and 10. (optional)

    try:
        # Search Gifs
        api_response = api_instance.search_gifs(query, number=number)
        print("The response of OtherApi->search_gifs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OtherApi->search_gifs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| A search query. | 
 **number** | **int**| The number of results to retrieve between 1 and 10. | [optional] 

### Return type

[**SearchGifs200Response**](SearchGifs200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Gif Search Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

