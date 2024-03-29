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

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.HumorApi);
  }
}(this, function(expect, HumorApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new HumorApi.Praise200Response();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('Praise200Response', function() {
    it('should create an instance of Praise200Response', function() {
      // uncomment below and update the code to test Praise200Response
      //var instance = new HumorApi.Praise200Response();
      //expect(instance).to.be.a(HumorApi.Praise200Response);
    });

    it('should have the property text (base name: "text")', function() {
      // uncomment below and update the code to test the property text
      //var instance = new HumorApi.Praise200Response();
      //expect(instance).to.be();
    });

  });

}));
