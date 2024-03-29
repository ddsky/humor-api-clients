/*
 * Humor API
 *
 * Awesome Humor API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@humorapi.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using Xunit;

using humorapi.Client;
using humorapi.Api;
// uncomment below to import models
//using humorapi.Model;

namespace humorapi.Test.Api
{
    /// <summary>
    ///  Class for testing JokesApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class JokesApiTests : IDisposable
    {
        private JokesApi instance;

        public JokesApiTests()
        {
            instance = new JokesApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of JokesApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' JokesApi
            //Assert.IsType<JokesApi>(instance);
        }

        /// <summary>
        /// Test AnalyzeJoke
        /// </summary>
        [Fact]
        public void AnalyzeJokeTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? body = null;
            //var response = instance.AnalyzeJoke(body);
            //Assert.IsType<AnalyzeJoke200Response>(response);
        }

        /// <summary>
        /// Test DownvoteJoke
        /// </summary>
        [Fact]
        public void DownvoteJokeTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //var response = instance.DownvoteJoke(id);
            //Assert.IsType<SubmitJoke200Response>(response);
        }

        /// <summary>
        /// Test RandomJoke
        /// </summary>
        [Fact]
        public void RandomJokeTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? keywords = null;
            //string? includeTags = null;
            //string? excludeTags = null;
            //int? minRating = null;
            //int? maxLength = null;
            //var response = instance.RandomJoke(keywords, includeTags, excludeTags, minRating, maxLength);
            //Assert.IsType<RandomJoke200Response>(response);
        }

        /// <summary>
        /// Test SearchJokes
        /// </summary>
        [Fact]
        public void SearchJokesTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? keywords = null;
            //string? includeTags = null;
            //string? excludeTags = null;
            //int? number = null;
            //int? minRating = null;
            //int? maxLength = null;
            //decimal? offset = null;
            //var response = instance.SearchJokes(keywords, includeTags, excludeTags, number, minRating, maxLength, offset);
            //Assert.IsType<SearchJokes200Response>(response);
        }

        /// <summary>
        /// Test SubmitJoke
        /// </summary>
        [Fact]
        public void SubmitJokeTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? body = null;
            //var response = instance.SubmitJoke(body);
            //Assert.IsType<SubmitJoke200Response>(response);
        }

        /// <summary>
        /// Test UpvoteJoke
        /// </summary>
        [Fact]
        public void UpvoteJokeTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //var response = instance.UpvoteJoke(id);
            //Assert.IsType<SubmitJoke200Response>(response);
        }
    }
}
