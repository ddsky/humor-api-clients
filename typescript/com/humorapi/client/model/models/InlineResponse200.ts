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

import { Set } from './Set';
import { HttpFile } from '../http/http';

export class InlineResponse200 {
    'jokes': Set<any>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "jokes",
            "baseName": "jokes",
            "type": "Set<any>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return InlineResponse200.attributeTypeMap;
    }

    public constructor() {
    }
}

