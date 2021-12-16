package com.humorapi;

import com.humorapi.client.ApiUtils
import java.math.BigDecimal
import com.humorapi.client.model.InlineResponse200
import com.humorapi.client.model.InlineResponse2004
import com.humorapi.client.model.InlineResponse2008
import com.humorapi.client.model.InlineResponse2009

class JokesApi {
    String basePath = "https://api.humorapi.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def analyzeJoke ( String body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/jokes/analyze"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType




        contentType = 'text/plain';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    InlineResponse2009.class )

    }

    def downvoteJoke ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/jokes/${id}/downvote"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    InlineResponse2008.class )

    }

    def randomJoke ( String keywords, String includeTags, String excludeTags, Integer minRating, Integer maxLength, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/jokes/random"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (keywords != null) {
            queryParams.put("keywords", keywords)
        }
        if (includeTags != null) {
            queryParams.put("include-tags", includeTags)
        }
        if (excludeTags != null) {
            queryParams.put("exclude-tags", excludeTags)
        }
        if (minRating != null) {
            queryParams.put("min-rating", minRating)
        }
        if (maxLength != null) {
            queryParams.put("max-length", maxLength)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse2004.class )

    }

    def searchJokes ( String keywords, String includeTags, String excludeTags, Integer number, Integer minRating, Integer maxLength, BigDecimal offset, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/jokes/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (keywords != null) {
            queryParams.put("keywords", keywords)
        }
        if (includeTags != null) {
            queryParams.put("include-tags", includeTags)
        }
        if (excludeTags != null) {
            queryParams.put("exclude-tags", excludeTags)
        }
        if (number != null) {
            queryParams.put("number", number)
        }
        if (minRating != null) {
            queryParams.put("min-rating", minRating)
        }
        if (maxLength != null) {
            queryParams.put("max-length", maxLength)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse200.class )

    }

    def submitJoke ( String body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/jokes"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType




        contentType = 'text/plain';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    InlineResponse2008.class )

    }

    def upvoteJoke ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/jokes/${id}/upvote"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    InlineResponse2008.class )

    }

}
