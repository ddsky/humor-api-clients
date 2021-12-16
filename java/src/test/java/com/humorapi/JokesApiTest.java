/*
 * Humor API
 * Awesome Humor API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@humorapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.humorapi;

import com.humorapi.client.ApiException;
import java.math.BigDecimal;
import com.humorapi.client.model.InlineResponse200;
import com.humorapi.client.model.InlineResponse2004;
import com.humorapi.client.model.InlineResponse2008;
import com.humorapi.client.model.InlineResponse2009;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for JokesApi
 */
@Ignore
public class JokesApiTest {

    private final JokesApi api = new JokesApi();

    
    /**
     * Analyze Joke
     *
     * Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void analyzeJokeTest() throws ApiException {
        String body = null;
        InlineResponse2009 response = api.analyzeJoke(body);

        // TODO: test validations
    }
    
    /**
     * Downvote a Joke
     *
     * Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void downvoteJokeTest() throws ApiException {
        Integer id = null;
        InlineResponse2008 response = api.downvoteJoke(id);

        // TODO: test validations
    }
    
    /**
     * Random Joke
     *
     * Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void randomJokeTest() throws ApiException {
        String keywords = null;
        String includeTags = null;
        String excludeTags = null;
        Integer minRating = null;
        Integer maxLength = null;
        InlineResponse2004 response = api.randomJoke(keywords, includeTags, excludeTags, minRating, maxLength);

        // TODO: test validations
    }
    
    /**
     * Search Jokes
     *
     * Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void searchJokesTest() throws ApiException {
        String keywords = null;
        String includeTags = null;
        String excludeTags = null;
        Integer number = null;
        Integer minRating = null;
        Integer maxLength = null;
        BigDecimal offset = null;
        InlineResponse200 response = api.searchJokes(keywords, includeTags, excludeTags, number, minRating, maxLength, offset);

        // TODO: test validations
    }
    
    /**
     * Submit Joke
     *
     * Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void submitJokeTest() throws ApiException {
        String body = null;
        InlineResponse2008 response = api.submitJoke(body);

        // TODO: test validations
    }
    
    /**
     * Upvote a Joke
     *
     * Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void upvoteJokeTest() throws ApiException {
        Integer id = null;
        InlineResponse2008 response = api.upvoteJoke(id);

        // TODO: test validations
    }
    
}
