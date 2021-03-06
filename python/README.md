# openapi-client
Awesome Humor API.

This Python package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.PythonClientCodegen
For more information, please visit [https://humorapi.com](https://humorapi.com)

## Requirements.

Python >=3.6

## Installation & Usage
### pip install

If the python package is hosted on a repository, you can install directly using:

```sh
pip install git+https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```
(you may need to run `pip` with root permission: `sudo pip install git+https://github.com/GIT_USER_ID/GIT_REPO_ID.git`)

Then import the package:
```python
import openapi_client
```

### Setuptools

Install via [Setuptools](http://pypi.python.org/pypi/setuptools).

```sh
python setup.py install --user
```
(or `sudo python setup.py install` to install the package for all users)

Then import the package:
```python
import openapi_client
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```python

import time
import openapi_client
from pprint import pprint
from com.humorapi import jokes_api
from openapi_client.model.inline_response200 import InlineResponse200
from openapi_client.model.inline_response2004 import InlineResponse2004
from openapi_client.model.inline_response2008 import InlineResponse2008
from openapi_client.model.inline_response2009 import InlineResponse2009
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

    try:
        # Analyze Joke
        api_response = api_instance.analyze_joke(body=body)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling JokesApi->analyze_joke: %s\n" % e)
```

## Documentation for API Endpoints

All URIs are relative to *https://api.humorapi.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*JokesApi* | [**analyze_joke**](docs/JokesApi.md#analyze_joke) | **POST** /jokes/analyze | Analyze Joke
*JokesApi* | [**downvote_joke**](docs/JokesApi.md#downvote_joke) | **POST** /jokes/{id}/downvote | Downvote a Joke
*JokesApi* | [**random_joke**](docs/JokesApi.md#random_joke) | **GET** /jokes/random | Random Joke
*JokesApi* | [**search_jokes**](docs/JokesApi.md#search_jokes) | **GET** /jokes/search | Search Jokes
*JokesApi* | [**submit_joke**](docs/JokesApi.md#submit_joke) | **POST** /jokes | Submit Joke
*JokesApi* | [**upvote_joke**](docs/JokesApi.md#upvote_joke) | **POST** /jokes/{id}/upvote | Upvote a Joke
*MemesApi* | [**downvote_meme**](docs/MemesApi.md#downvote_meme) | **POST** /memes/{id}/downvote | Downvote a Meme
*MemesApi* | [**random_meme**](docs/MemesApi.md#random_meme) | **GET** /memes/random | Random Meme
*MemesApi* | [**search_memes**](docs/MemesApi.md#search_memes) | **GET** /memes/search | Search Memes
*MemesApi* | [**upvote_meme**](docs/MemesApi.md#upvote_meme) | **POST** /memes/{id}/upvote | Upvote a Meme
*OtherApi* | [**generate_nonsense_word**](docs/OtherApi.md#generate_nonsense_word) | **GET** /words/nonsense/random | Generate Nonsense Word
*OtherApi* | [**insult**](docs/OtherApi.md#insult) | **GET** /insult | Insult
*OtherApi* | [**praise**](docs/OtherApi.md#praise) | **GET** /praise | Praise
*OtherApi* | [**rate_word**](docs/OtherApi.md#rate_word) | **GET** /words/rate | Rate Word
*OtherApi* | [**search_gifs**](docs/OtherApi.md#search_gifs) | **GET** /gif/search | Search Gifs


## Documentation For Models

 - [InlineResponse200](docs/InlineResponse200.md)
 - [InlineResponse2001](docs/InlineResponse2001.md)
 - [InlineResponse2002](docs/InlineResponse2002.md)
 - [InlineResponse2003](docs/InlineResponse2003.md)
 - [InlineResponse2004](docs/InlineResponse2004.md)
 - [InlineResponse2005](docs/InlineResponse2005.md)
 - [InlineResponse2006](docs/InlineResponse2006.md)
 - [InlineResponse2007](docs/InlineResponse2007.md)
 - [InlineResponse2008](docs/InlineResponse2008.md)
 - [InlineResponse2009](docs/InlineResponse2009.md)


## Documentation For Authorization


## apiKey

- **Type**: API key
- **API key parameter name**: api-key
- **Location**: URL query string


## Author

mail@humorapi.com


## Notes for Large OpenAPI documents
If the OpenAPI document is large, imports in openapi_client.apis and openapi_client.models may fail with a
RecursionError indicating the maximum recursion limit has been exceeded. In that case, there are a couple of solutions:

Solution 1:
Use specific imports for apis and models like:
- `from openapi_client.api.default_api import DefaultApi`
- `from openapi_client.model.pet import Pet`

Solution 2:
Before importing the package, adjust the maximum recursion limit as shown below:
```
import sys
sys.setrecursionlimit(1500)
import openapi_client
from openapi_client.apis import *
from openapi_client.models import *
```

