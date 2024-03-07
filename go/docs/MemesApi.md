# \MemesAPI

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DownvoteMeme**](MemesAPI.md#DownvoteMeme) | **Post** /memes/{id}/downvote | Downvote a Meme
[**RandomMeme**](MemesAPI.md#RandomMeme) | **Get** /memes/random | Random Meme
[**SearchMemes**](MemesAPI.md#SearchMemes) | **Get** /memes/search | Search Memes
[**UpvoteMeme**](MemesAPI.md#UpvoteMeme) | **Post** /memes/{id}/upvote | Upvote a Meme



## DownvoteMeme

> SubmitJoke200Response DownvoteMeme(ctx, id).Execute()

Downvote a Meme



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
	resp, r, err := apiClient.MemesAPI.DownvoteMeme(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MemesAPI.DownvoteMeme``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DownvoteMeme`: SubmitJoke200Response
	fmt.Fprintf(os.Stdout, "Response from `MemesAPI.DownvoteMeme`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The object&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDownvoteMemeRequest struct via the builder pattern


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


## RandomMeme

> RandomMeme200Response RandomMeme(ctx).Keywords(keywords).KeywordsInImage(keywordsInImage).MediaType(mediaType).Number(number).MinRating(minRating).Execute()

Random Meme



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
	keywordsInImage := false // bool | Whether the keywords should be found in the meme's image. (optional)
	mediaType := "image" // string | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'. (optional)
	number := int32(3) // int32 | The number of results to retrieve between 1 and 10. (optional)
	minRating := int32(7) // int32 | The minimum rating between 0 and 10 the result should have. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MemesAPI.RandomMeme(context.Background()).Keywords(keywords).KeywordsInImage(keywordsInImage).MediaType(mediaType).Number(number).MinRating(minRating).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MemesAPI.RandomMeme``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RandomMeme`: RandomMeme200Response
	fmt.Fprintf(os.Stdout, "Response from `MemesAPI.RandomMeme`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRandomMemeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string** | A comma separated list of keywords. | 
 **keywordsInImage** | **bool** | Whether the keywords should be found in the meme&#39;s image. | 
 **mediaType** | **string** | The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | 
 **number** | **int32** | The number of results to retrieve between 1 and 10. | 
 **minRating** | **int32** | The minimum rating between 0 and 10 the result should have. | 

### Return type

[**RandomMeme200Response**](RandomMeme200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchMemes

> SearchMemes200Response SearchMemes(ctx).Keywords(keywords).KeywordsInImage(keywordsInImage).MediaType(mediaType).Number(number).MinRating(minRating).Offset(offset).Execute()

Search Memes



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
	keywordsInImage := false // bool | Whether the keywords should be found in the meme's image. (optional)
	mediaType := "image" // string | The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'. (optional)
	number := int32(3) // int32 | The number of results to retrieve between 1 and 10. (optional)
	minRating := int32(7) // int32 | The minimum rating between 0 and 10 the result should have. (optional)
	offset := float32(8.14) // float32 | The number of results to skip. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MemesAPI.SearchMemes(context.Background()).Keywords(keywords).KeywordsInImage(keywordsInImage).MediaType(mediaType).Number(number).MinRating(minRating).Offset(offset).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MemesAPI.SearchMemes``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchMemes`: SearchMemes200Response
	fmt.Fprintf(os.Stdout, "Response from `MemesAPI.SearchMemes`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchMemesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string** | A comma separated list of keywords. | 
 **keywordsInImage** | **bool** | Whether the keywords should be found in the meme&#39;s image. | 
 **mediaType** | **string** | The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | 
 **number** | **int32** | The number of results to retrieve between 1 and 10. | 
 **minRating** | **int32** | The minimum rating between 0 and 10 the result should have. | 
 **offset** | **float32** | The number of results to skip. | 

### Return type

[**SearchMemes200Response**](SearchMemes200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpvoteMeme

> SubmitJoke200Response UpvoteMeme(ctx, id).Execute()

Upvote a Meme



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
	resp, r, err := apiClient.MemesAPI.UpvoteMeme(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MemesAPI.UpvoteMeme``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpvoteMeme`: SubmitJoke200Response
	fmt.Fprintf(os.Stdout, "Response from `MemesAPI.UpvoteMeme`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The object&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpvoteMemeRequest struct via the builder pattern


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

