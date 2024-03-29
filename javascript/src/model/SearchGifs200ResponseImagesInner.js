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
 * The SearchGifs200ResponseImagesInner model module.
 * @module model/SearchGifs200ResponseImagesInner
 * @version 1.0
 */
class SearchGifs200ResponseImagesInner {
    /**
     * Constructs a new <code>SearchGifs200ResponseImagesInner</code>.
     * @alias module:model/SearchGifs200ResponseImagesInner
     * @param url {String} 
     * @param width {Number} 
     * @param height {Number} 
     */
    constructor(url, width, height) { 
        
        SearchGifs200ResponseImagesInner.initialize(this, url, width, height);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, url, width, height) { 
        obj['url'] = url;
        obj['width'] = width;
        obj['height'] = height;
    }

    /**
     * Constructs a <code>SearchGifs200ResponseImagesInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchGifs200ResponseImagesInner} obj Optional instance to populate.
     * @return {module:model/SearchGifs200ResponseImagesInner} The populated <code>SearchGifs200ResponseImagesInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchGifs200ResponseImagesInner();

            if (data.hasOwnProperty('url')) {
                obj['url'] = ApiClient.convertToType(data['url'], 'String');
            }
            if (data.hasOwnProperty('width')) {
                obj['width'] = ApiClient.convertToType(data['width'], 'Number');
            }
            if (data.hasOwnProperty('height')) {
                obj['height'] = ApiClient.convertToType(data['height'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchGifs200ResponseImagesInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchGifs200ResponseImagesInner</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of SearchGifs200ResponseImagesInner.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is a string
        if (data['url'] && !(typeof data['url'] === 'string' || data['url'] instanceof String)) {
            throw new Error("Expected the field `url` to be a primitive type in the JSON string but got " + data['url']);
        }

        return true;
    }


}

SearchGifs200ResponseImagesInner.RequiredProperties = ["url", "width", "height"];

/**
 * @member {String} url
 */
SearchGifs200ResponseImagesInner.prototype['url'] = undefined;

/**
 * @member {Number} width
 */
SearchGifs200ResponseImagesInner.prototype['width'] = undefined;

/**
 * @member {Number} height
 */
SearchGifs200ResponseImagesInner.prototype['height'] = undefined;






export default SearchGifs200ResponseImagesInner;

