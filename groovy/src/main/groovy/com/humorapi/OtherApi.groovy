package com.humorapi;

import com.humorapi.client.ApiUtils
import com.humorapi.client.model.InlineResponse2001
import com.humorapi.client.model.InlineResponse2005
import com.humorapi.client.model.InlineResponse2006
import com.humorapi.client.model.InlineResponse2007

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
                    InlineResponse2007.class )

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
                    InlineResponse2005.class )

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
                    InlineResponse2005.class )

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
                    InlineResponse2006.class )

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
                    InlineResponse2001.class )

    }

}
