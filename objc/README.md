# OpenAPIClient

Awesome Humor API.

This ObjC package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Package version: 1.0
- Build package: org.openapitools.codegen.languages.ObjcClientCodegen
For more information, please visit [https://humorapi.com](https://humorapi.com)

## Requirements

The SDK requires [**ARC (Automatic Reference Counting)**](http://stackoverflow.com/questions/7778356/how-to-enable-disable-automatic-reference-counting) to be enabled in the Xcode project.

## Installation & Usage
### Install from Github using [CocoaPods](https://cocoapods.org/)

Add the following to the Podfile:

```ruby
pod 'OpenAPIClient', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'
```

To specify a particular branch, append `, :branch => 'branch-name-here'`

To specify a particular commit, append `, :commit => '11aa22'`

### Install from local path using [CocoaPods](https://cocoapods.org/)

Put the SDK under your project folder (e.g. /path/to/objc_project/Vendor/OpenAPIClient) and then add the following to the Podfile:

```ruby
pod 'OpenAPIClient', :path => 'Vendor/OpenAPIClient'
```

### Usage

Import the following:

```objc
#import <OpenAPIClient/OAIApiClient.h>
#import <OpenAPIClient/OAIDefaultConfiguration.h>
// load models
#import <OpenAPIClient/OAIInlineResponse200.h>
#import <OpenAPIClient/OAIInlineResponse2001.h>
#import <OpenAPIClient/OAIInlineResponse2002.h>
#import <OpenAPIClient/OAIInlineResponse2003.h>
#import <OpenAPIClient/OAIInlineResponse2004.h>
#import <OpenAPIClient/OAIInlineResponse2005.h>
#import <OpenAPIClient/OAIInlineResponse2006.h>
#import <OpenAPIClient/OAIInlineResponse2007.h>
#import <OpenAPIClient/OAIInlineResponse2008.h>
#import <OpenAPIClient/OAIInlineResponse2009.h>
// load API classes for accessing endpoints
#import <OpenAPIClient/OAIJokesApi.h>
#import <OpenAPIClient/OAIMemesApi.h>
#import <OpenAPIClient/OAIOtherApi.h>

```

## Recommendation

It's recommended to create an instance of ApiClient per thread in a multi-threaded environment to avoid any potential issues.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```objc

OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSString* *body = @"body_example"; // Post the joke as plain text. (optional)

OAIJokesApi *apiInstance = [[OAIJokesApi alloc] init];

// Analyze Joke
[apiInstance analyzeJokeWithBody:body
              completionHandler: ^(OAIInlineResponse2009* output, NSError* error) {
                            if (output) {
                                NSLog(@"%@", output);
                            }
                            if (error) {
                                NSLog(@"Error: %@", error);
                            }
                        }];

```

## Documentation for API Endpoints

All URIs are relative to *https://api.humorapi.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OAIJokesApi* | [**analyzeJoke**](docs/OAIJokesApi.md#analyzejoke) | **POST** /jokes/analyze | Analyze Joke
*OAIJokesApi* | [**downvoteJoke**](docs/OAIJokesApi.md#downvotejoke) | **POST** /jokes/{id}/downvote | Downvote a Joke
*OAIJokesApi* | [**randomJoke**](docs/OAIJokesApi.md#randomjoke) | **GET** /jokes/random | Random Joke
*OAIJokesApi* | [**searchJokes**](docs/OAIJokesApi.md#searchjokes) | **GET** /jokes/search | Search Jokes
*OAIJokesApi* | [**submitJoke**](docs/OAIJokesApi.md#submitjoke) | **POST** /jokes | Submit Joke
*OAIJokesApi* | [**upvoteJoke**](docs/OAIJokesApi.md#upvotejoke) | **POST** /jokes/{id}/upvote | Upvote a Joke
*OAIMemesApi* | [**downvoteMeme**](docs/OAIMemesApi.md#downvotememe) | **POST** /memes/{id}/downvote | Downvote a Meme
*OAIMemesApi* | [**randomMeme**](docs/OAIMemesApi.md#randommeme) | **GET** /memes/random | Random Meme
*OAIMemesApi* | [**searchMemes**](docs/OAIMemesApi.md#searchmemes) | **GET** /memes/search | Search Memes
*OAIMemesApi* | [**upvoteMeme**](docs/OAIMemesApi.md#upvotememe) | **POST** /memes/{id}/upvote | Upvote a Meme
*OAIOtherApi* | [**generateNonsenseWord**](docs/OAIOtherApi.md#generatenonsenseword) | **GET** /words/nonsense/random | Generate Nonsense Word
*OAIOtherApi* | [**insult**](docs/OAIOtherApi.md#insult) | **GET** /insult | Insult
*OAIOtherApi* | [**praise**](docs/OAIOtherApi.md#praise) | **GET** /praise | Praise
*OAIOtherApi* | [**rateWord**](docs/OAIOtherApi.md#rateword) | **GET** /words/rate | Rate Word
*OAIOtherApi* | [**searchGifs**](docs/OAIOtherApi.md#searchgifs) | **GET** /gif/search | Search Gifs


## Documentation For Models

 - [OAIInlineResponse200](docs/OAIInlineResponse200.md)
 - [OAIInlineResponse2001](docs/OAIInlineResponse2001.md)
 - [OAIInlineResponse2002](docs/OAIInlineResponse2002.md)
 - [OAIInlineResponse2003](docs/OAIInlineResponse2003.md)
 - [OAIInlineResponse2004](docs/OAIInlineResponse2004.md)
 - [OAIInlineResponse2005](docs/OAIInlineResponse2005.md)
 - [OAIInlineResponse2006](docs/OAIInlineResponse2006.md)
 - [OAIInlineResponse2007](docs/OAIInlineResponse2007.md)
 - [OAIInlineResponse2008](docs/OAIInlineResponse2008.md)
 - [OAIInlineResponse2009](docs/OAIInlineResponse2009.md)


## Documentation For Authorization


## apiKey

- **Type**: API key
- **API key parameter name**: api-key
- **Location**: URL query string


## Author

mail@humorapi.com

