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


import ApiClient from './ApiClient';
import InlineResponse200 from './com.humorapi.client.model/InlineResponse200';
import InlineResponse2001 from './com.humorapi.client.model/InlineResponse2001';
import InlineResponse2002 from './com.humorapi.client.model/InlineResponse2002';
import InlineResponse2003 from './com.humorapi.client.model/InlineResponse2003';
import InlineResponse2004 from './com.humorapi.client.model/InlineResponse2004';
import InlineResponse2005 from './com.humorapi.client.model/InlineResponse2005';
import InlineResponse2006 from './com.humorapi.client.model/InlineResponse2006';
import InlineResponse2007 from './com.humorapi.client.model/InlineResponse2007';
import InlineResponse2008 from './com.humorapi.client.model/InlineResponse2008';
import InlineResponse2009 from './com.humorapi.client.model/InlineResponse2009';
import JokesApi from './com.humorapi/JokesApi';
import MemesApi from './com.humorapi/MemesApi';
import OtherApi from './com.humorapi/OtherApi';


/**
* Awesome_Humor_API_.<br>
* The <code>index</code> module provides access to constructors for all the classes which comprise the public API.
* <p>
* An AMD (recommended!) or CommonJS application will generally do something equivalent to the following:
* <pre>
* var HumorApi = require('com.humorapi.client/index'); // See note below*.
* var xxxSvc = new HumorApi.XxxApi(); // Allocate the API class we're going to use.
* var yyyModel = new HumorApi.Yyy(); // Construct a model instance.
* yyyModel.someProperty = 'someValue';
* ...
* var zzz = xxxSvc.doSomething(yyyModel); // Invoke the service.
* ...
* </pre>
* <em>*NOTE: For a top-level AMD script, use require(['com.humorapi.client/index'], function(){...})
* and put the application logic within the callback function.</em>
* </p>
* <p>
* A non-AMD browser application (discouraged) might do something like this:
* <pre>
* var xxxSvc = new HumorApi.XxxApi(); // Allocate the API class we're going to use.
* var yyy = new HumorApi.Yyy(); // Construct a model instance.
* yyyModel.someProperty = 'someValue';
* ...
* var zzz = xxxSvc.doSomething(yyyModel); // Invoke the service.
* ...
* </pre>
* </p>
* @module com.humorapi.client/index
* @version 1.0
*/
export {
    /**
     * The ApiClient constructor.
     * @property {module:com.humorapi.client/ApiClient}
     */
    ApiClient,

    /**
     * The InlineResponse200 model constructor.
     * @property {module:com.humorapi.client/com.humorapi.client.model/InlineResponse200}
     */
    InlineResponse200,

    /**
     * The InlineResponse2001 model constructor.
     * @property {module:com.humorapi.client/com.humorapi.client.model/InlineResponse2001}
     */
    InlineResponse2001,

    /**
     * The InlineResponse2002 model constructor.
     * @property {module:com.humorapi.client/com.humorapi.client.model/InlineResponse2002}
     */
    InlineResponse2002,

    /**
     * The InlineResponse2003 model constructor.
     * @property {module:com.humorapi.client/com.humorapi.client.model/InlineResponse2003}
     */
    InlineResponse2003,

    /**
     * The InlineResponse2004 model constructor.
     * @property {module:com.humorapi.client/com.humorapi.client.model/InlineResponse2004}
     */
    InlineResponse2004,

    /**
     * The InlineResponse2005 model constructor.
     * @property {module:com.humorapi.client/com.humorapi.client.model/InlineResponse2005}
     */
    InlineResponse2005,

    /**
     * The InlineResponse2006 model constructor.
     * @property {module:com.humorapi.client/com.humorapi.client.model/InlineResponse2006}
     */
    InlineResponse2006,

    /**
     * The InlineResponse2007 model constructor.
     * @property {module:com.humorapi.client/com.humorapi.client.model/InlineResponse2007}
     */
    InlineResponse2007,

    /**
     * The InlineResponse2008 model constructor.
     * @property {module:com.humorapi.client/com.humorapi.client.model/InlineResponse2008}
     */
    InlineResponse2008,

    /**
     * The InlineResponse2009 model constructor.
     * @property {module:com.humorapi.client/com.humorapi.client.model/InlineResponse2009}
     */
    InlineResponse2009,

    /**
    * The JokesApi service constructor.
    * @property {module:com.humorapi.client/com.humorapi/JokesApi}
    */
    JokesApi,

    /**
    * The MemesApi service constructor.
    * @property {module:com.humorapi.client/com.humorapi/MemesApi}
    */
    MemesApi,

    /**
    * The OtherApi service constructor.
    * @property {module:com.humorapi.client/com.humorapi/OtherApi}
    */
    OtherApi
};