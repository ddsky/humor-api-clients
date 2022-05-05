/**
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

import com.humorapi.client.ApiInvoker;
import com.humorapi.client.ApiException;
import com.humorapi.client.Pair;

import com.humorapi.client.model.*;

import java.util.*;

import com.android.volley.Response;
import com.android.volley.VolleyError;

import java.math.BigDecimal;
import com.humorapi.client.model.InlineResponse2002;
import com.humorapi.client.model.InlineResponse2003;
import com.humorapi.client.model.InlineResponse2008;

import org.apache.http.HttpEntity;
import org.apache.http.entity.mime.MultipartEntityBuilder;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

public class MemesApi {
  String basePath = "https://api.humorapi.com";
  ApiInvoker apiInvoker = ApiInvoker.getInstance();

  public void addHeader(String key, String value) {
    getInvoker().addDefaultHeader(key, value);
  }

  public ApiInvoker getInvoker() {
    return apiInvoker;
  }

  public void setBasePath(String basePath) {
    this.basePath = basePath;
  }

  public String getBasePath() {
    return basePath;
  }

  /**
  * Downvote a Meme
  * Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
   * @param id The object&#39;s id.
   * @return InlineResponse2008
  */
  public InlineResponse2008 downvoteMeme (Integer id) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'id' is set
    if (id == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'id' when calling downvoteMeme",
        new ApiException(400, "Missing the required parameter 'id' when calling downvoteMeme"));
    }

    // create path and map variables
    String path = "/memes/{id}/downvote".replaceAll("\\{" + "id" + "\\}", apiInvoker.escapeString(id.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "apiKey" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "POST", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (InlineResponse2008) ApiInvoker.deserialize(localVarResponse, "", InlineResponse2008.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Downvote a Meme
   * Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
   * @param id The object&#39;s id.
  */
  public void downvoteMeme (Integer id, final Response.Listener<InlineResponse2008> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'id' is set
    if (id == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'id' when calling downvoteMeme",
        new ApiException(400, "Missing the required parameter 'id' when calling downvoteMeme"));
    }

    // create path and map variables
    String path = "/memes/{id}/downvote".replaceAll("\\{format\\}","json").replaceAll("\\{" + "id" + "\\}", apiInvoker.escapeString(id.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();



    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "apiKey" };

    try {
      apiInvoker.invokeAPI(basePath, path, "POST", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((InlineResponse2008) ApiInvoker.deserialize(localVarResponse,  "", InlineResponse2008.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Random Meme
  * Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
   * @param keywords A comma separated list of keywords.
   * @param keywordsInImage Whether the keywords should be found in the meme&#39;s image.
   * @param mediaType The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;.
   * @param number The number of results to retrieve between 1 and 10.
   * @param minRating The minimum rating between 0 and 10 the result should have.
   * @return InlineResponse2003
  */
  public InlineResponse2003 randomMeme (String keywords, Boolean keywordsInImage, String mediaType, Integer number, Integer minRating) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;

    // create path and map variables
    String path = "/memes/random";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "keywords", keywords));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "keywords-in-image", keywordsInImage));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "media-type", mediaType));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "number", number));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "min-rating", minRating));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "apiKey" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (InlineResponse2003) ApiInvoker.deserialize(localVarResponse, "", InlineResponse2003.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Random Meme
   * Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
   * @param keywords A comma separated list of keywords.   * @param keywordsInImage Whether the keywords should be found in the meme&#39;s image.   * @param mediaType The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;.   * @param number The number of results to retrieve between 1 and 10.   * @param minRating The minimum rating between 0 and 10 the result should have.
  */
  public void randomMeme (String keywords, Boolean keywordsInImage, String mediaType, Integer number, Integer minRating, final Response.Listener<InlineResponse2003> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;


    // create path and map variables
    String path = "/memes/random".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "keywords", keywords));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "keywords-in-image", keywordsInImage));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "media-type", mediaType));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "number", number));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "min-rating", minRating));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "apiKey" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((InlineResponse2003) ApiInvoker.deserialize(localVarResponse,  "", InlineResponse2003.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Search Memes
  * Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
   * @param keywords A comma separated list of keywords.
   * @param keywordsInImage Whether the keywords should be found in the meme&#39;s image.
   * @param mediaType The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;.
   * @param number The number of results to retrieve between 1 and 10.
   * @param minRating The minimum rating between 0 and 10 the result should have.
   * @param offset The number of results to skip.
   * @return InlineResponse2002
  */
  public InlineResponse2002 searchMemes (String keywords, Boolean keywordsInImage, String mediaType, Integer number, Integer minRating, BigDecimal offset) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;

    // create path and map variables
    String path = "/memes/search";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "keywords", keywords));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "keywords-in-image", keywordsInImage));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "media-type", mediaType));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "number", number));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "min-rating", minRating));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "offset", offset));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "apiKey" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (InlineResponse2002) ApiInvoker.deserialize(localVarResponse, "", InlineResponse2002.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Search Memes
   * Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
   * @param keywords A comma separated list of keywords.   * @param keywordsInImage Whether the keywords should be found in the meme&#39;s image.   * @param mediaType The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;.   * @param number The number of results to retrieve between 1 and 10.   * @param minRating The minimum rating between 0 and 10 the result should have.   * @param offset The number of results to skip.
  */
  public void searchMemes (String keywords, Boolean keywordsInImage, String mediaType, Integer number, Integer minRating, BigDecimal offset, final Response.Listener<InlineResponse2002> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;


    // create path and map variables
    String path = "/memes/search".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "keywords", keywords));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "keywords-in-image", keywordsInImage));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "media-type", mediaType));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "number", number));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "min-rating", minRating));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "offset", offset));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "apiKey" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((InlineResponse2002) ApiInvoker.deserialize(localVarResponse,  "", InlineResponse2002.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Upvote a Meme
  * Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
   * @param id The object&#39;s id.
   * @return InlineResponse2008
  */
  public InlineResponse2008 upvoteMeme (Integer id) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'id' is set
    if (id == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'id' when calling upvoteMeme",
        new ApiException(400, "Missing the required parameter 'id' when calling upvoteMeme"));
    }

    // create path and map variables
    String path = "/memes/{id}/upvote".replaceAll("\\{" + "id" + "\\}", apiInvoker.escapeString(id.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "apiKey" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "POST", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (InlineResponse2008) ApiInvoker.deserialize(localVarResponse, "", InlineResponse2008.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Upvote a Meme
   * Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
   * @param id The object&#39;s id.
  */
  public void upvoteMeme (Integer id, final Response.Listener<InlineResponse2008> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'id' is set
    if (id == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'id' when calling upvoteMeme",
        new ApiException(400, "Missing the required parameter 'id' when calling upvoteMeme"));
    }

    // create path and map variables
    String path = "/memes/{id}/upvote".replaceAll("\\{format\\}","json").replaceAll("\\{" + "id" + "\\}", apiInvoker.escapeString(id.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();



    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "apiKey" };

    try {
      apiInvoker.invokeAPI(basePath, path, "POST", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((InlineResponse2008) ApiInvoker.deserialize(localVarResponse,  "", InlineResponse2008.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
}
