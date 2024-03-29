/**
 * Humor API
 * Awesome Humor API.
 *
 * OpenAPI spec version: 1.0
 * Contact: mail@humorapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { SearchJokes200ResponseJokesInner } from '../models/SearchJokes200ResponseJokesInner';
import { HttpFile } from '../http/http';

/**
* 
*/
export class SearchJokes200Response {
    'jokes': Set<SearchJokes200ResponseJokesInner>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "jokes",
            "baseName": "jokes",
            "type": "Set<SearchJokes200ResponseJokesInner>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchJokes200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

