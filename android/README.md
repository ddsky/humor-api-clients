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
    <version>1.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "com.humorapi:android-client:1.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/android-client-1.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import com.humorapi.JokesApi;

public class JokesApiExample {

    public static void main(String[] args) {
        JokesApi apiInstance = new JokesApi();
        String body = "body_example"; // String | Post the joke as plain text.
        try {
            InlineResponse2009 result = apiInstance.analyzeJoke(body);
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

 - [InlineResponse200](docs/InlineResponse200.md)
 - [InlineResponse2001](docs/InlineResponse2001.md)
 - [InlineResponse2002](docs/InlineResponse2002.md)
 - [InlineResponse2003](docs/InlineResponse2003.md)
 - [InlineResponse2004](docs/InlineResponse2004.md)
 - [InlineResponse2005](docs/InlineResponse2005.md)
 - [InlineResponse2006](docs/InlineResponse2006.md)
 - [InlineResponse2007](docs/InlineResponse2007.md)
 - [InlineResponse2008](docs/InlineResponse2008.md)
 - [InlineResponse2009](docs/InlineResponse2009.md)


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

