# WWW::OpenAPIClient::MemesApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MemesApi;
```

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downvote_meme**](MemesApi.md#downvote_meme) | **POST** /memes/{id}/downvote | Downvote a Meme
[**random_meme**](MemesApi.md#random_meme) | **GET** /memes/random | Random Meme
[**search_memes**](MemesApi.md#search_memes) | **GET** /memes/search | Search Memes
[**upvote_meme**](MemesApi.md#upvote_meme) | **POST** /memes/{id}/upvote | Upvote a Meme


# **downvote_meme**
> SubmitJoke200Response downvote_meme(id => $id)

Downvote a Meme

Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MemesApi;
my $api_instance = WWW::OpenAPIClient::MemesApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 1; # int | The object's id.

eval {
    my $result = $api_instance->downvote_meme(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MemesApi->downvote_meme: $@\n";
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **random_meme**
> RandomMeme200Response random_meme(keywords => $keywords, keywords_in_image => $keywords_in_image, media_type => $media_type, number => $number, min_rating => $min_rating)

Random Meme

Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MemesApi;
my $api_instance = WWW::OpenAPIClient::MemesApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $keywords = rocket; # string | A comma separated list of keywords.
my $keywords_in_image = false; # boolean | Whether the keywords should be found in the meme's image.
my $media_type = image; # string | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
my $number = 3; # int | The number of results to retrieve between 1 and 10.
my $min_rating = 7; # int | The minimum rating between 0 and 10 the result should have.

eval {
    my $result = $api_instance->random_meme(keywords => $keywords, keywords_in_image => $keywords_in_image, media_type => $media_type, number => $number, min_rating => $min_rating);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MemesApi->random_meme: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string**| A comma separated list of keywords. | [optional] 
 **keywords_in_image** | **boolean**| Whether the keywords should be found in the meme&#39;s image. | [optional] 
 **media_type** | **string**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] 
 **number** | **int**| The number of results to retrieve between 1 and 10. | [optional] 
 **min_rating** | **int**| The minimum rating between 0 and 10 the result should have. | [optional] 

### Return type

[**RandomMeme200Response**](RandomMeme200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_memes**
> SearchMemes200Response search_memes(keywords => $keywords, keywords_in_image => $keywords_in_image, media_type => $media_type, number => $number, min_rating => $min_rating, offset => $offset)

Search Memes

Search for memes. See https://humorapi.com/docs/#Search-Memes for more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MemesApi;
my $api_instance = WWW::OpenAPIClient::MemesApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $keywords = rocket; # string | A comma separated list of keywords.
my $keywords_in_image = false; # boolean | Whether the keywords should be found in the meme's image.
my $media_type = image; # string | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
my $number = 3; # int | The number of results to retrieve between 1 and 10.
my $min_rating = 7; # int | The minimum rating between 0 and 10 the result should have.
my $offset = 3.4; # double | The number of results to skip.

eval {
    my $result = $api_instance->search_memes(keywords => $keywords, keywords_in_image => $keywords_in_image, media_type => $media_type, number => $number, min_rating => $min_rating, offset => $offset);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MemesApi->search_memes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string**| A comma separated list of keywords. | [optional] 
 **keywords_in_image** | **boolean**| Whether the keywords should be found in the meme&#39;s image. | [optional] 
 **media_type** | **string**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] 
 **number** | **int**| The number of results to retrieve between 1 and 10. | [optional] 
 **min_rating** | **int**| The minimum rating between 0 and 10 the result should have. | [optional] 
 **offset** | **double**| The number of results to skip. | [optional] 

### Return type

[**SearchMemes200Response**](SearchMemes200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upvote_meme**
> SubmitJoke200Response upvote_meme(id => $id)

Upvote a Meme

Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MemesApi;
my $api_instance = WWW::OpenAPIClient::MemesApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 1; # int | The object's id.

eval {
    my $result = $api_instance->upvote_meme(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MemesApi->upvote_meme: $@\n";
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

