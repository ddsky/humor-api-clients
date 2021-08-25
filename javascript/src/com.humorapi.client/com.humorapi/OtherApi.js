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
 *
 */


import ApiClient from "../ApiClient";
import InlineResponse2001 from '../com.humorapi.client.model/InlineResponse2001';
import InlineResponse2005 from '../com.humorapi.client.model/InlineResponse2005';
import InlineResponse2006 from '../com.humorapi.client.model/InlineResponse2006';
import InlineResponse2007 from '../com.humorapi.client.model/InlineResponse2007';

/**
* Other service.
* @module com.humorapi.client/com.humorapi/OtherApi
* @version 1.0
*/
export default class OtherApi {

    /**
    * Constructs a new OtherApi. 
    * @alias module:com.humorapi.client/com.humorapi/OtherApi
    * @class
    * @param {module:com.humorapi.client/ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:com.humorapi.client/ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the generateNonsenseWord operation.
     * @callback module:com.humorapi.client/com.humorapi/OtherApi~generateNonsenseWordCallback
     * @param {String} error Error message, if any.
     * @param {module:com.humorapi.client/com.humorapi.client.model/InlineResponse2007} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Generate Nonsense Word
     * Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.
     * @param {module:com.humorapi.client/com.humorapi/OtherApi~generateNonsenseWordCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:com.humorapi.client/com.humorapi.client.model/InlineResponse2007}
     */
    generateNonsenseWord(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = InlineResponse2007;
      return this.apiClient.callApi(
        '/words/nonsense/random', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the insult operation.
     * @callback module:com.humorapi.client/com.humorapi/OtherApi~insultCallback
     * @param {String} error Error message, if any.
     * @param {module:com.humorapi.client/com.humorapi.client.model/InlineResponse2005} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Insult
     * Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.
     * @param {String} name The person's name.
     * @param {String} reason The reason for the praise/insult.
     * @param {module:com.humorapi.client/com.humorapi/OtherApi~insultCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:com.humorapi.client/com.humorapi.client.model/InlineResponse2005}
     */
    insult(name, reason, callback) {
      let postBody = null;
      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling insult");
      }
      // verify the required parameter 'reason' is set
      if (reason === undefined || reason === null) {
        throw new Error("Missing the required parameter 'reason' when calling insult");
      }

      let pathParams = {
      };
      let queryParams = {
        'name': name,
        'reason': reason
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = InlineResponse2005;
      return this.apiClient.callApi(
        '/insult', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the praise operation.
     * @callback module:com.humorapi.client/com.humorapi/OtherApi~praiseCallback
     * @param {String} error Error message, if any.
     * @param {module:com.humorapi.client/com.humorapi.client.model/InlineResponse2005} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Praise
     * Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.
     * @param {String} name The person's name.
     * @param {String} reason The reason for the praise/insult.
     * @param {module:com.humorapi.client/com.humorapi/OtherApi~praiseCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:com.humorapi.client/com.humorapi.client.model/InlineResponse2005}
     */
    praise(name, reason, callback) {
      let postBody = null;
      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling praise");
      }
      // verify the required parameter 'reason' is set
      if (reason === undefined || reason === null) {
        throw new Error("Missing the required parameter 'reason' when calling praise");
      }

      let pathParams = {
      };
      let queryParams = {
        'name': name,
        'reason': reason
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = InlineResponse2005;
      return this.apiClient.callApi(
        '/praise', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the rateWord operation.
     * @callback module:com.humorapi.client/com.humorapi/OtherApi~rateWordCallback
     * @param {String} error Error message, if any.
     * @param {module:com.humorapi.client/com.humorapi.client.model/InlineResponse2006} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Rate Word
     * Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.
     * @param {String} word The word to be rated.
     * @param {module:com.humorapi.client/com.humorapi/OtherApi~rateWordCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:com.humorapi.client/com.humorapi.client.model/InlineResponse2006}
     */
    rateWord(word, callback) {
      let postBody = null;
      // verify the required parameter 'word' is set
      if (word === undefined || word === null) {
        throw new Error("Missing the required parameter 'word' when calling rateWord");
      }

      let pathParams = {
      };
      let queryParams = {
        'word': word
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = InlineResponse2006;
      return this.apiClient.callApi(
        '/words/rate', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchGifs operation.
     * @callback module:com.humorapi.client/com.humorapi/OtherApi~searchGifsCallback
     * @param {String} error Error message, if any.
     * @param {module:com.humorapi.client/com.humorapi.client.model/InlineResponse2001} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Gifs
     * Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.
     * @param {String} query A search query.
     * @param {Object} opts Optional parameters
     * @param {Number} opts._number The number of results to retrieve between 1 and 10.
     * @param {module:com.humorapi.client/com.humorapi/OtherApi~searchGifsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:com.humorapi.client/com.humorapi.client.model/InlineResponse2001}
     */
    searchGifs(query, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'query' is set
      if (query === undefined || query === null) {
        throw new Error("Missing the required parameter 'query' when calling searchGifs");
      }

      let pathParams = {
      };
      let queryParams = {
        'query': query,
        'number': opts['_number']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = InlineResponse2001;
      return this.apiClient.callApi(
        '/gif/search', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}