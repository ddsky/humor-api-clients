# humorapi.JokesApi

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
> AnalyzeJoke200Response analyze_joke(body=body)

Analyze Joke

Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.

### Example

* Api Key Authentication (apiKey):

```python
import humorapi
from humorapi.models.analyze_joke200_response import AnalyzeJoke200Response
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
    api_instance = humorapi.JokesApi(api_client)
    body = 'body_example' # str | Post the joke as plain text. (optional)

    try:
        # Analyze Joke
        api_response = api_instance.analyze_joke(body=body)
        print("The response of JokesApi->analyze_joke:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JokesApi->analyze_joke: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **str**| Post the joke as plain text. | [optional] 

### Return type

[**AnalyzeJoke200Response**](AnalyzeJoke200Response.md)

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
> SubmitJoke200Response downvote_joke(id)

Downvote a Joke

Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.

### Example

* Api Key Authentication (apiKey):

```python
import humorapi
from humorapi.models.submit_joke200_response import SubmitJoke200Response
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
    api_instance = humorapi.JokesApi(api_client)
    id = 1 # int | The object's id.

    try:
        # Downvote a Joke
        api_response = api_instance.downvote_joke(id)
        print("The response of JokesApi->downvote_joke:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JokesApi->downvote_joke: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The object&#39;s id. | 

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

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
> RandomJoke200Response random_joke(keywords=keywords, include_tags=include_tags, exclude_tags=exclude_tags, min_rating=min_rating, max_length=max_length)

Random Joke

Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.

### Example

* Api Key Authentication (apiKey):

```python
import humorapi
from humorapi.models.random_joke200_response import RandomJoke200Response
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
    api_instance = humorapi.JokesApi(api_client)
    keywords = 'rocket' # str | A comma separated list of keywords. (optional)
    include_tags = 'one_liner' # str | A comma separated list of tags that the joke must have. (optional)
    exclude_tags = 'nsfw' # str | A comma separated list of tags that the joke must not have. (optional)
    min_rating = 7 # int | The minimum rating between 0 and 10 the result should have. (optional)
    max_length = 200 # int | The maximum number of letters in the joke. (optional)

    try:
        # Random Joke
        api_response = api_instance.random_joke(keywords=keywords, include_tags=include_tags, exclude_tags=exclude_tags, min_rating=min_rating, max_length=max_length)
        print("The response of JokesApi->random_joke:\n")
        pprint(api_response)
    except Exception as e:
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

[**RandomJoke200Response**](RandomJoke200Response.md)

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
> SearchJokes200Response search_jokes(keywords=keywords, include_tags=include_tags, exclude_tags=exclude_tags, number=number, min_rating=min_rating, max_length=max_length, offset=offset)

Search Jokes

Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.

### Example

* Api Key Authentication (apiKey):

```python
import humorapi
from humorapi.models.search_jokes200_response import SearchJokes200Response
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
    api_instance = humorapi.JokesApi(api_client)
    keywords = 'rocket' # str | A comma separated list of keywords. (optional)
    include_tags = 'one_liner' # str | A comma separated list of tags that the joke must have. (optional)
    exclude_tags = 'nsfw' # str | A comma separated list of tags that the joke must not have. (optional)
    number = 3 # int | The number of results to retrieve between 1 and 10. (optional)
    min_rating = 7 # int | The minimum rating between 0 and 10 the result should have. (optional)
    max_length = 200 # int | The maximum number of letters in the joke. (optional)
    offset = 3.4 # float | The number of results to skip. (optional)

    try:
        # Search Jokes
        api_response = api_instance.search_jokes(keywords=keywords, include_tags=include_tags, exclude_tags=exclude_tags, number=number, min_rating=min_rating, max_length=max_length, offset=offset)
        print("The response of JokesApi->search_jokes:\n")
        pprint(api_response)
    except Exception as e:
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

[**SearchJokes200Response**](SearchJokes200Response.md)

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
> SubmitJoke200Response submit_joke(body=body)

Submit Joke

Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.

### Example

* Api Key Authentication (apiKey):

```python
import humorapi
from humorapi.models.submit_joke200_response import SubmitJoke200Response
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
    api_instance = humorapi.JokesApi(api_client)
    body = 'body_example' # str | Post the joke as plain text. (optional)

    try:
        # Submit Joke
        api_response = api_instance.submit_joke(body=body)
        print("The response of JokesApi->submit_joke:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JokesApi->submit_joke: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **str**| Post the joke as plain text. | [optional] 

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

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
> SubmitJoke200Response upvote_joke(id)

Upvote a Joke

Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.

### Example

* Api Key Authentication (apiKey):

```python
import humorapi
from humorapi.models.submit_joke200_response import SubmitJoke200Response
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
    api_instance = humorapi.JokesApi(api_client)
    id = 1 # int | The object's id.

    try:
        # Upvote a Joke
        api_response = api_instance.upvote_joke(id)
        print("The response of JokesApi->upvote_joke:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JokesApi->upvote_joke: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The object&#39;s id. | 

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

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

