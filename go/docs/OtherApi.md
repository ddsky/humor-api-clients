# \OtherAPI

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GenerateNonsenseWord**](OtherAPI.md#GenerateNonsenseWord) | **Get** /words/nonsense/random | Generate Nonsense Word
[**Insult**](OtherAPI.md#Insult) | **Get** /insult | Insult
[**Praise**](OtherAPI.md#Praise) | **Get** /praise | Praise
[**RateWord**](OtherAPI.md#RateWord) | **Get** /words/rate | Rate Word
[**SearchGifs**](OtherAPI.md#SearchGifs) | **Get** /gif/search | Search Gifs



## GenerateNonsenseWord

> GenerateNonsenseWord200Response GenerateNonsenseWord(ctx).Execute()

Generate Nonsense Word



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/humor-api-clients/tree/main/go/"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OtherAPI.GenerateNonsenseWord(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OtherAPI.GenerateNonsenseWord``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GenerateNonsenseWord`: GenerateNonsenseWord200Response
	fmt.Fprintf(os.Stdout, "Response from `OtherAPI.GenerateNonsenseWord`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGenerateNonsenseWordRequest struct via the builder pattern


### Return type

[**GenerateNonsenseWord200Response**](GenerateNonsenseWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Insult

> Praise200Response Insult(ctx).Name(name).Reason(reason).Execute()

Insult



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/humor-api-clients/tree/main/go/"
)

func main() {
	name := "Alex" // string | The person's name.
	reason := "you did it again" // string | The reason for the praise/insult.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OtherAPI.Insult(context.Background()).Name(name).Reason(reason).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OtherAPI.Insult``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `Insult`: Praise200Response
	fmt.Fprintf(os.Stdout, "Response from `OtherAPI.Insult`: %v\n", resp)
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

[**Praise200Response**](Praise200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Praise

> Praise200Response Praise(ctx).Name(name).Reason(reason).Execute()

Praise



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/humor-api-clients/tree/main/go/"
)

func main() {
	name := "Alex" // string | The person's name.
	reason := "you did it again" // string | The reason for the praise/insult.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OtherAPI.Praise(context.Background()).Name(name).Reason(reason).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OtherAPI.Praise``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `Praise`: Praise200Response
	fmt.Fprintf(os.Stdout, "Response from `OtherAPI.Praise`: %v\n", resp)
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

[**Praise200Response**](Praise200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RateWord

> RateWord200Response RateWord(ctx).Word(word).Execute()

Rate Word



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/humor-api-clients/tree/main/go/"
)

func main() {
	word := "cookie" // string | The word to be rated.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OtherAPI.RateWord(context.Background()).Word(word).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OtherAPI.RateWord``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RateWord`: RateWord200Response
	fmt.Fprintf(os.Stdout, "Response from `OtherAPI.RateWord`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRateWordRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **string** | The word to be rated. | 

### Return type

[**RateWord200Response**](RateWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchGifs

> SearchGifs200Response SearchGifs(ctx).Query(query).Number(number).Execute()

Search Gifs



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/humor-api-clients/tree/main/go/"
)

func main() {
	query := "cat" // string | A search query.
	number := int32(3) // int32 | The number of results to retrieve between 1 and 10. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OtherAPI.SearchGifs(context.Background()).Query(query).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OtherAPI.SearchGifs``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchGifs`: SearchGifs200Response
	fmt.Fprintf(os.Stdout, "Response from `OtherAPI.SearchGifs`: %v\n", resp)
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

[**SearchGifs200Response**](SearchGifs200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

