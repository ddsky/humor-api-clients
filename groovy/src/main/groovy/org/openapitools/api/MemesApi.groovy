package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.RandomMeme200Response
import org.openapitools.model.SearchMemes200Response
import org.openapitools.model.SubmitJoke200Response

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
                    SubmitJoke200Response.class )

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
                    RandomMeme200Response.class )

    }

    def searchMemes ( String keywords, Boolean keywordsInImage, String mediaType, Integer number, Integer minRating, BigDecimal offset, Closure onSuccess, Closure onFailure)  {
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
        if (offset != null) {
            queryParams.put("offset", offset)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SearchMemes200Response.class )

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
                    SubmitJoke200Response.class )

    }

}
