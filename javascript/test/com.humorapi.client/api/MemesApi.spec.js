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
    define(['expect.js', process.cwd()+'/src/com.humorapi.client/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/com.humorapi.client/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.HumorApi);
  }
}(this, function(expect, HumorApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new HumorApi.MemesApi();
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

  describe('MemesApi', function() {
    describe('downvoteMeme', function() {
      it('should call downvoteMeme successfully', function(done) {
        //uncomment below and update the code to test downvoteMeme
        //instance.downvoteMeme(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('randomMeme', function() {
      it('should call randomMeme successfully', function(done) {
        //uncomment below and update the code to test randomMeme
        //instance.randomMeme(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('searchMemes', function() {
      it('should call searchMemes successfully', function(done) {
        //uncomment below and update the code to test searchMemes
        //instance.searchMemes(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('upvoteMeme', function() {
      it('should call upvoteMeme successfully', function(done) {
        //uncomment below and update the code to test upvoteMeme
        //instance.upvoteMeme(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
  });

}));
