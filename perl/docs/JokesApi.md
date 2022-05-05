# WWW::OpenAPIClient::JokesApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::JokesApi;
```

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
> InlineResponse2009 analyze_joke(body => $body)

Analyze Joke

Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::JokesApi;
my $api_instance = WWW::OpenAPIClient::JokesApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $body = WWW::OpenAPIClient::Object::string->new(); # string | Post the joke as plain text.

eval {
    my $result = $api_instance->analyze_joke(body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling JokesApi->analyze_joke: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **string**| Post the joke as plain text. | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downvote_joke**
> InlineResponse2008 downvote_joke(id => $id)

Downvote a Joke

Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::JokesApi;
my $api_instance = WWW::OpenAPIClient::JokesApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 1; # int | The object's id.

eval {
    my $result = $api_instance->downvote_joke(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling JokesApi->downvote_joke: $@\n";
}
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
> InlineResponse2004 random_joke(keywords => $keywords, include_tags => $include_tags, exclude_tags => $exclude_tags, min_rating => $min_rating, max_length => $max_length)

Random Joke

Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::JokesApi;
my $api_instance = WWW::OpenAPIClient::JokesApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $keywords = rocket; # string | A comma separated list of keywords.
my $include_tags = one_liner; # string | A comma separated list of tags that the joke must have.
my $exclude_tags = nsfw; # string | A comma separated list of tags that the joke must not have.
my $min_rating = 7; # int | The minimum rating between 0 and 10 the result should have.
my $max_length = 200; # int | The maximum number of letters in the joke.

eval {
    my $result = $api_instance->random_joke(keywords => $keywords, include_tags => $include_tags, exclude_tags => $exclude_tags, min_rating => $min_rating, max_length => $max_length);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling JokesApi->random_joke: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string**| A comma separated list of keywords. | [optional] 
 **include_tags** | **string**| A comma separated list of tags that the joke must have. | [optional] 
 **exclude_tags** | **string**| A comma separated list of tags that the joke must not have. | [optional] 
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
> InlineResponse200 search_jokes(keywords => $keywords, include_tags => $include_tags, exclude_tags => $exclude_tags, number => $number, min_rating => $min_rating, max_length => $max_length, offset => $offset)

Search Jokes

Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::JokesApi;
my $api_instance = WWW::OpenAPIClient::JokesApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $keywords = rocket; # string | A comma separated list of keywords.
my $include_tags = one_liner; # string | A comma separated list of tags that the joke must have.
my $exclude_tags = nsfw; # string | A comma separated list of tags that the joke must not have.
my $number = 3; # int | The number of results to retrieve between 1 and 10.
my $min_rating = 7; # int | The minimum rating between 0 and 10 the result should have.
my $max_length = 200; # int | The maximum number of letters in the joke.
my $offset = 3.4; # double | The number of results to skip.

eval {
    my $result = $api_instance->search_jokes(keywords => $keywords, include_tags => $include_tags, exclude_tags => $exclude_tags, number => $number, min_rating => $min_rating, max_length => $max_length, offset => $offset);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling JokesApi->search_jokes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string**| A comma separated list of keywords. | [optional] 
 **include_tags** | **string**| A comma separated list of tags that the joke must have. | [optional] 
 **exclude_tags** | **string**| A comma separated list of tags that the joke must not have. | [optional] 
 **number** | **int**| The number of results to retrieve between 1 and 10. | [optional] 
 **min_rating** | **int**| The minimum rating between 0 and 10 the result should have. | [optional] 
 **max_length** | **int**| The maximum number of letters in the joke. | [optional] 
 **offset** | **double**| The number of results to skip. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submit_joke**
> InlineResponse2008 submit_joke(body => $body)

Submit Joke

Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::JokesApi;
my $api_instance = WWW::OpenAPIClient::JokesApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $body = WWW::OpenAPIClient::Object::string->new(); # string | Post the joke as plain text.

eval {
    my $result = $api_instance->submit_joke(body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling JokesApi->submit_joke: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **string**| Post the joke as plain text. | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upvote_joke**
> InlineResponse2008 upvote_joke(id => $id)

Upvote a Joke

Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::JokesApi;
my $api_instance = WWW::OpenAPIClient::JokesApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 1; # int | The object's id.

eval {
    my $result = $api_instance->upvote_joke(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling JokesApi->upvote_joke: $@\n";
}
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

