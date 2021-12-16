/*
 * Humor API
 * Awesome Humor API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@humorapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.humorapi;

import com.humorapi.client.ApiCallback;
import com.humorapi.client.ApiClient;
import com.humorapi.client.ApiException;
import com.humorapi.client.ApiResponse;
import com.humorapi.client.Configuration;
import com.humorapi.client.Pair;
import com.humorapi.client.ProgressRequestBody;
import com.humorapi.client.ProgressResponseBody;

import com.google.gson.reflect.TypeToken;

import java.io.IOException;


import java.math.BigDecimal;
import com.humorapi.client.model.InlineResponse2002;
import com.humorapi.client.model.InlineResponse2003;
import com.humorapi.client.model.InlineResponse2008;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MemesApi {
    private ApiClient localVarApiClient;

    public MemesApi() {
        this(Configuration.getDefaultApiClient());
    }

    public MemesApi(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return localVarApiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    /**
     * Build call for downvoteMeme
     * @param id The object&#39;s id. (required)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public okhttp3.Call downvoteMemeCall(Integer id, final ApiCallback _callback) throws ApiException {
        Object localVarPostBody = new Object();

        // create path and map variables
        String localVarPath = "/memes/{id}/downvote"
            .replaceAll("\\{" + "id" + "\\}", localVarApiClient.escapeString(id.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();
        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        String[] localVarAuthNames = new String[] { "apiKey" };
        return localVarApiClient.buildCall(localVarPath, "POST", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call downvoteMemeValidateBeforeCall(Integer id, final ApiCallback _callback) throws ApiException {
        
        // verify the required parameter 'id' is set
        if (id == null) {
            throw new ApiException("Missing the required parameter 'id' when calling downvoteMeme(Async)");
        }
        

        okhttp3.Call localVarCall = downvoteMemeCall(id, _callback);
        return localVarCall;

    }

    /**
     * Downvote a Meme
     * Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
     * @param id The object&#39;s id. (required)
     * @return InlineResponse2008
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public InlineResponse2008 downvoteMeme(Integer id) throws ApiException {
        ApiResponse<InlineResponse2008> localVarResp = downvoteMemeWithHttpInfo(id);
        return localVarResp.getData();
    }

    /**
     * Downvote a Meme
     * Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
     * @param id The object&#39;s id. (required)
     * @return ApiResponse&lt;InlineResponse2008&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<InlineResponse2008> downvoteMemeWithHttpInfo(Integer id) throws ApiException {
        okhttp3.Call localVarCall = downvoteMemeValidateBeforeCall(id, null);
        Type localVarReturnType = new TypeToken<InlineResponse2008>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Downvote a Meme (asynchronously)
     * Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
     * @param id The object&#39;s id. (required)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public okhttp3.Call downvoteMemeAsync(Integer id, final ApiCallback<InlineResponse2008> _callback) throws ApiException {

        okhttp3.Call localVarCall = downvoteMemeValidateBeforeCall(id, _callback);
        Type localVarReturnType = new TypeToken<InlineResponse2008>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for randomMeme
     * @param keywords A comma separated list of keywords. (optional)
     * @param keywordsInImage Whether the keywords should be found in the meme&#39;s image. (optional)
     * @param mediaType The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. (optional)
     * @param number The number of results to retrieve between 1 and 10. (optional)
     * @param minRating The minimum rating between 0 and 10 the result should have. (optional)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public okhttp3.Call randomMemeCall(String keywords, Boolean keywordsInImage, String mediaType, Integer number, Integer minRating, final ApiCallback _callback) throws ApiException {
        Object localVarPostBody = new Object();

        // create path and map variables
        String localVarPath = "/memes/random";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        if (keywords != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("keywords", keywords));
        }

        if (keywordsInImage != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("keywords-in-image", keywordsInImage));
        }

        if (mediaType != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("media-type", mediaType));
        }

        if (number != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("number", number));
        }

        if (minRating != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("min-rating", minRating));
        }

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();
        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        String[] localVarAuthNames = new String[] { "apiKey" };
        return localVarApiClient.buildCall(localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call randomMemeValidateBeforeCall(String keywords, Boolean keywordsInImage, String mediaType, Integer number, Integer minRating, final ApiCallback _callback) throws ApiException {
        

        okhttp3.Call localVarCall = randomMemeCall(keywords, keywordsInImage, mediaType, number, minRating, _callback);
        return localVarCall;

    }

    /**
     * Random Meme
     * Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
     * @param keywords A comma separated list of keywords. (optional)
     * @param keywordsInImage Whether the keywords should be found in the meme&#39;s image. (optional)
     * @param mediaType The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. (optional)
     * @param number The number of results to retrieve between 1 and 10. (optional)
     * @param minRating The minimum rating between 0 and 10 the result should have. (optional)
     * @return InlineResponse2003
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public InlineResponse2003 randomMeme(String keywords, Boolean keywordsInImage, String mediaType, Integer number, Integer minRating) throws ApiException {
        ApiResponse<InlineResponse2003> localVarResp = randomMemeWithHttpInfo(keywords, keywordsInImage, mediaType, number, minRating);
        return localVarResp.getData();
    }

    /**
     * Random Meme
     * Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
     * @param keywords A comma separated list of keywords. (optional)
     * @param keywordsInImage Whether the keywords should be found in the meme&#39;s image. (optional)
     * @param mediaType The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. (optional)
     * @param number The number of results to retrieve between 1 and 10. (optional)
     * @param minRating The minimum rating between 0 and 10 the result should have. (optional)
     * @return ApiResponse&lt;InlineResponse2003&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<InlineResponse2003> randomMemeWithHttpInfo(String keywords, Boolean keywordsInImage, String mediaType, Integer number, Integer minRating) throws ApiException {
        okhttp3.Call localVarCall = randomMemeValidateBeforeCall(keywords, keywordsInImage, mediaType, number, minRating, null);
        Type localVarReturnType = new TypeToken<InlineResponse2003>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Random Meme (asynchronously)
     * Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
     * @param keywords A comma separated list of keywords. (optional)
     * @param keywordsInImage Whether the keywords should be found in the meme&#39;s image. (optional)
     * @param mediaType The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. (optional)
     * @param number The number of results to retrieve between 1 and 10. (optional)
     * @param minRating The minimum rating between 0 and 10 the result should have. (optional)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public okhttp3.Call randomMemeAsync(String keywords, Boolean keywordsInImage, String mediaType, Integer number, Integer minRating, final ApiCallback<InlineResponse2003> _callback) throws ApiException {

        okhttp3.Call localVarCall = randomMemeValidateBeforeCall(keywords, keywordsInImage, mediaType, number, minRating, _callback);
        Type localVarReturnType = new TypeToken<InlineResponse2003>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for searchMemes
     * @param keywords A comma separated list of keywords. (optional)
     * @param keywordsInImage Whether the keywords should be found in the meme&#39;s image. (optional)
     * @param mediaType The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. (optional)
     * @param number The number of results to retrieve between 1 and 10. (optional)
     * @param minRating The minimum rating between 0 and 10 the result should have. (optional)
     * @param offset The number of results to skip. (optional)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public okhttp3.Call searchMemesCall(String keywords, Boolean keywordsInImage, String mediaType, Integer number, Integer minRating, BigDecimal offset, final ApiCallback _callback) throws ApiException {
        Object localVarPostBody = new Object();

        // create path and map variables
        String localVarPath = "/memes/search";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        if (keywords != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("keywords", keywords));
        }

        if (keywordsInImage != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("keywords-in-image", keywordsInImage));
        }

        if (mediaType != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("media-type", mediaType));
        }

        if (number != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("number", number));
        }

        if (minRating != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("min-rating", minRating));
        }

        if (offset != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("offset", offset));
        }

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();
        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        String[] localVarAuthNames = new String[] { "apiKey" };
        return localVarApiClient.buildCall(localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call searchMemesValidateBeforeCall(String keywords, Boolean keywordsInImage, String mediaType, Integer number, Integer minRating, BigDecimal offset, final ApiCallback _callback) throws ApiException {
        

        okhttp3.Call localVarCall = searchMemesCall(keywords, keywordsInImage, mediaType, number, minRating, offset, _callback);
        return localVarCall;

    }

    /**
     * Search Memes
     * Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
     * @param keywords A comma separated list of keywords. (optional)
     * @param keywordsInImage Whether the keywords should be found in the meme&#39;s image. (optional)
     * @param mediaType The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. (optional)
     * @param number The number of results to retrieve between 1 and 10. (optional)
     * @param minRating The minimum rating between 0 and 10 the result should have. (optional)
     * @param offset The number of results to skip. (optional)
     * @return InlineResponse2002
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public InlineResponse2002 searchMemes(String keywords, Boolean keywordsInImage, String mediaType, Integer number, Integer minRating, BigDecimal offset) throws ApiException {
        ApiResponse<InlineResponse2002> localVarResp = searchMemesWithHttpInfo(keywords, keywordsInImage, mediaType, number, minRating, offset);
        return localVarResp.getData();
    }

    /**
     * Search Memes
     * Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
     * @param keywords A comma separated list of keywords. (optional)
     * @param keywordsInImage Whether the keywords should be found in the meme&#39;s image. (optional)
     * @param mediaType The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. (optional)
     * @param number The number of results to retrieve between 1 and 10. (optional)
     * @param minRating The minimum rating between 0 and 10 the result should have. (optional)
     * @param offset The number of results to skip. (optional)
     * @return ApiResponse&lt;InlineResponse2002&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<InlineResponse2002> searchMemesWithHttpInfo(String keywords, Boolean keywordsInImage, String mediaType, Integer number, Integer minRating, BigDecimal offset) throws ApiException {
        okhttp3.Call localVarCall = searchMemesValidateBeforeCall(keywords, keywordsInImage, mediaType, number, minRating, offset, null);
        Type localVarReturnType = new TypeToken<InlineResponse2002>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Search Memes (asynchronously)
     * Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
     * @param keywords A comma separated list of keywords. (optional)
     * @param keywordsInImage Whether the keywords should be found in the meme&#39;s image. (optional)
     * @param mediaType The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. (optional)
     * @param number The number of results to retrieve between 1 and 10. (optional)
     * @param minRating The minimum rating between 0 and 10 the result should have. (optional)
     * @param offset The number of results to skip. (optional)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public okhttp3.Call searchMemesAsync(String keywords, Boolean keywordsInImage, String mediaType, Integer number, Integer minRating, BigDecimal offset, final ApiCallback<InlineResponse2002> _callback) throws ApiException {

        okhttp3.Call localVarCall = searchMemesValidateBeforeCall(keywords, keywordsInImage, mediaType, number, minRating, offset, _callback);
        Type localVarReturnType = new TypeToken<InlineResponse2002>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for upvoteMeme
     * @param id The object&#39;s id. (required)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public okhttp3.Call upvoteMemeCall(Integer id, final ApiCallback _callback) throws ApiException {
        Object localVarPostBody = new Object();

        // create path and map variables
        String localVarPath = "/memes/{id}/upvote"
            .replaceAll("\\{" + "id" + "\\}", localVarApiClient.escapeString(id.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();
        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        String[] localVarAuthNames = new String[] { "apiKey" };
        return localVarApiClient.buildCall(localVarPath, "POST", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call upvoteMemeValidateBeforeCall(Integer id, final ApiCallback _callback) throws ApiException {
        
        // verify the required parameter 'id' is set
        if (id == null) {
            throw new ApiException("Missing the required parameter 'id' when calling upvoteMeme(Async)");
        }
        

        okhttp3.Call localVarCall = upvoteMemeCall(id, _callback);
        return localVarCall;

    }

    /**
     * Upvote a Meme
     * Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
     * @param id The object&#39;s id. (required)
     * @return InlineResponse2008
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public InlineResponse2008 upvoteMeme(Integer id) throws ApiException {
        ApiResponse<InlineResponse2008> localVarResp = upvoteMemeWithHttpInfo(id);
        return localVarResp.getData();
    }

    /**
     * Upvote a Meme
     * Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
     * @param id The object&#39;s id. (required)
     * @return ApiResponse&lt;InlineResponse2008&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<InlineResponse2008> upvoteMemeWithHttpInfo(Integer id) throws ApiException {
        okhttp3.Call localVarCall = upvoteMemeValidateBeforeCall(id, null);
        Type localVarReturnType = new TypeToken<InlineResponse2008>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Upvote a Meme (asynchronously)
     * Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
     * @param id The object&#39;s id. (required)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public okhttp3.Call upvoteMemeAsync(Integer id, final ApiCallback<InlineResponse2008> _callback) throws ApiException {

        okhttp3.Call localVarCall = upvoteMemeValidateBeforeCall(id, _callback);
        Type localVarReturnType = new TypeToken<InlineResponse2008>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
}
