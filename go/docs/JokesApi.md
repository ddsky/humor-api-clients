# \JokesAPI

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AnalyzeJoke**](JokesAPI.md#AnalyzeJoke) | **Post** /jokes/analyze | Analyze Joke
[**DownvoteJoke**](JokesAPI.md#DownvoteJoke) | **Post** /jokes/{id}/downvote | Downvote a Joke
[**RandomJoke**](JokesAPI.md#RandomJoke) | **Get** /jokes/random | Random Joke
[**SearchJokes**](JokesAPI.md#SearchJokes) | **Get** /jokes/search | Search Jokes
[**SubmitJoke**](JokesAPI.md#SubmitJoke) | **Post** /jokes | Submit Joke
[**UpvoteJoke**](JokesAPI.md#UpvoteJoke) | **Post** /jokes/{id}/upvote | Upvote a Joke



## AnalyzeJoke

> AnalyzeJoke200Response AnalyzeJoke(ctx).Body(body).Execute()

Analyze Joke



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
	body := "body_example" // string | Post the joke as plain text. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.JokesAPI.AnalyzeJoke(context.Background()).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `JokesAPI.AnalyzeJoke``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AnalyzeJoke`: AnalyzeJoke200Response
	fmt.Fprintf(os.Stdout, "Response from `JokesAPI.AnalyzeJoke`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAnalyzeJokeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **string** | Post the joke as plain text. | 

### Return type

[**AnalyzeJoke200Response**](AnalyzeJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DownvoteJoke

> SubmitJoke200Response DownvoteJoke(ctx, id).Execute()

Downvote a Joke



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
	id := int32(1) // int32 | The object's id.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.JokesAPI.DownvoteJoke(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `JokesAPI.DownvoteJoke``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DownvoteJoke`: SubmitJoke200Response
	fmt.Fprintf(os.Stdout, "Response from `JokesAPI.DownvoteJoke`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The object&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDownvoteJokeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RandomJoke

> RandomJoke200Response RandomJoke(ctx).Keywords(keywords).IncludeTags(includeTags).ExcludeTags(excludeTags).MinRating(minRating).MaxLength(maxLength).Execute()

Random Joke



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
	keywords := "rocket" // string | A comma separated list of keywords. (optional)
	includeTags := "one_liner" // string | A comma separated list of tags that the joke must have. (optional)
	excludeTags := "nsfw" // string | A comma separated list of tags that the joke must not have. (optional)
	minRating := int32(7) // int32 | The minimum rating between 0 and 10 the result should have. (optional)
	maxLength := int32(200) // int32 | The maximum number of letters in the joke. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.JokesAPI.RandomJoke(context.Background()).Keywords(keywords).IncludeTags(includeTags).ExcludeTags(excludeTags).MinRating(minRating).MaxLength(maxLength).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `JokesAPI.RandomJoke``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RandomJoke`: RandomJoke200Response
	fmt.Fprintf(os.Stdout, "Response from `JokesAPI.RandomJoke`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRandomJokeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string** | A comma separated list of keywords. | 
 **includeTags** | **string** | A comma separated list of tags that the joke must have. | 
 **excludeTags** | **string** | A comma separated list of tags that the joke must not have. | 
 **minRating** | **int32** | The minimum rating between 0 and 10 the result should have. | 
 **maxLength** | **int32** | The maximum number of letters in the joke. | 

### Return type

[**RandomJoke200Response**](RandomJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchJokes

> SearchJokes200Response SearchJokes(ctx).Keywords(keywords).IncludeTags(includeTags).ExcludeTags(excludeTags).Number(number).MinRating(minRating).MaxLength(maxLength).Offset(offset).Execute()

Search Jokes



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
	keywords := "rocket" // string | A comma separated list of keywords. (optional)
	includeTags := "one_liner" // string | A comma separated list of tags that the joke must have. (optional)
	excludeTags := "nsfw" // string | A comma separated list of tags that the joke must not have. (optional)
	number := int32(3) // int32 | The number of results to retrieve between 1 and 10. (optional)
	minRating := int32(7) // int32 | The minimum rating between 0 and 10 the result should have. (optional)
	maxLength := int32(200) // int32 | The maximum number of letters in the joke. (optional)
	offset := float32(8.14) // float32 | The number of results to skip. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.JokesAPI.SearchJokes(context.Background()).Keywords(keywords).IncludeTags(includeTags).ExcludeTags(excludeTags).Number(number).MinRating(minRating).MaxLength(maxLength).Offset(offset).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `JokesAPI.SearchJokes``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchJokes`: SearchJokes200Response
	fmt.Fprintf(os.Stdout, "Response from `JokesAPI.SearchJokes`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchJokesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string** | A comma separated list of keywords. | 
 **includeTags** | **string** | A comma separated list of tags that the joke must have. | 
 **excludeTags** | **string** | A comma separated list of tags that the joke must not have. | 
 **number** | **int32** | The number of results to retrieve between 1 and 10. | 
 **minRating** | **int32** | The minimum rating between 0 and 10 the result should have. | 
 **maxLength** | **int32** | The maximum number of letters in the joke. | 
 **offset** | **float32** | The number of results to skip. | 

### Return type

[**SearchJokes200Response**](SearchJokes200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SubmitJoke

> SubmitJoke200Response SubmitJoke(ctx).Body(body).Execute()

Submit Joke



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
	body := "body_example" // string | Post the joke as plain text. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.JokesAPI.SubmitJoke(context.Background()).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `JokesAPI.SubmitJoke``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SubmitJoke`: SubmitJoke200Response
	fmt.Fprintf(os.Stdout, "Response from `JokesAPI.SubmitJoke`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSubmitJokeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **string** | Post the joke as plain text. | 

### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpvoteJoke

> SubmitJoke200Response UpvoteJoke(ctx, id).Execute()

Upvote a Joke



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
	id := int32(1) // int32 | The object's id.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.JokesAPI.UpvoteJoke(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `JokesAPI.UpvoteJoke``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpvoteJoke`: SubmitJoke200Response
	fmt.Fprintf(os.Stdout, "Response from `JokesAPI.UpvoteJoke`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The object&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpvoteJokeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**SubmitJoke200Response**](SubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

