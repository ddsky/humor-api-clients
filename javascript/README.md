# humor_api

HumorApi - JavaScript client for humor_api
Awesome Humor API.
This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Package version: 1.0
- Build package: org.openapitools.codegen.languages.JavascriptClientCodegen
For more information, please visit [https://humorapi.com](https://humorapi.com)

## Installation

### For [Node.js](https://nodejs.org/)

#### npm

To publish the library as a [npm](https://www.npmjs.com/), please follow the procedure in ["Publishing npm packages"](https://docs.npmjs.com/getting-started/publishing-npm-packages).

Then install it via:

```shell
npm install humor_api --save
```

Finally, you need to build the module:

```shell
npm run build
```

##### Local development

To use the library locally without publishing to a remote npm registry, first install the dependencies by changing into the directory containing `package.json` (and this README). Let's call this `JAVASCRIPT_CLIENT_DIR`. Then run:

```shell
npm install
```

Next, [link](https://docs.npmjs.com/cli/link) it globally in npm with the following, also from `JAVASCRIPT_CLIENT_DIR`:

```shell
npm link
```

To use the link you just defined in your project, switch to the directory you want to use your humor_api from, and run:

```shell
npm link /path/to/<JAVASCRIPT_CLIENT_DIR>
```

Finally, you need to build the module:

```shell
npm run build
```

#### git

If the library is hosted at a git repository, e.g.https://github.com/GIT_USER_ID/GIT_REPO_ID
then install it via:

```shell
    npm install GIT_USER_ID/GIT_REPO_ID --save
```

### For browser

The library also works in the browser environment via npm and [browserify](http://browserify.org/). After following
the above steps with Node.js and installing browserify with `npm install -g browserify`,
perform the following (assuming *main.js* is your entry file):

```shell
browserify main.js > bundle.js
```

Then include *bundle.js* in the HTML pages.

### Webpack Configuration

Using Webpack you may encounter the following error: "Module not found: Error:
Cannot resolve module", most certainly you should disable AMD loader. Add/merge
the following section to your webpack config:

```javascript
module: {
  rules: [
    {
      parser: {
        amd: false
      }
    }
  ]
}
```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following JS code:

```javascript
var HumorApi = require('humor_api');

var defaultClient = HumorApi.ApiClient.instance;
// Configure API key authorization: apiKey
var apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = "YOUR API KEY"
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix['api-key'] = "Token"

var api = new HumorApi.JokesApi()
var opts = {
  'body': "body_example" // {String} Post the joke as plain text.
};
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
api.analyzeJoke(opts, callback);

```

## Documentation for API Endpoints

All URIs are relative to *https://api.humorapi.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*HumorApi.JokesApi* | [**analyzeJoke**](docs/JokesApi.md#analyzeJoke) | **POST** /jokes/analyze | Analyze Joke
*HumorApi.JokesApi* | [**downvoteJoke**](docs/JokesApi.md#downvoteJoke) | **POST** /jokes/{id}/downvote | Downvote a Joke
*HumorApi.JokesApi* | [**randomJoke**](docs/JokesApi.md#randomJoke) | **GET** /jokes/random | Random Joke
*HumorApi.JokesApi* | [**searchJokes**](docs/JokesApi.md#searchJokes) | **GET** /jokes/search | Search Jokes
*HumorApi.JokesApi* | [**submitJoke**](docs/JokesApi.md#submitJoke) | **POST** /jokes | Submit Joke
*HumorApi.JokesApi* | [**upvoteJoke**](docs/JokesApi.md#upvoteJoke) | **POST** /jokes/{id}/upvote | Upvote a Joke
*HumorApi.MemesApi* | [**downvoteMeme**](docs/MemesApi.md#downvoteMeme) | **POST** /memes/{id}/downvote | Downvote a Meme
*HumorApi.MemesApi* | [**randomMeme**](docs/MemesApi.md#randomMeme) | **GET** /memes/random | Random Meme
*HumorApi.MemesApi* | [**searchMemes**](docs/MemesApi.md#searchMemes) | **GET** /memes/search | Search Memes
*HumorApi.MemesApi* | [**upvoteMeme**](docs/MemesApi.md#upvoteMeme) | **POST** /memes/{id}/upvote | Upvote a Meme
*HumorApi.OtherApi* | [**generateNonsenseWord**](docs/OtherApi.md#generateNonsenseWord) | **GET** /words/nonsense/random | Generate Nonsense Word
*HumorApi.OtherApi* | [**insult**](docs/OtherApi.md#insult) | **GET** /insult | Insult
*HumorApi.OtherApi* | [**praise**](docs/OtherApi.md#praise) | **GET** /praise | Praise
*HumorApi.OtherApi* | [**rateWord**](docs/OtherApi.md#rateWord) | **GET** /words/rate | Rate Word
*HumorApi.OtherApi* | [**searchGifs**](docs/OtherApi.md#searchGifs) | **GET** /gif/search | Search Gifs


## Documentation for Models

 - [HumorApi.InlineResponse200](docs/InlineResponse200.md)
 - [HumorApi.InlineResponse2001](docs/InlineResponse2001.md)
 - [HumorApi.InlineResponse2002](docs/InlineResponse2002.md)
 - [HumorApi.InlineResponse2003](docs/InlineResponse2003.md)
 - [HumorApi.InlineResponse2004](docs/InlineResponse2004.md)
 - [HumorApi.InlineResponse2005](docs/InlineResponse2005.md)
 - [HumorApi.InlineResponse2006](docs/InlineResponse2006.md)
 - [HumorApi.InlineResponse2007](docs/InlineResponse2007.md)
 - [HumorApi.InlineResponse2008](docs/InlineResponse2008.md)
 - [HumorApi.InlineResponse2009](docs/InlineResponse2009.md)


## Documentation for Authorization



### apiKey


- **Type**: API key
- **API key parameter name**: api-key
- **Location**: URL query string

