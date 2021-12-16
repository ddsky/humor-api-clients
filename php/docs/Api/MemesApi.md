# com.humorapi.client\MemesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downvoteMeme**](MemesApi.md#downvoteMeme) | **POST** /memes/{id}/downvote | Downvote a Meme
[**randomMeme**](MemesApi.md#randomMeme) | **GET** /memes/random | Random Meme
[**searchMemes**](MemesApi.md#searchMemes) | **GET** /memes/search | Search Memes
[**upvoteMeme**](MemesApi.md#upvoteMeme) | **POST** /memes/{id}/upvote | Upvote a Meme



## downvoteMeme

> \com.humorapi.client\com.humorapi.client.model\InlineResponse2008 downvoteMeme($id)

Downvote a Meme

Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = com.humorapi.client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.humorapi.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');


$apiInstance = new com.humorapi.client\Api\MemesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The object's id.

try {
    $result = $apiInstance->downvoteMeme($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MemesApi->downvoteMeme: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The object&#39;s id. |

### Return type

[**\com.humorapi.client\com.humorapi.client.model\InlineResponse2008**](../Model/InlineResponse2008.md)

### Authorization

[apiKey](../../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## randomMeme

> \com.humorapi.client\com.humorapi.client.model\InlineResponse2003 randomMeme($keywords, $keywords_in_image, $media_type, $number, $min_rating)

Random Meme

Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = com.humorapi.client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.humorapi.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');


$apiInstance = new com.humorapi.client\Api\MemesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$keywords = rocket; // string | A comma separated list of keywords.
$keywords_in_image = false; // bool | Whether the keywords should be found in the meme's image.
$media_type = image; // string | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
$number = 3; // int | The number of results to retrieve between 1 and 10.
$min_rating = 7; // int | The minimum rating between 0 and 10 the result should have.

try {
    $result = $apiInstance->randomMeme($keywords, $keywords_in_image, $media_type, $number, $min_rating);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MemesApi->randomMeme: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string**| A comma separated list of keywords. | [optional]
 **keywords_in_image** | **bool**| Whether the keywords should be found in the meme&#39;s image. | [optional]
 **media_type** | **string**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional]
 **number** | **int**| The number of results to retrieve between 1 and 10. | [optional]
 **min_rating** | **int**| The minimum rating between 0 and 10 the result should have. | [optional]

### Return type

[**\com.humorapi.client\com.humorapi.client.model\InlineResponse2003**](../Model/InlineResponse2003.md)

### Authorization

[apiKey](../../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## searchMemes

> \com.humorapi.client\com.humorapi.client.model\InlineResponse2002 searchMemes($keywords, $keywords_in_image, $media_type, $number, $min_rating, $offset)

Search Memes

Search for memes. See https://humorapi.com/docs/#Search-Memes for more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = com.humorapi.client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.humorapi.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');


$apiInstance = new com.humorapi.client\Api\MemesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$keywords = rocket; // string | A comma separated list of keywords.
$keywords_in_image = false; // bool | Whether the keywords should be found in the meme's image.
$media_type = image; // string | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
$number = 3; // int | The number of results to retrieve between 1 and 10.
$min_rating = 7; // int | The minimum rating between 0 and 10 the result should have.
$offset = 3.4; // float | The number of results to skip.

try {
    $result = $apiInstance->searchMemes($keywords, $keywords_in_image, $media_type, $number, $min_rating, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MemesApi->searchMemes: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string**| A comma separated list of keywords. | [optional]
 **keywords_in_image** | **bool**| Whether the keywords should be found in the meme&#39;s image. | [optional]
 **media_type** | **string**| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional]
 **number** | **int**| The number of results to retrieve between 1 and 10. | [optional]
 **min_rating** | **int**| The minimum rating between 0 and 10 the result should have. | [optional]
 **offset** | **float**| The number of results to skip. | [optional]

### Return type

[**\com.humorapi.client\com.humorapi.client.model\InlineResponse2002**](../Model/InlineResponse2002.md)

### Authorization

[apiKey](../../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## upvoteMeme

> \com.humorapi.client\com.humorapi.client.model\InlineResponse2008 upvoteMeme($id)

Upvote a Meme

Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = com.humorapi.client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.humorapi.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');


$apiInstance = new com.humorapi.client\Api\MemesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The object's id.

try {
    $result = $apiInstance->upvoteMeme($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MemesApi->upvoteMeme: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The object&#39;s id. |

### Return type

[**\com.humorapi.client\com.humorapi.client.model\InlineResponse2008**](../Model/InlineResponse2008.md)

### Authorization

[apiKey](../../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

