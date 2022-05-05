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
    public interface IJokesApi
    {
        /// <summary>
        /// Analyze Joke Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.
        /// </summary>
        /// <param name="body">Post the joke as plain text.</param>
        /// <returns>InlineResponse2009</returns>
        InlineResponse2009 AnalyzeJoke (string body);
        /// <summary>
        /// Downvote a Joke Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.
        /// </summary>
        /// <param name="id">The object&#39;s id.</param>
        /// <returns>InlineResponse2008</returns>
        InlineResponse2008 DownvoteJoke (int? id);
        /// <summary>
        /// Random Joke Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.
        /// </summary>
        /// <param name="keywords">A comma separated list of keywords.</param>
        /// <param name="includeTags">A comma separated list of tags that the joke must have.</param>
        /// <param name="excludeTags">A comma separated list of tags that the joke must not have.</param>
        /// <param name="minRating">The minimum rating between 0 and 10 the result should have.</param>
        /// <param name="maxLength">The maximum number of letters in the joke.</param>
        /// <returns>InlineResponse2004</returns>
        InlineResponse2004 RandomJoke (string keywords, string includeTags, string excludeTags, int? minRating, int? maxLength);
        /// <summary>
        /// Search Jokes Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.
        /// </summary>
        /// <param name="keywords">A comma separated list of keywords.</param>
        /// <param name="includeTags">A comma separated list of tags that the joke must have.</param>
        /// <param name="excludeTags">A comma separated list of tags that the joke must not have.</param>
        /// <param name="number">The number of results to retrieve between 1 and 10.</param>
        /// <param name="minRating">The minimum rating between 0 and 10 the result should have.</param>
        /// <param name="maxLength">The maximum number of letters in the joke.</param>
        /// <param name="offset">The number of results to skip.</param>
        /// <returns>InlineResponse200</returns>
        InlineResponse200 SearchJokes (string keywords, string includeTags, string excludeTags, int? number, int? minRating, int? maxLength, decimal? offset);
        /// <summary>
        /// Submit Joke Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.
        /// </summary>
        /// <param name="body">Post the joke as plain text.</param>
        /// <returns>InlineResponse2008</returns>
        InlineResponse2008 SubmitJoke (string body);
        /// <summary>
        /// Upvote a Joke Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.
        /// </summary>
        /// <param name="id">The object&#39;s id.</param>
        /// <returns>InlineResponse2008</returns>
        InlineResponse2008 UpvoteJoke (int? id);
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class JokesApi : IJokesApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="JokesApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public JokesApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient;
            else
                this.ApiClient = apiClient;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="JokesApi"/> class.
        /// </summary>
        /// <returns></returns>
        public JokesApi(String basePath)
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
        /// Analyze Joke Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.
        /// </summary>
        /// <param name="body">Post the joke as plain text.</param>
        /// <returns>InlineResponse2009</returns>
        public InlineResponse2009 AnalyzeJoke (string body)
        {
            

            var path = "/jokes/analyze";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AnalyzeJoke: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AnalyzeJoke: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2009) ApiClient.Deserialize(response.Content, typeof(InlineResponse2009), response.Headers);
        }

        /// <summary>
        /// Downvote a Joke Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.
        /// </summary>
        /// <param name="id">The object&#39;s id.</param>
        /// <returns>InlineResponse2008</returns>
        public InlineResponse2008 DownvoteJoke (int? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling DownvoteJoke");
            

            var path = "/jokes/{id}/downvote";
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
                throw new ApiException ((int)response.StatusCode, "Error calling DownvoteJoke: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DownvoteJoke: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2008) ApiClient.Deserialize(response.Content, typeof(InlineResponse2008), response.Headers);
        }

        /// <summary>
        /// Random Joke Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.
        /// </summary>
        /// <param name="keywords">A comma separated list of keywords.</param>
        /// <param name="includeTags">A comma separated list of tags that the joke must have.</param>
        /// <param name="excludeTags">A comma separated list of tags that the joke must not have.</param>
        /// <param name="minRating">The minimum rating between 0 and 10 the result should have.</param>
        /// <param name="maxLength">The maximum number of letters in the joke.</param>
        /// <returns>InlineResponse2004</returns>
        public InlineResponse2004 RandomJoke (string keywords, string includeTags, string excludeTags, int? minRating, int? maxLength)
        {
            

            var path = "/jokes/random";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (keywords != null) queryParams.Add("keywords", ApiClient.ParameterToString(keywords)); // query parameter
 if (includeTags != null) queryParams.Add("include-tags", ApiClient.ParameterToString(includeTags)); // query parameter
 if (excludeTags != null) queryParams.Add("exclude-tags", ApiClient.ParameterToString(excludeTags)); // query parameter
 if (minRating != null) queryParams.Add("min-rating", ApiClient.ParameterToString(minRating)); // query parameter
 if (maxLength != null) queryParams.Add("max-length", ApiClient.ParameterToString(maxLength)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling RandomJoke: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling RandomJoke: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2004) ApiClient.Deserialize(response.Content, typeof(InlineResponse2004), response.Headers);
        }

        /// <summary>
        /// Search Jokes Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.
        /// </summary>
        /// <param name="keywords">A comma separated list of keywords.</param>
        /// <param name="includeTags">A comma separated list of tags that the joke must have.</param>
        /// <param name="excludeTags">A comma separated list of tags that the joke must not have.</param>
        /// <param name="number">The number of results to retrieve between 1 and 10.</param>
        /// <param name="minRating">The minimum rating between 0 and 10 the result should have.</param>
        /// <param name="maxLength">The maximum number of letters in the joke.</param>
        /// <param name="offset">The number of results to skip.</param>
        /// <returns>InlineResponse200</returns>
        public InlineResponse200 SearchJokes (string keywords, string includeTags, string excludeTags, int? number, int? minRating, int? maxLength, decimal? offset)
        {
            

            var path = "/jokes/search";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (keywords != null) queryParams.Add("keywords", ApiClient.ParameterToString(keywords)); // query parameter
 if (includeTags != null) queryParams.Add("include-tags", ApiClient.ParameterToString(includeTags)); // query parameter
 if (excludeTags != null) queryParams.Add("exclude-tags", ApiClient.ParameterToString(excludeTags)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
 if (minRating != null) queryParams.Add("min-rating", ApiClient.ParameterToString(minRating)); // query parameter
 if (maxLength != null) queryParams.Add("max-length", ApiClient.ParameterToString(maxLength)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchJokes: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchJokes: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse200) ApiClient.Deserialize(response.Content, typeof(InlineResponse200), response.Headers);
        }

        /// <summary>
        /// Submit Joke Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.
        /// </summary>
        /// <param name="body">Post the joke as plain text.</param>
        /// <returns>InlineResponse2008</returns>
        public InlineResponse2008 SubmitJoke (string body)
        {
            

            var path = "/jokes";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SubmitJoke: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SubmitJoke: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2008) ApiClient.Deserialize(response.Content, typeof(InlineResponse2008), response.Headers);
        }

        /// <summary>
        /// Upvote a Joke Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.
        /// </summary>
        /// <param name="id">The object&#39;s id.</param>
        /// <returns>InlineResponse2008</returns>
        public InlineResponse2008 UpvoteJoke (int? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling UpvoteJoke");
            

            var path = "/jokes/{id}/upvote";
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
                throw new ApiException ((int)response.StatusCode, "Error calling UpvoteJoke: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpvoteJoke: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2008) ApiClient.Deserialize(response.Content, typeof(InlineResponse2008), response.Headers);
        }

    }
}
