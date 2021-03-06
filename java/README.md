# java-client

Humor API
- API version: 1.0
  - Build date: 2022-05-05T21:05:51.248+02:00[Europe/Berlin]

Awesome Humor API.

  For more information, please visit [https://humorapi.com](https://humorapi.com)

*Automatically generated by the [OpenAPI Generator](https://openapi-generator.tech)*


## Requirements

Building the API client library requires:
1. Java 1.8+
2. Maven (3.8.3+)/Gradle (7.2+)

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn clean install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn clean deploy
```

Refer to the [OSSRH Guide](http://central.sonatype.org/pages/ossrh-guide.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
  <groupId>com.humorapi</groupId>
  <artifactId>java-client</artifactId>
  <version>1.0</version>
  <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
  repositories {
    mavenCentral()     // Needed if the 'java-client' jar has been published to maven central.
    mavenLocal()       // Needed if the 'java-client' jar has been published to the local maven repo.
  }

  dependencies {
     implementation "com.humorapi:java-client:1.0"
  }
```

### Others

At first generate the JAR by executing:

```shell
mvn clean package
```

Then manually install the following JARs:

* `target/java-client-1.0.jar`
* `target/lib/*.jar`

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

// Import classes:
import com.humorapi.client.ApiClient;
import com.humorapi.client.ApiException;
import com.humorapi.client.Configuration;
import com.humorapi.client.auth.*;
import com.humorapi.client.models.*;
import com.humorapi.JokesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.humorapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    JokesApi apiInstance = new JokesApi(defaultClient);
    String body = "body_example"; // String | Post the joke as plain text.
    try {
      InlineResponse2009 result = apiInstance.analyzeJoke(body);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JokesApi#analyzeJoke");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
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

