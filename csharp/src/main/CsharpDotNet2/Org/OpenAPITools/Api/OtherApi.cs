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
    public interface IOtherApi
    {
        /// <summary>
        /// Generate Nonsense Word Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.
        /// </summary>
        /// <returns>InlineResponse2007</returns>
        InlineResponse2007 GenerateNonsenseWord ();
        /// <summary>
        /// Insult Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.
        /// </summary>
        /// <param name="name">The person&#39;s name.</param>
        /// <param name="reason">The reason for the praise/insult.</param>
        /// <returns>InlineResponse2005</returns>
        InlineResponse2005 Insult (string name, string reason);
        /// <summary>
        /// Praise Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.
        /// </summary>
        /// <param name="name">The person&#39;s name.</param>
        /// <param name="reason">The reason for the praise/insult.</param>
        /// <returns>InlineResponse2005</returns>
        InlineResponse2005 Praise (string name, string reason);
        /// <summary>
        /// Rate Word Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.
        /// </summary>
        /// <param name="word">The word to be rated.</param>
        /// <returns>InlineResponse2006</returns>
        InlineResponse2006 RateWord (string word);
        /// <summary>
        /// Search Gifs Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.
        /// </summary>
        /// <param name="query">A search query.</param>
        /// <param name="number">The number of results to retrieve between 1 and 10.</param>
        /// <returns>InlineResponse2001</returns>
        InlineResponse2001 SearchGifs (string query, int? number);
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class OtherApi : IOtherApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="OtherApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public OtherApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient;
            else
                this.ApiClient = apiClient;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="OtherApi"/> class.
        /// </summary>
        /// <returns></returns>
        public OtherApi(String basePath)
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
        /// Generate Nonsense Word Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.
        /// </summary>
        /// <returns>InlineResponse2007</returns>
        public InlineResponse2007 GenerateNonsenseWord ()
        {
            

            var path = "/words/nonsense/random";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GenerateNonsenseWord: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GenerateNonsenseWord: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2007) ApiClient.Deserialize(response.Content, typeof(InlineResponse2007), response.Headers);
        }

        /// <summary>
        /// Insult Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.
        /// </summary>
        /// <param name="name">The person&#39;s name.</param>
        /// <param name="reason">The reason for the praise/insult.</param>
        /// <returns>InlineResponse2005</returns>
        public InlineResponse2005 Insult (string name, string reason)
        {
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling Insult");
            
            // verify the required parameter 'reason' is set
            if (reason == null) throw new ApiException(400, "Missing required parameter 'reason' when calling Insult");
            

            var path = "/insult";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (name != null) queryParams.Add("name", ApiClient.ParameterToString(name)); // query parameter
 if (reason != null) queryParams.Add("reason", ApiClient.ParameterToString(reason)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling Insult: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling Insult: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2005) ApiClient.Deserialize(response.Content, typeof(InlineResponse2005), response.Headers);
        }

        /// <summary>
        /// Praise Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.
        /// </summary>
        /// <param name="name">The person&#39;s name.</param>
        /// <param name="reason">The reason for the praise/insult.</param>
        /// <returns>InlineResponse2005</returns>
        public InlineResponse2005 Praise (string name, string reason)
        {
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling Praise");
            
            // verify the required parameter 'reason' is set
            if (reason == null) throw new ApiException(400, "Missing required parameter 'reason' when calling Praise");
            

            var path = "/praise";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (name != null) queryParams.Add("name", ApiClient.ParameterToString(name)); // query parameter
 if (reason != null) queryParams.Add("reason", ApiClient.ParameterToString(reason)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling Praise: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling Praise: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2005) ApiClient.Deserialize(response.Content, typeof(InlineResponse2005), response.Headers);
        }

        /// <summary>
        /// Rate Word Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.
        /// </summary>
        /// <param name="word">The word to be rated.</param>
        /// <returns>InlineResponse2006</returns>
        public InlineResponse2006 RateWord (string word)
        {
            
            // verify the required parameter 'word' is set
            if (word == null) throw new ApiException(400, "Missing required parameter 'word' when calling RateWord");
            

            var path = "/words/rate";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (word != null) queryParams.Add("word", ApiClient.ParameterToString(word)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling RateWord: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling RateWord: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2006) ApiClient.Deserialize(response.Content, typeof(InlineResponse2006), response.Headers);
        }

        /// <summary>
        /// Search Gifs Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.
        /// </summary>
        /// <param name="query">A search query.</param>
        /// <param name="number">The number of results to retrieve between 1 and 10.</param>
        /// <returns>InlineResponse2001</returns>
        public InlineResponse2001 SearchGifs (string query, int? number)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling SearchGifs");
            

            var path = "/gif/search";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchGifs: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchGifs: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2001) ApiClient.Deserialize(response.Content, typeof(InlineResponse2001), response.Headers);
        }

    }
}
