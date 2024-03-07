# WWW::OpenAPIClient::OtherApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::OtherApi;
```

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_nonsense_word**](OtherApi.md#generate_nonsense_word) | **GET** /words/nonsense/random | Generate Nonsense Word
[**insult**](OtherApi.md#insult) | **GET** /insult | Insult
[**praise**](OtherApi.md#praise) | **GET** /praise | Praise
[**rate_word**](OtherApi.md#rate_word) | **GET** /words/rate | Rate Word
[**search_gifs**](OtherApi.md#search_gifs) | **GET** /gif/search | Search Gifs


# **generate_nonsense_word**
> GenerateNonsenseWord200Response generate_nonsense_word()

Generate Nonsense Word

Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OtherApi;
my $api_instance = WWW::OpenAPIClient::OtherApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);


eval {
    my $result = $api_instance->generate_nonsense_word();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OtherApi->generate_nonsense_word: $@\n";
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **insult**
> Praise200Response insult(name => $name, reason => $reason)

Insult

Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OtherApi;
my $api_instance = WWW::OpenAPIClient::OtherApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $name = Alex; # string | The person's name.
my $reason = you did it again; # string | The reason for the praise/insult.

eval {
    my $result = $api_instance->insult(name => $name, reason => $reason);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OtherApi->insult: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The person&#39;s name. | 
 **reason** | **string**| The reason for the praise/insult. | 

### Return type

[**Praise200Response**](Praise200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **praise**
> Praise200Response praise(name => $name, reason => $reason)

Praise

Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OtherApi;
my $api_instance = WWW::OpenAPIClient::OtherApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $name = Alex; # string | The person's name.
my $reason = you did it again; # string | The reason for the praise/insult.

eval {
    my $result = $api_instance->praise(name => $name, reason => $reason);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OtherApi->praise: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The person&#39;s name. | 
 **reason** | **string**| The reason for the praise/insult. | 

### Return type

[**Praise200Response**](Praise200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rate_word**
> RateWord200Response rate_word(word => $word)

Rate Word

Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OtherApi;
my $api_instance = WWW::OpenAPIClient::OtherApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $word = cookie; # string | The word to be rated.

eval {
    my $result = $api_instance->rate_word(word => $word);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OtherApi->rate_word: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **string**| The word to be rated. | 

### Return type

[**RateWord200Response**](RateWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_gifs**
> SearchGifs200Response search_gifs(query => $query, number => $number)

Search Gifs

Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OtherApi;
my $api_instance = WWW::OpenAPIClient::OtherApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $query = cat; # string | A search query.
my $number = 3; # int | The number of results to retrieve between 1 and 10.

eval {
    my $result = $api_instance->search_gifs(query => $query, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OtherApi->search_gifs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| A search query. | 
 **number** | **int**| The number of results to retrieve between 1 and 10. | [optional] 

### Return type

[**SearchGifs200Response**](SearchGifs200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

