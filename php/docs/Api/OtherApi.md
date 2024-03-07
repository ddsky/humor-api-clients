# OpenAPI\Client\OtherApi

All URIs are relative to https://api.humorapi.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**generateNonsenseWord()**](OtherApi.md#generateNonsenseWord) | **GET** /words/nonsense/random | Generate Nonsense Word |
| [**insult()**](OtherApi.md#insult) | **GET** /insult | Insult |
| [**praise()**](OtherApi.md#praise) | **GET** /praise | Praise |
| [**rateWord()**](OtherApi.md#rateWord) | **GET** /words/rate | Rate Word |
| [**searchGifs()**](OtherApi.md#searchGifs) | **GET** /gif/search | Search Gifs |


## `generateNonsenseWord()`

```php
generateNonsenseWord(): \OpenAPI\Client\Model\GenerateNonsenseWord200Response
```

Generate Nonsense Word

Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\OtherApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->generateNonsenseWord();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OtherApi->generateNonsenseWord: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\GenerateNonsenseWord200Response**](../Model/GenerateNonsenseWord200Response.md)

### Authorization

[apiKey](../../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `insult()`

```php
insult($name, $reason): \OpenAPI\Client\Model\Praise200Response
```

Insult

Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\OtherApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = Alex; // string | The person's name.
$reason = you did it again; // string | The reason for the praise/insult.

try {
    $result = $apiInstance->insult($name, $reason);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OtherApi->insult: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **string**| The person&#39;s name. | |
| **reason** | **string**| The reason for the praise/insult. | |

### Return type

[**\OpenAPI\Client\Model\Praise200Response**](../Model/Praise200Response.md)

### Authorization

[apiKey](../../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `praise()`

```php
praise($name, $reason): \OpenAPI\Client\Model\Praise200Response
```

Praise

Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\OtherApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = Alex; // string | The person's name.
$reason = you did it again; // string | The reason for the praise/insult.

try {
    $result = $apiInstance->praise($name, $reason);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OtherApi->praise: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **string**| The person&#39;s name. | |
| **reason** | **string**| The reason for the praise/insult. | |

### Return type

[**\OpenAPI\Client\Model\Praise200Response**](../Model/Praise200Response.md)

### Authorization

[apiKey](../../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `rateWord()`

```php
rateWord($word): \OpenAPI\Client\Model\RateWord200Response
```

Rate Word

Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\OtherApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$word = cookie; // string | The word to be rated.

try {
    $result = $apiInstance->rateWord($word);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OtherApi->rateWord: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **word** | **string**| The word to be rated. | |

### Return type

[**\OpenAPI\Client\Model\RateWord200Response**](../Model/RateWord200Response.md)

### Authorization

[apiKey](../../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchGifs()`

```php
searchGifs($query, $number): \OpenAPI\Client\Model\SearchGifs200Response
```

Search Gifs

Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\OtherApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = cat; // string | A search query.
$number = 3; // int | The number of results to retrieve between 1 and 10.

try {
    $result = $apiInstance->searchGifs($query, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OtherApi->searchGifs: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **query** | **string**| A search query. | |
| **number** | **int**| The number of results to retrieve between 1 and 10. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SearchGifs200Response**](../Model/SearchGifs200Response.md)

### Authorization

[apiKey](../../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
