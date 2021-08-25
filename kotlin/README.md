# humorapi - Kotlin client library for Humor API

## Requires

* Kotlin 1.3.31
* Gradle 4.9

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://api.humorapi.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*JokesApi* | [**analyzeJoke**](docs/JokesApi.md#analyzejoke) | **POST** /jokes/analyze | Analyze Joke
*JokesApi* | [**downvoteJoke**](docs/JokesApi.md#downvotejoke) | **POST** /jokes/{id}/downvote | Downvote a Joke
*JokesApi* | [**randomJoke**](docs/JokesApi.md#randomjoke) | **GET** /jokes/random | Random Joke
*JokesApi* | [**searchJokes**](docs/JokesApi.md#searchjokes) | **GET** /jokes/search | Search Jokes
*JokesApi* | [**submitJoke**](docs/JokesApi.md#submitjoke) | **POST** /jokes | Submit Joke
*JokesApi* | [**upvoteJoke**](docs/JokesApi.md#upvotejoke) | **POST** /jokes/{id}/upvote | Upvote a Joke
*MemesApi* | [**downvoteMeme**](docs/MemesApi.md#downvotememe) | **POST** /memes/{id}/downvote | Downvote a Meme
*MemesApi* | [**randomMeme**](docs/MemesApi.md#randommeme) | **GET** /memes/random | Random Meme
*MemesApi* | [**searchMemes**](docs/MemesApi.md#searchmemes) | **GET** /memes/search | Search Memes
*MemesApi* | [**upvoteMeme**](docs/MemesApi.md#upvotememe) | **POST** /memes/{id}/upvote | Upvote a Meme
*OtherApi* | [**generateNonsenseWord**](docs/OtherApi.md#generatenonsenseword) | **GET** /words/nonsense/random | Generate Nonsense Word
*OtherApi* | [**insult**](docs/OtherApi.md#insult) | **GET** /insult | Insult
*OtherApi* | [**praise**](docs/OtherApi.md#praise) | **GET** /praise | Praise
*OtherApi* | [**rateWord**](docs/OtherApi.md#rateword) | **GET** /words/rate | Rate Word
*OtherApi* | [**searchGifs**](docs/OtherApi.md#searchgifs) | **GET** /gif/search | Search Gifs


<a name="documentation-for-models"></a>
## Documentation for Models

 - [com.humorapi.client.model.InlineResponse200](docs/InlineResponse200.md)
 - [com.humorapi.client.model.InlineResponse2001](docs/InlineResponse2001.md)
 - [com.humorapi.client.model.InlineResponse2002](docs/InlineResponse2002.md)
 - [com.humorapi.client.model.InlineResponse2003](docs/InlineResponse2003.md)
 - [com.humorapi.client.model.InlineResponse2004](docs/InlineResponse2004.md)
 - [com.humorapi.client.model.InlineResponse2005](docs/InlineResponse2005.md)
 - [com.humorapi.client.model.InlineResponse2006](docs/InlineResponse2006.md)
 - [com.humorapi.client.model.InlineResponse2007](docs/InlineResponse2007.md)
 - [com.humorapi.client.model.InlineResponse2008](docs/InlineResponse2008.md)
 - [com.humorapi.client.model.InlineResponse2009](docs/InlineResponse2009.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="apiKey"></a>
### apiKey

- **Type**: API key
- **API key parameter name**: api-key
- **Location**: URL query string

