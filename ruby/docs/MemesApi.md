# OpenapiClient::MemesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downvote_meme**](MemesApi.md#downvote_meme) | **POST** /memes/{id}/downvote | Downvote a Meme
[**random_meme**](MemesApi.md#random_meme) | **GET** /memes/random | Random Meme
[**search_memes**](MemesApi.md#search_memes) | **GET** /memes/search | Search Memes
[**upvote_meme**](MemesApi.md#upvote_meme) | **POST** /memes/{id}/upvote | Upvote a Meme



## downvote_meme

> InlineResponse2008 downvote_meme(id)

Downvote a Meme

Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = OpenapiClient::MemesApi.new
id = 56 # Integer | The object's id.

begin
  #Downvote a Meme
  result = api_instance.downvote_meme(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MemesApi->downvote_meme: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The object&#39;s id. | 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## random_meme

> InlineResponse2003 random_meme(opts)

Random Meme

Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
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
  #Random Meme
  result = api_instance.random_meme(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MemesApi->random_meme: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma separated list of keywords. | [optional] 
 **keywords_in_image** | **Boolean**| Whether the keywords should be found in the meme&#39;s image. | [optional] 
 **media_type** | **String**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] 
 **number** | **Integer**| The number of results to retrieve between 1 and 10. | [optional] 
 **min_rating** | **Integer**| The minimum rating between 0 and 10 the result should have. | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_memes

> InlineResponse2002 search_memes(opts)

Search Memes

Search for memes. See https://humorapi.com/docs/#Search-Memes for more.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
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
  #Search Memes
  result = api_instance.search_memes(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MemesApi->search_memes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma separated list of keywords. | [optional] 
 **keywords_in_image** | **Boolean**| Whether the keywords should be found in the meme&#39;s image. | [optional] 
 **media_type** | **String**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] 
 **number** | **Integer**| The number of results to retrieve between 1 and 10. | [optional] 
 **min_rating** | **Integer**| The minimum rating between 0 and 10 the result should have. | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## upvote_meme

> InlineResponse2008 upvote_meme(id)

Upvote a Meme

Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = OpenapiClient::MemesApi.new
id = 56 # Integer | The object's id.

begin
  #Upvote a Meme
  result = api_instance.upvote_meme(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MemesApi->upvote_meme: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The object&#39;s id. | 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

