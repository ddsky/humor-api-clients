# OAIOtherApi

All URIs are relative to *https://api.humorapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateNonsenseWord**](OAIOtherApi.md#generatenonsenseword) | **GET** /words/nonsense/random | Generate Nonsense Word
[**insult**](OAIOtherApi.md#insult) | **GET** /insult | Insult
[**praise**](OAIOtherApi.md#praise) | **GET** /praise | Praise
[**rateWord**](OAIOtherApi.md#rateword) | **GET** /words/rate | Rate Word
[**searchGifs**](OAIOtherApi.md#searchgifs) | **GET** /gif/search | Search Gifs


# **generateNonsenseWord**
```objc
-(NSURLSessionTask*) generateNonsenseWordWithCompletionHandler: 
        (void (^)(OAIInlineResponse2007* output, NSError* error)) handler;
```

Generate Nonsense Word

Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];



OAIOtherApi*apiInstance = [[OAIOtherApi alloc] init];

// Generate Nonsense Word
[apiInstance generateNonsenseWordWithCompletionHandler: 
          ^(OAIInlineResponse2007* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOtherApi->generateNonsenseWord: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIInlineResponse2007***](OAIInlineResponse2007.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **insult**
```objc
-(NSURLSessionTask*) insultWithName: (NSString*) name
    reason: (NSString*) reason
        completionHandler: (void (^)(OAIInlineResponse2005* output, NSError* error)) handler;
```

Insult

Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSString* name = Alex; // The person's name.
NSString* reason = you did it again; // The reason for the praise/insult.

OAIOtherApi*apiInstance = [[OAIOtherApi alloc] init];

// Insult
[apiInstance insultWithName:name
              reason:reason
          completionHandler: ^(OAIInlineResponse2005* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOtherApi->insult: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| The person&#39;s name. | 
 **reason** | **NSString***| The reason for the praise/insult. | 

### Return type

[**OAIInlineResponse2005***](OAIInlineResponse2005.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **praise**
```objc
-(NSURLSessionTask*) praiseWithName: (NSString*) name
    reason: (NSString*) reason
        completionHandler: (void (^)(OAIInlineResponse2005* output, NSError* error)) handler;
```

Praise

Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSString* name = Alex; // The person's name.
NSString* reason = you did it again; // The reason for the praise/insult.

OAIOtherApi*apiInstance = [[OAIOtherApi alloc] init];

// Praise
[apiInstance praiseWithName:name
              reason:reason
          completionHandler: ^(OAIInlineResponse2005* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOtherApi->praise: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| The person&#39;s name. | 
 **reason** | **NSString***| The reason for the praise/insult. | 

### Return type

[**OAIInlineResponse2005***](OAIInlineResponse2005.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rateWord**
```objc
-(NSURLSessionTask*) rateWordWithWord: (NSString*) word
        completionHandler: (void (^)(OAIInlineResponse2006* output, NSError* error)) handler;
```

Rate Word

Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSString* word = cookie; // The word to be rated.

OAIOtherApi*apiInstance = [[OAIOtherApi alloc] init];

// Rate Word
[apiInstance rateWordWithWord:word
          completionHandler: ^(OAIInlineResponse2006* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOtherApi->rateWord: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **NSString***| The word to be rated. | 

### Return type

[**OAIInlineResponse2006***](OAIInlineResponse2006.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGifs**
```objc
-(NSURLSessionTask*) searchGifsWithQuery: (NSString*) query
    number: (NSNumber*) number
        completionHandler: (void (^)(OAIInlineResponse2001* output, NSError* error)) handler;
```

Search Gifs

Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSString* query = cat; // A search query.
NSNumber* number = 3; // The number of results to retrieve between 1 and 10. (optional)

OAIOtherApi*apiInstance = [[OAIOtherApi alloc] init];

// Search Gifs
[apiInstance searchGifsWithQuery:query
              number:number
          completionHandler: ^(OAIInlineResponse2001* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOtherApi->searchGifs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| A search query. | 
 **number** | **NSNumber***| The number of results to retrieve between 1 and 10. | [optional] 

### Return type

[**OAIInlineResponse2001***](OAIInlineResponse2001.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

