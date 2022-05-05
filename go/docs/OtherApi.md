# com.humorapi.client\OtherApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GenerateNonsenseWord**](OtherApi.md#GenerateNonsenseWord) | **Get** /words/nonsense/random | Generate Nonsense Word
[**Insult**](OtherApi.md#Insult) | **Get** /insult | Insult
[**Praise**](OtherApi.md#Praise) | **Get** /praise | Praise
[**RateWord**](OtherApi.md#RateWord) | **Get** /words/rate | Rate Word
[**SearchGifs**](OtherApi.md#SearchGifs) | **Get** /gif/search | Search Gifs



## GenerateNonsenseWord

> InlineResponse2007 GenerateNonsenseWord(ctx).Execute()

Generate Nonsense Word



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.OtherApi.GenerateNonsenseWord(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OtherApi.GenerateNonsenseWord``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GenerateNonsenseWord`: InlineResponse2007
    fmt.Fprintf(os.Stdout, "Response from `OtherApi.GenerateNonsenseWord`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGenerateNonsenseWordRequest struct via the builder pattern


### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Insult

> InlineResponse2005 Insult(ctx).Name(name).Reason(reason).Execute()

Insult



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    name := "Alex" // string | The person's name.
    reason := "you did it again" // string | The reason for the praise/insult.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.OtherApi.Insult(context.Background()).Name(name).Reason(reason).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OtherApi.Insult``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `Insult`: InlineResponse2005
    fmt.Fprintf(os.Stdout, "Response from `OtherApi.Insult`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiInsultRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string** | The person&#39;s name. | 
 **reason** | **string** | The reason for the praise/insult. | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Praise

> InlineResponse2005 Praise(ctx).Name(name).Reason(reason).Execute()

Praise



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    name := "Alex" // string | The person's name.
    reason := "you did it again" // string | The reason for the praise/insult.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.OtherApi.Praise(context.Background()).Name(name).Reason(reason).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OtherApi.Praise``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `Praise`: InlineResponse2005
    fmt.Fprintf(os.Stdout, "Response from `OtherApi.Praise`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiPraiseRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string** | The person&#39;s name. | 
 **reason** | **string** | The reason for the praise/insult. | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RateWord

> InlineResponse2006 RateWord(ctx).Word(word).Execute()

Rate Word



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    word := "cookie" // string | The word to be rated.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.OtherApi.RateWord(context.Background()).Word(word).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OtherApi.RateWord``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `RateWord`: InlineResponse2006
    fmt.Fprintf(os.Stdout, "Response from `OtherApi.RateWord`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRateWordRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **string** | The word to be rated. | 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchGifs

> InlineResponse2001 SearchGifs(ctx).Query(query).Number(number).Execute()

Search Gifs



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    query := "cat" // string | A search query.
    number := int32(3) // int32 | The number of results to retrieve between 1 and 10. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.OtherApi.SearchGifs(context.Background()).Query(query).Number(number).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OtherApi.SearchGifs``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SearchGifs`: InlineResponse2001
    fmt.Fprintf(os.Stdout, "Response from `OtherApi.SearchGifs`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchGifsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | A search query. | 
 **number** | **int32** | The number of results to retrieve between 1 and 10. | 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

