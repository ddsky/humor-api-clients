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
> InlineResponse2009 analyze_joke(body=body)

Analyze Joke

Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.

### Example

* Api Key Authentication (apiKey):
```python
from __future__ import print_function
import time
import humorapi
from humorapi.rest import ApiException
from pprint import pprint
configuration = humorapi.Configuration()
# Configure API key authorization: apiKey
configuration.api_key['api-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api-key'] = 'Bearer'

# create an instance of the API class
api_instance = humorapi.JokesApi(humorapi.ApiClient(configuration))
body = 'body_example' # str | Post the joke as plain text. (optional)

try:
    # Analyze Joke
    api_response = api_instance.analyze_joke(body=body)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downvote_joke**
> InlineResponse2008 downvote_joke(id)

Downvote a Joke

Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.

### Example

* Api Key Authentication (apiKey):
```python
from __future__ import print_function
import time
import humorapi
from humorapi.rest import ApiException
from pprint import pprint
configuration = humorapi.Configuration()
# Configure API key authorization: apiKey
configuration.api_key['api-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api-key'] = 'Bearer'

# create an instance of the API class
api_instance = humorapi.JokesApi(humorapi.ApiClient(configuration))
id = 1 # int | The object's id.

try:
    # Downvote a Joke
    api_response = api_instance.downvote_joke(id)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **random_joke**
> InlineResponse2004 random_joke(keywords=keywords, include_tags=include_tags, exclude_tags=exclude_tags, min_rating=min_rating, max_length=max_length)

Random Joke

Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.

### Example

* Api Key Authentication (apiKey):
```python
from __future__ import print_function
import time
import humorapi
from humorapi.rest import ApiException
from pprint import pprint
configuration = humorapi.Configuration()
# Configure API key authorization: apiKey
configuration.api_key['api-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api-key'] = 'Bearer'

# create an instance of the API class
api_instance = humorapi.JokesApi(humorapi.ApiClient(configuration))
keywords = 'rocket' # str | A comma separated list of keywords. (optional)
include_tags = 'one_liner' # str | A comma separated list of tags that the joke must have. (optional)
exclude_tags = 'nsfw' # str | A comma separated list of tags that the joke must not have. (optional)
min_rating = 7 # int | The minimum rating between 0 and 10 the result should have. (optional)
max_length = 200 # int | The maximum number of letters in the joke. (optional)

try:
    # Random Joke
    api_response = api_instance.random_joke(keywords=keywords, include_tags=include_tags, exclude_tags=exclude_tags, min_rating=min_rating, max_length=max_length)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_jokes**
> InlineResponse200 search_jokes(keywords=keywords, include_tags=include_tags, exclude_tags=exclude_tags, number=number, min_rating=min_rating, max_length=max_length, offset=offset)

Search Jokes

Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.

### Example

* Api Key Authentication (apiKey):
```python
from __future__ import print_function
import time
import humorapi
from humorapi.rest import ApiException
from pprint import pprint
configuration = humorapi.Configuration()
# Configure API key authorization: apiKey
configuration.api_key['api-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api-key'] = 'Bearer'

# create an instance of the API class
api_instance = humorapi.JokesApi(humorapi.ApiClient(configuration))
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
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submit_joke**
> InlineResponse2008 submit_joke(body=body)

Submit Joke

Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.

### Example

* Api Key Authentication (apiKey):
```python
from __future__ import print_function
import time
import humorapi
from humorapi.rest import ApiException
from pprint import pprint
configuration = humorapi.Configuration()
# Configure API key authorization: apiKey
configuration.api_key['api-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api-key'] = 'Bearer'

# create an instance of the API class
api_instance = humorapi.JokesApi(humorapi.ApiClient(configuration))
body = 'body_example' # str | Post the joke as plain text. (optional)

try:
    # Submit Joke
    api_response = api_instance.submit_joke(body=body)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upvote_joke**
> InlineResponse2008 upvote_joke(id)

Upvote a Joke

Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.

### Example

* Api Key Authentication (apiKey):
```python
from __future__ import print_function
import time
import humorapi
from humorapi.rest import ApiException
from pprint import pprint
configuration = humorapi.Configuration()
# Configure API key authorization: apiKey
configuration.api_key['api-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api-key'] = 'Bearer'

# create an instance of the API class
api_instance = humorapi.JokesApi(humorapi.ApiClient(configuration))
id = 1 # int | The object's id.

try:
    # Upvote a Joke
    api_response = api_instance.upvote_joke(id)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

