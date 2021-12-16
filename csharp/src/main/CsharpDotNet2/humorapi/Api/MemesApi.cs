using System;
using System.Collections.Generic;
using RestSharp;
using Org.OpenAPITools.Client;
using com.humorapi.client.model;

namespace com.humorapi
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IMemesApi
    {
        /// <summary>
        /// Downvote a Meme Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
        /// </summary>
        /// <param name="id">The object&#39;s id.</param>
        /// <returns>InlineResponse2008</returns>
        InlineResponse2008 DownvoteMeme (int? id);
        /// <summary>
        /// Random Meme Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
        /// </summary>
        /// <param name="keywords">A comma separated list of keywords.</param>
        /// <param name="keywordsInImage">Whether the keywords should be found in the meme&#39;s image.</param>
        /// <param name="mediaType">The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;.</param>
        /// <param name="number">The number of results to retrieve between 1 and 10.</param>
        /// <param name="minRating">The minimum rating between 0 and 10 the result should have.</param>
        /// <returns>InlineResponse2003</returns>
        InlineResponse2003 RandomMeme (string keywords, bool? keywordsInImage, string mediaType, int? number, int? minRating);
        /// <summary>
        /// Search Memes Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
        /// </summary>
        /// <param name="keywords">A comma separated list of keywords.</param>
        /// <param name="keywordsInImage">Whether the keywords should be found in the meme&#39;s image.</param>
        /// <param name="mediaType">The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;.</param>
        /// <param name="number">The number of results to retrieve between 1 and 10.</param>
        /// <param name="minRating">The minimum rating between 0 and 10 the result should have.</param>
        /// <param name="offset">The number of results to skip.</param>
        /// <returns>InlineResponse2002</returns>
        InlineResponse2002 SearchMemes (string keywords, bool? keywordsInImage, string mediaType, int? number, int? minRating, decimal? offset);
        /// <summary>
        /// Upvote a Meme Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
        /// </summary>
        /// <param name="id">The object&#39;s id.</param>
        /// <returns>InlineResponse2008</returns>
        InlineResponse2008 UpvoteMeme (int? id);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class MemesApi : IMemesApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="MemesApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public MemesApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="MemesApi"/> class.
        /// </summary>
        /// <returns></returns>
        public MemesApi(String basePath)
        {
            this.ApiClient = new ApiClient(basePath);
        }
    
        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public void SetBasePath(String basePath)
        {
            this.ApiClient.BasePath = basePath;
        }
    
        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public String GetBasePath(String basePath)
        {
            return this.ApiClient.BasePath;
        }
    
        /// <summary>
        /// Gets or sets the API client.
        /// </summary>
        /// <value>An instance of the ApiClient</value>
        public ApiClient ApiClient {get; set;}
    
        /// <summary>
        /// Downvote a Meme Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
        /// </summary>
        /// <param name="id">The object&#39;s id.</param> 
        /// <returns>InlineResponse2008</returns>            
        public InlineResponse2008 DownvoteMeme (int? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling DownvoteMeme");
            
    
            var path = "/memes/{id}/downvote";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DownvoteMeme: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DownvoteMeme: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse2008) ApiClient.Deserialize(response.Content, typeof(InlineResponse2008), response.Headers);
        }
    
        /// <summary>
        /// Random Meme Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
        /// </summary>
        /// <param name="keywords">A comma separated list of keywords.</param> 
        /// <param name="keywordsInImage">Whether the keywords should be found in the meme&#39;s image.</param> 
        /// <param name="mediaType">The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;.</param> 
        /// <param name="number">The number of results to retrieve between 1 and 10.</param> 
        /// <param name="minRating">The minimum rating between 0 and 10 the result should have.</param> 
        /// <returns>InlineResponse2003</returns>            
        public InlineResponse2003 RandomMeme (string keywords, bool? keywordsInImage, string mediaType, int? number, int? minRating)
        {
            
    
            var path = "/memes/random";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (keywords != null) queryParams.Add("keywords", ApiClient.ParameterToString(keywords)); // query parameter
 if (keywordsInImage != null) queryParams.Add("keywords-in-image", ApiClient.ParameterToString(keywordsInImage)); // query parameter
 if (mediaType != null) queryParams.Add("media-type", ApiClient.ParameterToString(mediaType)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
 if (minRating != null) queryParams.Add("min-rating", ApiClient.ParameterToString(minRating)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling RandomMeme: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling RandomMeme: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse2003) ApiClient.Deserialize(response.Content, typeof(InlineResponse2003), response.Headers);
        }
    
        /// <summary>
        /// Search Memes Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
        /// </summary>
        /// <param name="keywords">A comma separated list of keywords.</param> 
        /// <param name="keywordsInImage">Whether the keywords should be found in the meme&#39;s image.</param> 
        /// <param name="mediaType">The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;.</param> 
        /// <param name="number">The number of results to retrieve between 1 and 10.</param> 
        /// <param name="minRating">The minimum rating between 0 and 10 the result should have.</param> 
        /// <param name="offset">The number of results to skip.</param> 
        /// <returns>InlineResponse2002</returns>            
        public InlineResponse2002 SearchMemes (string keywords, bool? keywordsInImage, string mediaType, int? number, int? minRating, decimal? offset)
        {
            
    
            var path = "/memes/search";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (keywords != null) queryParams.Add("keywords", ApiClient.ParameterToString(keywords)); // query parameter
 if (keywordsInImage != null) queryParams.Add("keywords-in-image", ApiClient.ParameterToString(keywordsInImage)); // query parameter
 if (mediaType != null) queryParams.Add("media-type", ApiClient.ParameterToString(mediaType)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
 if (minRating != null) queryParams.Add("min-rating", ApiClient.ParameterToString(minRating)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchMemes: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchMemes: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse2002) ApiClient.Deserialize(response.Content, typeof(InlineResponse2002), response.Headers);
        }
    
        /// <summary>
        /// Upvote a Meme Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
        /// </summary>
        /// <param name="id">The object&#39;s id.</param> 
        /// <returns>InlineResponse2008</returns>            
        public InlineResponse2008 UpvoteMeme (int? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling UpvoteMeme");
            
    
            var path = "/memes/{id}/upvote";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling UpvoteMeme: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpvoteMeme: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse2008) ApiClient.Deserialize(response.Content, typeof(InlineResponse2008), response.Headers);
        }
    
    }
}
