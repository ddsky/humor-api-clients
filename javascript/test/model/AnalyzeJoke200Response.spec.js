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
    instance = new HumorApi.AnalyzeJoke200Response();
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

  describe('AnalyzeJoke200Response', function() {
    it('should create an instance of AnalyzeJoke200Response', function() {
      // uncomment below and update the code to test AnalyzeJoke200Response
      //var instance = new HumorApi.AnalyzeJoke200Response();
      //expect(instance).to.be.a(HumorApi.AnalyzeJoke200Response);
    });

    it('should have the property joke (base name: "joke")', function() {
      // uncomment below and update the code to test the property joke
      //var instance = new HumorApi.AnalyzeJoke200Response();
      //expect(instance).to.be();
    });

    it('should have the property tags (base name: "tags")', function() {
      // uncomment below and update the code to test the property tags
      //var instance = new HumorApi.AnalyzeJoke200Response();
      //expect(instance).to.be();
    });

  });

}));
