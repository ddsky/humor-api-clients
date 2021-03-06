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
 * The InlineResponse2009 model module.
 * @module com.humorapi.client/com.humorapi.client.model/InlineResponse2009
 * @version 1.0
 */
class InlineResponse2009 {
    /**
     * Constructs a new <code>InlineResponse2009</code>.
     * @alias module:com.humorapi.client/com.humorapi.client.model/InlineResponse2009
     * @param joke {String} 
     * @param tags {Array.<String>} 
     */
    constructor(joke, tags) { 
        
        InlineResponse2009.initialize(this, joke, tags);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, joke, tags) { 
        obj['joke'] = joke;
        obj['tags'] = tags;
    }

    /**
     * Constructs a <code>InlineResponse2009</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.humorapi.client/com.humorapi.client.model/InlineResponse2009} obj Optional instance to populate.
     * @return {module:com.humorapi.client/com.humorapi.client.model/InlineResponse2009} The populated <code>InlineResponse2009</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InlineResponse2009();

            if (data.hasOwnProperty('joke')) {
                obj['joke'] = ApiClient.convertToType(data['joke'], 'String');
            }
            if (data.hasOwnProperty('tags')) {
                obj['tags'] = ApiClient.convertToType(data['tags'], ['String']);
            }
        }
        return obj;
    }


}

/**
 * @member {String} joke
 */
InlineResponse2009.prototype['joke'] = undefined;

/**
 * @member {Array.<String>} tags
 */
InlineResponse2009.prototype['tags'] = undefined;






export default InlineResponse2009;

