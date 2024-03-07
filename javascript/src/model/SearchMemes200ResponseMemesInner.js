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

/**
 * The SearchMemes200ResponseMemesInner model module.
 * @module model/SearchMemes200ResponseMemesInner
 * @version 1.0
 */
class SearchMemes200ResponseMemesInner {
    /**
     * Constructs a new <code>SearchMemes200ResponseMemesInner</code>.
     * @alias module:model/SearchMemes200ResponseMemesInner
     * @param id {Number} 
     * @param url {String} 
     * @param type {String} 
     */
    constructor(id, url, type) { 
        
        SearchMemes200ResponseMemesInner.initialize(this, id, url, type);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, id, url, type) { 
        obj['id'] = id;
        obj['url'] = url;
        obj['type'] = type;
    }

    /**
     * Constructs a <code>SearchMemes200ResponseMemesInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchMemes200ResponseMemesInner} obj Optional instance to populate.
     * @return {module:model/SearchMemes200ResponseMemesInner} The populated <code>SearchMemes200ResponseMemesInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchMemes200ResponseMemesInner();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('url')) {
                obj['url'] = ApiClient.convertToType(data['url'], 'String');
            }
            if (data.hasOwnProperty('type')) {
                obj['type'] = ApiClient.convertToType(data['type'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchMemes200ResponseMemesInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchMemes200ResponseMemesInner</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of SearchMemes200ResponseMemesInner.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is a string
        if (data['url'] && !(typeof data['url'] === 'string' || data['url'] instanceof String)) {
            throw new Error("Expected the field `url` to be a primitive type in the JSON string but got " + data['url']);
        }
        // ensure the json data is a string
        if (data['type'] && !(typeof data['type'] === 'string' || data['type'] instanceof String)) {
            throw new Error("Expected the field `type` to be a primitive type in the JSON string but got " + data['type']);
        }

        return true;
    }


}

SearchMemes200ResponseMemesInner.RequiredProperties = ["id", "url", "type"];

/**
 * @member {Number} id
 */
SearchMemes200ResponseMemesInner.prototype['id'] = undefined;

/**
 * @member {String} url
 */
SearchMemes200ResponseMemesInner.prototype['url'] = undefined;

/**
 * @member {String} type
 */
SearchMemes200ResponseMemesInner.prototype['type'] = undefined;






export default SearchMemes200ResponseMemesInner;
