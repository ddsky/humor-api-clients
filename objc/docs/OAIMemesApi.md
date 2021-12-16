# OAIMemesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downvoteMeme**](OAIMemesApi.md#downvotememe) | **POST** /memes/{id}/downvote | Downvote a Meme
[**randomMeme**](OAIMemesApi.md#randommeme) | **GET** /memes/random | Random Meme
[**searchMemes**](OAIMemesApi.md#searchmemes) | **GET** /memes/search | Search Memes
[**upvoteMeme**](OAIMemesApi.md#upvotememe) | **POST** /memes/{id}/upvote | Upvote a Meme


# **downvoteMeme**
```objc
-(NSURLSessionTask*) downvoteMemeWithId: (NSNumber*) _id
        completionHandler: (void (^)(OAIInlineResponse2008* output, NSError* error)) handler;
```

Downvote a Meme

Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSNumber* _id = 1; // The object's id.

OAIMemesApi*apiInstance = [[OAIMemesApi alloc] init];

// Downvote a Meme
[apiInstance downvoteMemeWithId:_id
          completionHandler: ^(OAIInlineResponse2008* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMemesApi->downvoteMeme: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The object&#39;s id. | 

### Return type

[**OAIInlineResponse2008***](OAIInlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **randomMeme**
```objc
-(NSURLSessionTask*) randomMemeWithKeywords: (NSString*) keywords
    keywordsInImage: (NSNumber*) keywordsInImage
    mediaType: (NSString*) mediaType
    number: (NSNumber*) number
    minRating: (NSNumber*) minRating
        completionHandler: (void (^)(OAIInlineResponse2003* output, NSError* error)) handler;
```

Random Meme

Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSString* keywords = rocket; // A comma separated list of keywords. (optional)
NSNumber* keywordsInImage = false; // Whether the keywords should be found in the meme's image. (optional)
NSString* mediaType = image; // The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'. (optional)
NSNumber* number = 3; // The number of results to retrieve between 1 and 10. (optional)
NSNumber* minRating = 7; // The minimum rating between 0 and 10 the result should have. (optional)

OAIMemesApi*apiInstance = [[OAIMemesApi alloc] init];

// Random Meme
[apiInstance randomMemeWithKeywords:keywords
              keywordsInImage:keywordsInImage
              mediaType:mediaType
              number:number
              minRating:minRating
          completionHandler: ^(OAIInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMemesApi->randomMeme: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **NSString***| A comma separated list of keywords. | [optional] 
 **keywordsInImage** | **NSNumber***| Whether the keywords should be found in the meme&#39;s image. | [optional] 
 **mediaType** | **NSString***| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] 
 **number** | **NSNumber***| The number of results to retrieve between 1 and 10. | [optional] 
 **minRating** | **NSNumber***| The minimum rating between 0 and 10 the result should have. | [optional] 

### Return type

[**OAIInlineResponse2003***](OAIInlineResponse2003.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchMemes**
```objc
-(NSURLSessionTask*) searchMemesWithKeywords: (NSString*) keywords
    keywordsInImage: (NSNumber*) keywordsInImage
    mediaType: (NSString*) mediaType
    number: (NSNumber*) number
    minRating: (NSNumber*) minRating
    offset: (NSNumber*) offset
        completionHandler: (void (^)(OAIInlineResponse2002* output, NSError* error)) handler;
```

Search Memes

Search for memes. See https://humorapi.com/docs/#Search-Memes for more.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSString* keywords = rocket; // A comma separated list of keywords. (optional)
NSNumber* keywordsInImage = false; // Whether the keywords should be found in the meme's image. (optional)
NSString* mediaType = image; // The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'. (optional)
NSNumber* number = 3; // The number of results to retrieve between 1 and 10. (optional)
NSNumber* minRating = 7; // The minimum rating between 0 and 10 the result should have. (optional)
NSNumber* offset = @56; // The number of results to skip. (optional)

OAIMemesApi*apiInstance = [[OAIMemesApi alloc] init];

// Search Memes
[apiInstance searchMemesWithKeywords:keywords
              keywordsInImage:keywordsInImage
              mediaType:mediaType
              number:number
              minRating:minRating
              offset:offset
          completionHandler: ^(OAIInlineResponse2002* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMemesApi->searchMemes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **NSString***| A comma separated list of keywords. | [optional] 
 **keywordsInImage** | **NSNumber***| Whether the keywords should be found in the meme&#39;s image. | [optional] 
 **mediaType** | **NSString***| The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. | [optional] 
 **number** | **NSNumber***| The number of results to retrieve between 1 and 10. | [optional] 
 **minRating** | **NSNumber***| The minimum rating between 0 and 10 the result should have. | [optional] 
 **offset** | **NSNumber***| The number of results to skip. | [optional] 

### Return type

[**OAIInlineResponse2002***](OAIInlineResponse2002.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upvoteMeme**
```objc
-(NSURLSessionTask*) upvoteMemeWithId: (NSNumber*) _id
        completionHandler: (void (^)(OAIInlineResponse2008* output, NSError* error)) handler;
```

Upvote a Meme

Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSNumber* _id = 1; // The object's id.

OAIMemesApi*apiInstance = [[OAIMemesApi alloc] init];

// Upvote a Meme
[apiInstance upvoteMemeWithId:_id
          completionHandler: ^(OAIInlineResponse2008* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMemesApi->upvoteMeme: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The object&#39;s id. | 

### Return type

[**OAIInlineResponse2008***](OAIInlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

