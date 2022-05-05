# OpenapiClient::JokesApi

All URIs are relative to *https://api.humorapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**analyze_joke**](JokesApi.md#analyze_joke) | **POST** /jokes/analyze | Analyze Joke |
| [**downvote_joke**](JokesApi.md#downvote_joke) | **POST** /jokes/{id}/downvote | Downvote a Joke |
| [**random_joke**](JokesApi.md#random_joke) | **GET** /jokes/random | Random Joke |
| [**search_jokes**](JokesApi.md#search_jokes) | **GET** /jokes/search | Search Jokes |
| [**submit_joke**](JokesApi.md#submit_joke) | **POST** /jokes | Submit Joke |
| [**upvote_joke**](JokesApi.md#upvote_joke) | **POST** /jokes/{id}/upvote | Upvote a Joke |


## analyze_joke

> <InlineResponse2009> analyze_joke(opts)

Analyze Joke

Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::JokesApi.new
opts = {
  body: 'body_example' # String | Post the joke as plain text.
}

begin
  # Analyze Joke
  result = api_instance.analyze_joke(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling JokesApi->analyze_joke: #{e}"
end
```

#### Using the analyze_joke_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2009>, Integer, Hash)> analyze_joke_with_http_info(opts)

```ruby
begin
  # Analyze Joke
  data, status_code, headers = api_instance.analyze_joke_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2009>
rescue OpenapiClient::ApiError => e
  puts "Error when calling JokesApi->analyze_joke_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** | Post the joke as plain text. | [optional] |

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: application/json


## downvote_joke

> <InlineResponse2008> downvote_joke(id)

Downvote a Joke

Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::JokesApi.new
id = 1 # Integer | The object's id.

begin
  # Downvote a Joke
  result = api_instance.downvote_joke(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling JokesApi->downvote_joke: #{e}"
end
```

#### Using the downvote_joke_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2008>, Integer, Hash)> downvote_joke_with_http_info(id)

```ruby
begin
  # Downvote a Joke
  data, status_code, headers = api_instance.downvote_joke_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2008>
rescue OpenapiClient::ApiError => e
  puts "Error when calling JokesApi->downvote_joke_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The object&#39;s id. |  |

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## random_joke

> <InlineResponse2004> random_joke(opts)

Random Joke

Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::JokesApi.new
opts = {
  keywords: 'rocket', # String | A comma separated list of keywords.
  include_tags: 'clean', # String | A comma separated list of tags that the joke must have.
  exclude_tags: 'clean', # String | A comma separated list of tags that the joke must not have.
  min_rating: 7, # Integer | The minimum rating between 0 and 10 the result should have.
  max_length: 200 # Integer | The maximum number of letters in the joke.
}

begin
  # Random Joke
  result = api_instance.random_joke(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling JokesApi->random_joke: #{e}"
end
```

#### Using the random_joke_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2004>, Integer, Hash)> random_joke_with_http_info(opts)

```ruby
begin
  # Random Joke
  data, status_code, headers = api_instance.random_joke_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2004>
rescue OpenapiClient::ApiError => e
  puts "Error when calling JokesApi->random_joke_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keywords** | **String** | A comma separated list of keywords. | [optional] |
| **include_tags** | **String** | A comma separated list of tags that the joke must have. | [optional] |
| **exclude_tags** | **String** | A comma separated list of tags that the joke must not have. | [optional] |
| **min_rating** | **Integer** | The minimum rating between 0 and 10 the result should have. | [optional] |
| **max_length** | **Integer** | The maximum number of letters in the joke. | [optional] |

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_jokes

> <InlineResponse200> search_jokes(opts)

Search Jokes

Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::JokesApi.new
opts = {
  keywords: 'rocket', # String | A comma separated list of keywords.
  include_tags: 'clean', # String | A comma separated list of tags that the joke must have.
  exclude_tags: 'clean', # String | A comma separated list of tags that the joke must not have.
  number: 3, # Integer | The number of results to retrieve between 1 and 10.
  min_rating: 7, # Integer | The minimum rating between 0 and 10 the result should have.
  max_length: 200, # Integer | The maximum number of letters in the joke.
  offset: 8.14 # Float | The number of results to skip.
}

begin
  # Search Jokes
  result = api_instance.search_jokes(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling JokesApi->search_jokes: #{e}"
end
```

#### Using the search_jokes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse200>, Integer, Hash)> search_jokes_with_http_info(opts)

```ruby
begin
  # Search Jokes
  data, status_code, headers = api_instance.search_jokes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse200>
rescue OpenapiClient::ApiError => e
  puts "Error when calling JokesApi->search_jokes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keywords** | **String** | A comma separated list of keywords. | [optional] |
| **include_tags** | **String** | A comma separated list of tags that the joke must have. | [optional] |
| **exclude_tags** | **String** | A comma separated list of tags that the joke must not have. | [optional] |
| **number** | **Integer** | The number of results to retrieve between 1 and 10. | [optional] |
| **min_rating** | **Integer** | The minimum rating between 0 and 10 the result should have. | [optional] |
| **max_length** | **Integer** | The maximum number of letters in the joke. | [optional] |
| **offset** | **Float** | The number of results to skip. | [optional] |

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## submit_joke

> <InlineResponse2008> submit_joke(opts)

Submit Joke

Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::JokesApi.new
opts = {
  body: 'body_example' # String | Post the joke as plain text.
}

begin
  # Submit Joke
  result = api_instance.submit_joke(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling JokesApi->submit_joke: #{e}"
end
```

#### Using the submit_joke_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2008>, Integer, Hash)> submit_joke_with_http_info(opts)

```ruby
begin
  # Submit Joke
  data, status_code, headers = api_instance.submit_joke_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2008>
rescue OpenapiClient::ApiError => e
  puts "Error when calling JokesApi->submit_joke_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** | Post the joke as plain text. | [optional] |

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: application/json


## upvote_joke

> <InlineResponse2008> upvote_joke(id)

Upvote a Joke

Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::JokesApi.new
id = 1 # Integer | The object's id.

begin
  # Upvote a Joke
  result = api_instance.upvote_joke(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling JokesApi->upvote_joke: #{e}"
end
```

#### Using the upvote_joke_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2008>, Integer, Hash)> upvote_joke_with_http_info(id)

```ruby
begin
  # Upvote a Joke
  data, status_code, headers = api_instance.upvote_joke_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2008>
rescue OpenapiClient::ApiError => e
  puts "Error when calling JokesApi->upvote_joke_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The object&#39;s id. |  |

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

