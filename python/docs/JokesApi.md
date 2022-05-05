# openapi_client.JokesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyze_joke**](JokesApi.md#analyze_joke) | **POST** /jokes/analyze | Analyze Joke
[**downvote_joke**](JokesApi.md#downvote_joke) | **POST** /jokes/{id}/downvote | Downvote a Joke
[**random_joke**](JokesApi.md#random_joke) | **GET** /jokes/random | Random Joke
[**search_jokes**](JokesApi.md#search_jokes) | **GET** /jokes/search | Search Jokes
[**submit_joke**](JokesApi.md#submit_joke) | **POST** /jokes | Submit Joke
[**upvote_joke**](JokesApi.md#upvote_joke) | **POST** /jokes/{id}/upvote | Upvote a Joke


# **analyze_joke**
> InlineResponse2009 analyze_joke()

Analyze Joke

Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.

### Example

* Api Key Authentication (apiKey):

```python
import time
import openapi_client
from com.humorapi import jokes_api
from openapi_client.model.inline_response2009 import InlineResponse2009
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
    api_instance = jokes_api.JokesApi(api_client)
    body = "body_example" # str | Post the joke as plain text. (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Analyze Joke
        api_response = api_instance.analyze_joke(body=body)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling JokesApi->analyze_joke: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **str**| Post the joke as plain text. | [optional]

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful analysis |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downvote_joke**
> InlineResponse2008 downvote_joke(id)

Downvote a Joke

Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.

### Example

* Api Key Authentication (apiKey):

```python
import time
import openapi_client
from com.humorapi import jokes_api
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
    api_instance = jokes_api.JokesApi(api_client)
    id = 1 # int | The object's id.

    # example passing only required values which don't have defaults set
    try:
        # Downvote a Joke
        api_response = api_instance.downvote_joke(id)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling JokesApi->downvote_joke: %s\n" % e)
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

# **random_joke**
> InlineResponse2004 random_joke()

Random Joke

Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.

### Example

* Api Key Authentication (apiKey):

```python
import time
import openapi_client
from com.humorapi import jokes_api
from openapi_client.model.inline_response2004 import InlineResponse2004
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
    api_instance = jokes_api.JokesApi(api_client)
    keywords = "rocket" # str | A comma separated list of keywords. (optional)
    include_tags = "one_liner" # str | A comma separated list of tags that the joke must have. (optional)
    exclude_tags = "nsfw" # str | A comma separated list of tags that the joke must not have. (optional)
    min_rating = 7 # int | The minimum rating between 0 and 10 the result should have. (optional)
    max_length = 200 # int | The maximum number of letters in the joke. (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Random Joke
        api_response = api_instance.random_joke(keywords=keywords, include_tags=include_tags, exclude_tags=exclude_tags, min_rating=min_rating, max_length=max_length)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling JokesApi->random_joke: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **str**| A comma separated list of keywords. | [optional]
 **include_tags** | **str**| A comma separated list of tags that the joke must have. | [optional]
 **exclude_tags** | **str**| A comma separated list of tags that the joke must not have. | [optional]
 **min_rating** | **int**| The minimum rating between 0 and 10 the result should have. | [optional]
 **max_length** | **int**| The maximum number of letters in the joke. | [optional]

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Random Joke Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_jokes**
> InlineResponse200 search_jokes()

Search Jokes

Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.

### Example

* Api Key Authentication (apiKey):

```python
import time
import openapi_client
from com.humorapi import jokes_api
from openapi_client.model.inline_response200 import InlineResponse200
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
    api_instance = jokes_api.JokesApi(api_client)
    keywords = "rocket" # str | A comma separated list of keywords. (optional)
    include_tags = "one_liner" # str | A comma separated list of tags that the joke must have. (optional)
    exclude_tags = "nsfw" # str | A comma separated list of tags that the joke must not have. (optional)
    number = 3 # int | The number of results to retrieve between 1 and 10. (optional)
    min_rating = 7 # int | The minimum rating between 0 and 10 the result should have. (optional)
    max_length = 200 # int | The maximum number of letters in the joke. (optional)
    offset = 0 # float | The number of results to skip. (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Search Jokes
        api_response = api_instance.search_jokes(keywords=keywords, include_tags=include_tags, exclude_tags=exclude_tags, number=number, min_rating=min_rating, max_length=max_length, offset=offset)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling JokesApi->search_jokes: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **str**| A comma separated list of keywords. | [optional]
 **include_tags** | **str**| A comma separated list of tags that the joke must have. | [optional]
 **exclude_tags** | **str**| A comma separated list of tags that the joke must not have. | [optional]
 **number** | **int**| The number of results to retrieve between 1 and 10. | [optional]
 **min_rating** | **int**| The minimum rating between 0 and 10 the result should have. | [optional]
 **max_length** | **int**| The maximum number of letters in the joke. | [optional]
 **offset** | **float**| The number of results to skip. | [optional]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Joke Search Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submit_joke**
> InlineResponse2008 submit_joke()

Submit Joke

Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.

### Example

* Api Key Authentication (apiKey):

```python
import time
import openapi_client
from com.humorapi import jokes_api
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
    api_instance = jokes_api.JokesApi(api_client)
    body = "body_example" # str | Post the joke as plain text. (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Submit Joke
        api_response = api_instance.submit_joke(body=body)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling JokesApi->submit_joke: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **str**| Post the joke as plain text. | [optional]

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful submission. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upvote_joke**
> InlineResponse2008 upvote_joke(id)

Upvote a Joke

Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.

### Example

* Api Key Authentication (apiKey):

```python
import time
import openapi_client
from com.humorapi import jokes_api
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
    api_instance = jokes_api.JokesApi(api_client)
    id = 1 # int | The object's id.

    # example passing only required values which don't have defaults set
    try:
        # Upvote a Joke
        api_response = api_instance.upvote_joke(id)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling JokesApi->upvote_joke: %s\n" % e)
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

