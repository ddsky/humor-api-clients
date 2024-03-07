package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.GenerateNonsenseWord200Response
import org.openapitools.model.Praise200Response
import org.openapitools.model.RateWord200Response
import org.openapitools.model.SearchGifs200Response

class OtherApi {
    String basePath = "https://api.humorapi.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def generateNonsenseWord ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/words/nonsense/random"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GenerateNonsenseWord200Response.class )

    }

    def insult ( String name, String reason, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/insult"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }
        // verify required params are set
        if (reason == null) {
            throw new RuntimeException("missing required params reason")
        }

        if (name != null) {
            queryParams.put("name", name)
        }
        if (reason != null) {
            queryParams.put("reason", reason)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Praise200Response.class )

    }

    def praise ( String name, String reason, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/praise"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }
        // verify required params are set
        if (reason == null) {
            throw new RuntimeException("missing required params reason")
        }

        if (name != null) {
            queryParams.put("name", name)
        }
        if (reason != null) {
            queryParams.put("reason", reason)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Praise200Response.class )

    }

    def rateWord ( String word, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/words/rate"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (word == null) {
            throw new RuntimeException("missing required params word")
        }

        if (word != null) {
            queryParams.put("word", word)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RateWord200Response.class )

    }

    def searchGifs ( String query, Integer number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/gif/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (query == null) {
            throw new RuntimeException("missing required params query")
        }

        if (query != null) {
            queryParams.put("query", query)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SearchGifs200Response.class )

    }

}
