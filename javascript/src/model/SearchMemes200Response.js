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

import ApiClient from '../ApiClient';
import SearchMemes200ResponseMemesInner from './SearchMemes200ResponseMemesInner';

/**
 * The SearchMemes200Response model module.
 * @module model/SearchMemes200Response
 * @version 1.0
 */
class SearchMemes200Response {
    /**
     * Constructs a new <code>SearchMemes200Response</code>.
     * 
     * @alias module:model/SearchMemes200Response
     * @param memes {Array.<module:model/SearchMemes200ResponseMemesInner>} 
     */
    constructor(memes) { 
        
        SearchMemes200Response.initialize(this, memes);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, memes) { 
        obj['memes'] = memes;
    }

    /**
     * Constructs a <code>SearchMemes200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchMemes200Response} obj Optional instance to populate.
     * @return {module:model/SearchMemes200Response} The populated <code>SearchMemes200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchMemes200Response();

            if (data.hasOwnProperty('memes')) {
                obj['memes'] = ApiClient.convertToType(data['memes'], [SearchMemes200ResponseMemesInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchMemes200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchMemes200Response</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of SearchMemes200Response.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        if (data['memes']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['memes'])) {
                throw new Error("Expected the field `memes` to be an array in the JSON data but got " + data['memes']);
            }
            // validate the optional field `memes` (array)
            for (const item of data['memes']) {
                SearchMemes200ResponseMemesInner.validateJSON(item);
            };
        }

        return true;
    }


}

SearchMemes200Response.RequiredProperties = ["memes"];

/**
 * @member {Array.<module:model/SearchMemes200ResponseMemesInner>} memes
 */
SearchMemes200Response.prototype['memes'] = undefined;






export default SearchMemes200Response;
