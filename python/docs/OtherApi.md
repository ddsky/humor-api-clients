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
> InlineResponse2007 generate_nonsense_word()

Generate Nonsense Word

Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.

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
api_instance = humorapi.OtherApi(humorapi.ApiClient(configuration))

try:
    # Generate Nonsense Word
    api_response = api_instance.generate_nonsense_word()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OtherApi->generate_nonsense_word: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **insult**
> InlineResponse2005 insult(name, reason)

Insult

Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.

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
api_instance = humorapi.OtherApi(humorapi.ApiClient(configuration))
name = 'Alex' # str | The person's name.
reason = 'you did it again' # str | The reason for the praise/insult.

try:
    # Insult
    api_response = api_instance.insult(name, reason)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OtherApi->insult: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The person&#39;s name. | 
 **reason** | **str**| The reason for the praise/insult. | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **praise**
> InlineResponse2005 praise(name, reason)

Praise

Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.

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
api_instance = humorapi.OtherApi(humorapi.ApiClient(configuration))
name = 'Alex' # str | The person's name.
reason = 'you did it again' # str | The reason for the praise/insult.

try:
    # Praise
    api_response = api_instance.praise(name, reason)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OtherApi->praise: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The person&#39;s name. | 
 **reason** | **str**| The reason for the praise/insult. | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rate_word**
> InlineResponse2006 rate_word(word)

Rate Word

Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.

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
api_instance = humorapi.OtherApi(humorapi.ApiClient(configuration))
word = 'cookie' # str | The word to be rated.

try:
    # Rate Word
    api_response = api_instance.rate_word(word)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OtherApi->rate_word: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **str**| The word to be rated. | 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_gifs**
> InlineResponse2001 search_gifs(query, number=number)

Search Gifs

Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.

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
api_instance = humorapi.OtherApi(humorapi.ApiClient(configuration))
query = 'cat' # str | A search query.
number = 3 # int | The number of results to retrieve between 1 and 10. (optional)

try:
    # Search Gifs
    api_response = api_instance.search_gifs(query, number=number)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OtherApi->search_gifs: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| A search query. | 
 **number** | **int**| The number of results to retrieve between 1 and 10. | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

