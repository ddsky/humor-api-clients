package com.humorapi;

import com.humorapi.client.ApiUtils
import com.humorapi.client.model.InlineResponse2002
import com.humorapi.client.model.InlineResponse2003
import com.humorapi.client.model.InlineResponse2008

class MemesApi {
    String basePath = "https://api.humorapi.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def downvoteMeme ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/memes/${id}/downvote"

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

    def randomMeme ( String keywords, Boolean keywordsInImage, String mediaType, Integer number, Integer minRating, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/memes/random"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (keywords != null) {
            queryParams.put("keywords", keywords)
        }
        if (keywordsInImage != null) {
            queryParams.put("keywords-in-image", keywordsInImage)
        }
        if (mediaType != null) {
            queryParams.put("media-type", mediaType)
        }
        if (number != null) {
            queryParams.put("number", number)
        }
        if (minRating != null) {
            queryParams.put("min-rating", minRating)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse2003.class )

    }

    def searchMemes ( String keywords, Boolean keywordsInImage, String mediaType, Integer number, Integer minRating, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/memes/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (keywords != null) {
            queryParams.put("keywords", keywords)
        }
        if (keywordsInImage != null) {
            queryParams.put("keywords-in-image", keywordsInImage)
        }
        if (mediaType != null) {
            queryParams.put("media-type", mediaType)
        }
        if (number != null) {
            queryParams.put("number", number)
        }
        if (minRating != null) {
            queryParams.put("min-rating", minRating)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse2002.class )

    }

    def upvoteMeme ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/memes/${id}/upvote"

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
