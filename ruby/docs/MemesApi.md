# OpenapiClient::MemesApi

All URIs are relative to *https://api.humorapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**downvote_meme**](MemesApi.md#downvote_meme) | **POST** /memes/{id}/downvote | Downvote a Meme |
| [**random_meme**](MemesApi.md#random_meme) | **GET** /memes/random | Random Meme |
| [**search_memes**](MemesApi.md#search_memes) | **GET** /memes/search | Search Memes |
| [**upvote_meme**](MemesApi.md#upvote_meme) | **POST** /memes/{id}/upvote | Upvote a Meme |


## downvote_meme

> <SubmitJoke200Response> downvote_meme(id)

Downvote a Meme

Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.

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

api_instance = OpenapiClient::MemesApi.new
id = 1 # Integer | The object's id.

begin
  # Downvote a Meme
  result = api_instance.downvote_meme(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MemesApi->downvote_meme: #{e}"
end
```

#### Using the downvote_meme_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubmitJoke200Response>, Integer, Hash)> downvote_meme_with_http_info(id)

```ruby
begin
  # Downvote a Meme
  data, status_code, headers = api_instance.downvote_meme_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubmitJoke200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MemesApi->downvote_meme_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The object&#39;s id. |  |

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## random_meme

> <RandomMeme200Response> random_meme(opts)

Random Meme

Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.

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

api_instance = OpenapiClient::MemesApi.new
opts = {
  keywords: 'rocket', # String | A comma separated list of keywords.
  keywords_in_image: false, # Boolean | Whether the keywords should be found in the meme's image.
  media_type: 'image', # String | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
  number: 3, # Integer | The number of results to retrieve between 1 and 10.
  min_rating: 7 # Integer | The minimum rating between 0 and 10 the result should have.
}

begin
  # Random Meme
  result = api_instance.random_meme(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MemesApi->random_meme: #{e}"
end
```

#### Using the random_meme_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RandomMeme200Response>, Integer, Hash)> random_meme_with_http_info(opts)

```ruby
begin
  # Random Meme
  data, status_code, headers = api_instance.random_meme_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RandomMeme200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MemesApi->random_meme_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keywords** | **String** | A comma separated list of keywords. | [optional] |
| **keywords_in_image** | **Boolean** | Whether the keywords should be found in the meme&#39;s image. | [optional] |
| **media_type** | **String** | The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] |
| **number** | **Integer** | The number of results to retrieve between 1 and 10. | [optional] |
| **min_rating** | **Integer** | The minimum rating between 0 and 10 the result should have. | [optional] |

### Return type

[**RandomMeme200Response**](RandomMeme200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_memes

> <SearchMemes200Response> search_memes(opts)

Search Memes

Search for memes. See https://humorapi.com/docs/#Search-Memes for more.

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

api_instance = OpenapiClient::MemesApi.new
opts = {
  keywords: 'rocket', # String | A comma separated list of keywords.
  keywords_in_image: false, # Boolean | Whether the keywords should be found in the meme's image.
  media_type: 'image', # String | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
  number: 3, # Integer | The number of results to retrieve between 1 and 10.
  min_rating: 7, # Integer | The minimum rating between 0 and 10 the result should have.
  offset: 8.14 # Float | The number of results to skip.
}

begin
  # Search Memes
  result = api_instance.search_memes(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MemesApi->search_memes: #{e}"
end
```

#### Using the search_memes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchMemes200Response>, Integer, Hash)> search_memes_with_http_info(opts)

```ruby
begin
  # Search Memes
  data, status_code, headers = api_instance.search_memes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchMemes200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MemesApi->search_memes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keywords** | **String** | A comma separated list of keywords. | [optional] |
| **keywords_in_image** | **Boolean** | Whether the keywords should be found in the meme&#39;s image. | [optional] |
| **media_type** | **String** | The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] |
| **number** | **Integer** | The number of results to retrieve between 1 and 10. | [optional] |
| **min_rating** | **Integer** | The minimum rating between 0 and 10 the result should have. | [optional] |
| **offset** | **Float** | The number of results to skip. | [optional] |

### Return type

[**SearchMemes200Response**](SearchMemes200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## upvote_meme

> <SubmitJoke200Response> upvote_meme(id)

Upvote a Meme

Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.

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

api_instance = OpenapiClient::MemesApi.new
id = 1 # Integer | The object's id.

begin
  # Upvote a Meme
  result = api_instance.upvote_meme(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MemesApi->upvote_meme: #{e}"
end
```

#### Using the upvote_meme_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubmitJoke200Response>, Integer, Hash)> upvote_meme_with_http_info(id)

```ruby
begin
  # Upvote a Meme
  data, status_code, headers = api_instance.upvote_meme_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubmitJoke200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MemesApi->upvote_meme_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The object&#39;s id. |  |

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

