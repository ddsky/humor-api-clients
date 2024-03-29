# humorapi - Kotlin client library for Humor API

Awesome Humor API.

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 1.0
- Package version: 1.0.8
- Build package: org.openapitools.codegen.languages.KotlinClientCodegen
For more information, please visit [https://humorapi.com](https://humorapi.com)

## Requires

* Kotlin 1.7.21
* Gradle 7.5

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

<a id="documentation-for-api-endpoints"></a>
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


<a id="documentation-for-models"></a>
## Documentation for Models

 - [humorapi.models.AnalyzeJoke200Response](docs/AnalyzeJoke200Response.md)
 - [humorapi.models.GenerateNonsenseWord200Response](docs/GenerateNonsenseWord200Response.md)
 - [humorapi.models.Praise200Response](docs/Praise200Response.md)
 - [humorapi.models.RandomJoke200Response](docs/RandomJoke200Response.md)
 - [humorapi.models.RandomMeme200Response](docs/RandomMeme200Response.md)
 - [humorapi.models.RateWord200Response](docs/RateWord200Response.md)
 - [humorapi.models.SearchGifs200Response](docs/SearchGifs200Response.md)
 - [humorapi.models.SearchGifs200ResponseImagesInner](docs/SearchGifs200ResponseImagesInner.md)
 - [humorapi.models.SearchJokes200Response](docs/SearchJokes200Response.md)
 - [humorapi.models.SearchJokes200ResponseJokesInner](docs/SearchJokes200ResponseJokesInner.md)
 - [humorapi.models.SearchMemes200Response](docs/SearchMemes200Response.md)
 - [humorapi.models.SearchMemes200ResponseMemesInner](docs/SearchMemes200ResponseMemesInner.md)
 - [humorapi.models.SubmitJoke200Response](docs/SubmitJoke200Response.md)


<a id="documentation-for-authorization"></a>
## Documentation for Authorization


Authentication schemes defined for the API:
<a id="apiKey"></a>
### apiKey

- **Type**: API key
- **API key parameter name**: api-key
- **Location**: URL query string



## Author

mail@humorapi.com
