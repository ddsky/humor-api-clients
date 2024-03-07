# OpenAPI\Client\JokesApi

All URIs are relative to https://api.humorapi.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**analyzeJoke()**](JokesApi.md#analyzeJoke) | **POST** /jokes/analyze | Analyze Joke |
| [**downvoteJoke()**](JokesApi.md#downvoteJoke) | **POST** /jokes/{id}/downvote | Downvote a Joke |
| [**randomJoke()**](JokesApi.md#randomJoke) | **GET** /jokes/random | Random Joke |
| [**searchJokes()**](JokesApi.md#searchJokes) | **GET** /jokes/search | Search Jokes |
| [**submitJoke()**](JokesApi.md#submitJoke) | **POST** /jokes | Submit Joke |
| [**upvoteJoke()**](JokesApi.md#upvoteJoke) | **POST** /jokes/{id}/upvote | Upvote a Joke |


## `analyzeJoke()`

```php
analyzeJoke($body): \OpenAPI\Client\Model\AnalyzeJoke200Response
```

Analyze Joke

Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\JokesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = 'body_example'; // string | Post the joke as plain text.

try {
    $result = $apiInstance->analyzeJoke($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JokesApi->analyzeJoke: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **body** | **string**| Post the joke as plain text. | [optional] |

### Return type

[**\OpenAPI\Client\Model\AnalyzeJoke200Response**](../Model/AnalyzeJoke200Response.md)

### Authorization

[apiKey](../../README.md#apiKey)

### HTTP request headers

- **Content-Type**: `text/plain`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `downvoteJoke()`

```php
downvoteJoke($id): \OpenAPI\Client\Model\SubmitJoke200Response
```

Downvote a Joke

Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\JokesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The object's id.

try {
    $result = $apiInstance->downvoteJoke($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JokesApi->downvoteJoke: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The object&#39;s id. | |

### Return type

[**\OpenAPI\Client\Model\SubmitJoke200Response**](../Model/SubmitJoke200Response.md)

### Authorization

[apiKey](../../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `randomJoke()`

```php
randomJoke($keywords, $include_tags, $exclude_tags, $min_rating, $max_length): \OpenAPI\Client\Model\RandomJoke200Response
```

Random Joke

Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\JokesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$keywords = rocket; // string | A comma separated list of keywords.
$include_tags = one_liner; // string | A comma separated list of tags that the joke must have.
$exclude_tags = nsfw; // string | A comma separated list of tags that the joke must not have.
$min_rating = 7; // int | The minimum rating between 0 and 10 the result should have.
$max_length = 200; // int | The maximum number of letters in the joke.

try {
    $result = $apiInstance->randomJoke($keywords, $include_tags, $exclude_tags, $min_rating, $max_length);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JokesApi->randomJoke: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **keywords** | **string**| A comma separated list of keywords. | [optional] |
| **include_tags** | **string**| A comma separated list of tags that the joke must have. | [optional] |
| **exclude_tags** | **string**| A comma separated list of tags that the joke must not have. | [optional] |
| **min_rating** | **int**| The minimum rating between 0 and 10 the result should have. | [optional] |
| **max_length** | **int**| The maximum number of letters in the joke. | [optional] |

### Return type

[**\OpenAPI\Client\Model\RandomJoke200Response**](../Model/RandomJoke200Response.md)

### Authorization

[apiKey](../../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchJokes()`

```php
searchJokes($keywords, $include_tags, $exclude_tags, $number, $min_rating, $max_length, $offset): \OpenAPI\Client\Model\SearchJokes200Response
```

Search Jokes

Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\JokesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$keywords = rocket; // string | A comma separated list of keywords.
$include_tags = one_liner; // string | A comma separated list of tags that the joke must have.
$exclude_tags = nsfw; // string | A comma separated list of tags that the joke must not have.
$number = 3; // int | The number of results to retrieve between 1 and 10.
$min_rating = 7; // int | The minimum rating between 0 and 10 the result should have.
$max_length = 200; // int | The maximum number of letters in the joke.
$offset = 3.4; // float | The number of results to skip.

try {
    $result = $apiInstance->searchJokes($keywords, $include_tags, $exclude_tags, $number, $min_rating, $max_length, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JokesApi->searchJokes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **keywords** | **string**| A comma separated list of keywords. | [optional] |
| **include_tags** | **string**| A comma separated list of tags that the joke must have. | [optional] |
| **exclude_tags** | **string**| A comma separated list of tags that the joke must not have. | [optional] |
| **number** | **int**| The number of results to retrieve between 1 and 10. | [optional] |
| **min_rating** | **int**| The minimum rating between 0 and 10 the result should have. | [optional] |
| **max_length** | **int**| The maximum number of letters in the joke. | [optional] |
| **offset** | **float**| The number of results to skip. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SearchJokes200Response**](../Model/SearchJokes200Response.md)

### Authorization

[apiKey](../../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `submitJoke()`

```php
submitJoke($body): \OpenAPI\Client\Model\SubmitJoke200Response
```

Submit Joke

Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\JokesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = 'body_example'; // string | Post the joke as plain text.

try {
    $result = $apiInstance->submitJoke($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JokesApi->submitJoke: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **body** | **string**| Post the joke as plain text. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SubmitJoke200Response**](../Model/SubmitJoke200Response.md)

### Authorization

[apiKey](../../README.md#apiKey)

### HTTP request headers

- **Content-Type**: `text/plain`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `upvoteJoke()`

```php
upvoteJoke($id): \OpenAPI\Client\Model\SubmitJoke200Response
```

Upvote a Joke

Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\JokesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The object's id.

try {
    $result = $apiInstance->upvoteJoke($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JokesApi->upvoteJoke: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The object&#39;s id. | |

### Return type

[**\OpenAPI\Client\Model\SubmitJoke200Response**](../Model/SubmitJoke200Response.md)

### Authorization

[apiKey](../../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
