# OAIJokesApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyzeJoke**](OAIJokesApi.md#analyzejoke) | **POST** /jokes/analyze | Analyze Joke
[**downvoteJoke**](OAIJokesApi.md#downvotejoke) | **POST** /jokes/{id}/downvote | Downvote a Joke
[**randomJoke**](OAIJokesApi.md#randomjoke) | **GET** /jokes/random | Random Joke
[**searchJokes**](OAIJokesApi.md#searchjokes) | **GET** /jokes/search | Search Jokes
[**submitJoke**](OAIJokesApi.md#submitjoke) | **POST** /jokes | Submit Joke
[**upvoteJoke**](OAIJokesApi.md#upvotejoke) | **POST** /jokes/{id}/upvote | Upvote a Joke


# **analyzeJoke**
```objc
-(NSURLSessionTask*) analyzeJokeWithBody: (NSString*) body
        completionHandler: (void (^)(OAIAnalyzeJoke200Response* output, NSError* error)) handler;
```

Analyze Joke

Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSString* body = @"body_example"; // Post the joke as plain text. (optional)

OAIJokesApi*apiInstance = [[OAIJokesApi alloc] init];

// Analyze Joke
[apiInstance analyzeJokeWithBody:body
          completionHandler: ^(OAIAnalyzeJoke200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIJokesApi->analyzeJoke: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **NSString***| Post the joke as plain text. | [optional] 

### Return type

[**OAIAnalyzeJoke200Response***](OAIAnalyzeJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downvoteJoke**
```objc
-(NSURLSessionTask*) downvoteJokeWithId: (NSNumber*) _id
        completionHandler: (void (^)(OAISubmitJoke200Response* output, NSError* error)) handler;
```

Downvote a Joke

Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSNumber* _id = 1; // The object's id.

OAIJokesApi*apiInstance = [[OAIJokesApi alloc] init];

// Downvote a Joke
[apiInstance downvoteJokeWithId:_id
          completionHandler: ^(OAISubmitJoke200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIJokesApi->downvoteJoke: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The object&#39;s id. | 

### Return type

[**OAISubmitJoke200Response***](OAISubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **randomJoke**
```objc
-(NSURLSessionTask*) randomJokeWithKeywords: (NSString*) keywords
    includeTags: (NSString*) includeTags
    excludeTags: (NSString*) excludeTags
    minRating: (NSNumber*) minRating
    maxLength: (NSNumber*) maxLength
        completionHandler: (void (^)(OAIRandomJoke200Response* output, NSError* error)) handler;
```

Random Joke

Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSString* keywords = rocket; // A comma separated list of keywords. (optional)
NSString* includeTags = one_liner; // A comma separated list of tags that the joke must have. (optional)
NSString* excludeTags = nsfw; // A comma separated list of tags that the joke must not have. (optional)
NSNumber* minRating = 7; // The minimum rating between 0 and 10 the result should have. (optional)
NSNumber* maxLength = 200; // The maximum number of letters in the joke. (optional)

OAIJokesApi*apiInstance = [[OAIJokesApi alloc] init];

// Random Joke
[apiInstance randomJokeWithKeywords:keywords
              includeTags:includeTags
              excludeTags:excludeTags
              minRating:minRating
              maxLength:maxLength
          completionHandler: ^(OAIRandomJoke200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIJokesApi->randomJoke: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **NSString***| A comma separated list of keywords. | [optional] 
 **includeTags** | **NSString***| A comma separated list of tags that the joke must have. | [optional] 
 **excludeTags** | **NSString***| A comma separated list of tags that the joke must not have. | [optional] 
 **minRating** | **NSNumber***| The minimum rating between 0 and 10 the result should have. | [optional] 
 **maxLength** | **NSNumber***| The maximum number of letters in the joke. | [optional] 

### Return type

[**OAIRandomJoke200Response***](OAIRandomJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchJokes**
```objc
-(NSURLSessionTask*) searchJokesWithKeywords: (NSString*) keywords
    includeTags: (NSString*) includeTags
    excludeTags: (NSString*) excludeTags
    number: (NSNumber*) number
    minRating: (NSNumber*) minRating
    maxLength: (NSNumber*) maxLength
    offset: (NSNumber*) offset
        completionHandler: (void (^)(OAISearchJokes200Response* output, NSError* error)) handler;
```

Search Jokes

Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSString* keywords = rocket; // A comma separated list of keywords. (optional)
NSString* includeTags = one_liner; // A comma separated list of tags that the joke must have. (optional)
NSString* excludeTags = nsfw; // A comma separated list of tags that the joke must not have. (optional)
NSNumber* number = 3; // The number of results to retrieve between 1 and 10. (optional)
NSNumber* minRating = 7; // The minimum rating between 0 and 10 the result should have. (optional)
NSNumber* maxLength = 200; // The maximum number of letters in the joke. (optional)
NSNumber* offset = @56; // The number of results to skip. (optional)

OAIJokesApi*apiInstance = [[OAIJokesApi alloc] init];

// Search Jokes
[apiInstance searchJokesWithKeywords:keywords
              includeTags:includeTags
              excludeTags:excludeTags
              number:number
              minRating:minRating
              maxLength:maxLength
              offset:offset
          completionHandler: ^(OAISearchJokes200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIJokesApi->searchJokes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **NSString***| A comma separated list of keywords. | [optional] 
 **includeTags** | **NSString***| A comma separated list of tags that the joke must have. | [optional] 
 **excludeTags** | **NSString***| A comma separated list of tags that the joke must not have. | [optional] 
 **number** | **NSNumber***| The number of results to retrieve between 1 and 10. | [optional] 
 **minRating** | **NSNumber***| The minimum rating between 0 and 10 the result should have. | [optional] 
 **maxLength** | **NSNumber***| The maximum number of letters in the joke. | [optional] 
 **offset** | **NSNumber***| The number of results to skip. | [optional] 

### Return type

[**OAISearchJokes200Response***](OAISearchJokes200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitJoke**
```objc
-(NSURLSessionTask*) submitJokeWithBody: (NSString*) body
        completionHandler: (void (^)(OAISubmitJoke200Response* output, NSError* error)) handler;
```

Submit Joke

Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSString* body = @"body_example"; // Post the joke as plain text. (optional)

OAIJokesApi*apiInstance = [[OAIJokesApi alloc] init];

// Submit Joke
[apiInstance submitJokeWithBody:body
          completionHandler: ^(OAISubmitJoke200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIJokesApi->submitJoke: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **NSString***| Post the joke as plain text. | [optional] 

### Return type

[**OAISubmitJoke200Response***](OAISubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upvoteJoke**
```objc
-(NSURLSessionTask*) upvoteJokeWithId: (NSNumber*) _id
        completionHandler: (void (^)(OAISubmitJoke200Response* output, NSError* error)) handler;
```

Upvote a Joke

Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSNumber* _id = 1; // The object's id.

OAIJokesApi*apiInstance = [[OAIJokesApi alloc] init];

// Upvote a Joke
[apiInstance upvoteJokeWithId:_id
          completionHandler: ^(OAISubmitJoke200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIJokesApi->upvoteJoke: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The object&#39;s id. | 

### Return type

[**OAISubmitJoke200Response***](OAISubmitJoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

