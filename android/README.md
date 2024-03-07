# android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>com.humorapi</groupId>
    <artifactId>android-client</artifactId>
    <version>1.0.8</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "com.humorapi:android-client:1.0.8"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/android-client-1.0.8.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import org.openapitools.client.api.JokesApi;

public class JokesApiExample {

    public static void main(String[] args) {
        JokesApi apiInstance = new JokesApi();
        String body = "body_example"; // String | Post the joke as plain text.
        try {
            AnalyzeJoke200Response result = apiInstance.analyzeJoke(body);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling JokesApi#analyzeJoke");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.humorapi.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*JokesApi* | [**analyzeJoke**](docs/JokesApi.md#analyzeJoke) | **POST** /jokes/analyze | Analyze Joke
*JokesApi* | [**downvoteJoke**](docs/JokesApi.md#downvoteJoke) | **POST** /jokes/{id}/downvote | Downvote a Joke
*JokesApi* | [**randomJoke**](docs/JokesApi.md#randomJoke) | **GET** /jokes/random | Random Joke
*JokesApi* | [**searchJokes**](docs/JokesApi.md#searchJokes) | **GET** /jokes/search | Search Jokes
*JokesApi* | [**submitJoke**](docs/JokesApi.md#submitJoke) | **POST** /jokes | Submit Joke
*JokesApi* | [**upvoteJoke**](docs/JokesApi.md#upvoteJoke) | **POST** /jokes/{id}/upvote | Upvote a Joke
*MemesApi* | [**downvoteMeme**](docs/MemesApi.md#downvoteMeme) | **POST** /memes/{id}/downvote | Downvote a Meme
*MemesApi* | [**randomMeme**](docs/MemesApi.md#randomMeme) | **GET** /memes/random | Random Meme
*MemesApi* | [**searchMemes**](docs/MemesApi.md#searchMemes) | **GET** /memes/search | Search Memes
*MemesApi* | [**upvoteMeme**](docs/MemesApi.md#upvoteMeme) | **POST** /memes/{id}/upvote | Upvote a Meme
*OtherApi* | [**generateNonsenseWord**](docs/OtherApi.md#generateNonsenseWord) | **GET** /words/nonsense/random | Generate Nonsense Word
*OtherApi* | [**insult**](docs/OtherApi.md#insult) | **GET** /insult | Insult
*OtherApi* | [**praise**](docs/OtherApi.md#praise) | **GET** /praise | Praise
*OtherApi* | [**rateWord**](docs/OtherApi.md#rateWord) | **GET** /words/rate | Rate Word
*OtherApi* | [**searchGifs**](docs/OtherApi.md#searchGifs) | **GET** /gif/search | Search Gifs


## Documentation for Models

 - [AnalyzeJoke200Response](docs/AnalyzeJoke200Response.md)
 - [GenerateNonsenseWord200Response](docs/GenerateNonsenseWord200Response.md)
 - [Praise200Response](docs/Praise200Response.md)
 - [RandomJoke200Response](docs/RandomJoke200Response.md)
 - [RandomMeme200Response](docs/RandomMeme200Response.md)
 - [RateWord200Response](docs/RateWord200Response.md)
 - [SearchGifs200Response](docs/SearchGifs200Response.md)
 - [SearchGifs200ResponseImagesInner](docs/SearchGifs200ResponseImagesInner.md)
 - [SearchJokes200Response](docs/SearchJokes200Response.md)
 - [SearchJokes200ResponseJokesInner](docs/SearchJokes200ResponseJokesInner.md)
 - [SearchMemes200Response](docs/SearchMemes200Response.md)
 - [SearchMemes200ResponseMemesInner](docs/SearchMemes200ResponseMemesInner.md)
 - [SubmitJoke200Response](docs/SubmitJoke200Response.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### apiKey

- **Type**: API key

- **API key parameter name**: api-key
- **Location**: URL query string


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

mail@humorapi.com

