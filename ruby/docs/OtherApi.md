# OpenapiClient::OtherApi

All URIs are relative to *https://api.humorapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**generate_nonsense_word**](OtherApi.md#generate_nonsense_word) | **GET** /words/nonsense/random | Generate Nonsense Word |
| [**insult**](OtherApi.md#insult) | **GET** /insult | Insult |
| [**praise**](OtherApi.md#praise) | **GET** /praise | Praise |
| [**rate_word**](OtherApi.md#rate_word) | **GET** /words/rate | Rate Word |
| [**search_gifs**](OtherApi.md#search_gifs) | **GET** /gif/search | Search Gifs |


## generate_nonsense_word

> <GenerateNonsenseWord200Response> generate_nonsense_word

Generate Nonsense Word

Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.

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

api_instance = OpenapiClient::OtherApi.new

begin
  # Generate Nonsense Word
  result = api_instance.generate_nonsense_word
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OtherApi->generate_nonsense_word: #{e}"
end
```

#### Using the generate_nonsense_word_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenerateNonsenseWord200Response>, Integer, Hash)> generate_nonsense_word_with_http_info

```ruby
begin
  # Generate Nonsense Word
  data, status_code, headers = api_instance.generate_nonsense_word_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenerateNonsenseWord200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OtherApi->generate_nonsense_word_with_http_info: #{e}"
end
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


## insult

> <Praise200Response> insult(name, reason)

Insult

Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.

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

api_instance = OpenapiClient::OtherApi.new
name = 'Alex' # String | The person's name.
reason = 'you did it again' # String | The reason for the praise/insult.

begin
  # Insult
  result = api_instance.insult(name, reason)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OtherApi->insult: #{e}"
end
```

#### Using the insult_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Praise200Response>, Integer, Hash)> insult_with_http_info(name, reason)

```ruby
begin
  # Insult
  data, status_code, headers = api_instance.insult_with_http_info(name, reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Praise200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OtherApi->insult_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The person&#39;s name. |  |
| **reason** | **String** | The reason for the praise/insult. |  |

### Return type

[**Praise200Response**](Praise200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## praise

> <Praise200Response> praise(name, reason)

Praise

Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.

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

api_instance = OpenapiClient::OtherApi.new
name = 'Alex' # String | The person's name.
reason = 'you did it again' # String | The reason for the praise/insult.

begin
  # Praise
  result = api_instance.praise(name, reason)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OtherApi->praise: #{e}"
end
```

#### Using the praise_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Praise200Response>, Integer, Hash)> praise_with_http_info(name, reason)

```ruby
begin
  # Praise
  data, status_code, headers = api_instance.praise_with_http_info(name, reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Praise200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OtherApi->praise_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The person&#39;s name. |  |
| **reason** | **String** | The reason for the praise/insult. |  |

### Return type

[**Praise200Response**](Praise200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rate_word

> <RateWord200Response> rate_word(word)

Rate Word

Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.

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

api_instance = OpenapiClient::OtherApi.new
word = 'cookie' # String | The word to be rated.

begin
  # Rate Word
  result = api_instance.rate_word(word)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OtherApi->rate_word: #{e}"
end
```

#### Using the rate_word_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RateWord200Response>, Integer, Hash)> rate_word_with_http_info(word)

```ruby
begin
  # Rate Word
  data, status_code, headers = api_instance.rate_word_with_http_info(word)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RateWord200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OtherApi->rate_word_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **word** | **String** | The word to be rated. |  |

### Return type

[**RateWord200Response**](RateWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_gifs

> <SearchGifs200Response> search_gifs(query, opts)

Search Gifs

Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.

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

api_instance = OpenapiClient::OtherApi.new
query = 'cat' # String | A search query.
opts = {
  number: 3 # Integer | The number of results to retrieve between 1 and 10.
}

begin
  # Search Gifs
  result = api_instance.search_gifs(query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OtherApi->search_gifs: #{e}"
end
```

#### Using the search_gifs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchGifs200Response>, Integer, Hash)> search_gifs_with_http_info(query, opts)

```ruby
begin
  # Search Gifs
  data, status_code, headers = api_instance.search_gifs_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchGifs200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OtherApi->search_gifs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | A search query. |  |
| **number** | **Integer** | The number of results to retrieve between 1 and 10. | [optional] |

### Return type

[**SearchGifs200Response**](SearchGifs200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

