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
import com.humorapi.client.model.InlineResponse2002;
import com.humorapi.client.model.InlineResponse2003;
import com.humorapi.client.model.InlineResponse2008;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for MemesApi
 */
@Ignore
public class MemesApiTest {

    private final MemesApi api = new MemesApi();

    
    /**
     * Downvote a Meme
     *
     * Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void downvoteMemeTest() throws ApiException {
        Integer id = null;
                InlineResponse2008 response = api.downvoteMeme(id);
        // TODO: test validations
    }
    
    /**
     * Random Meme
     *
     * Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void randomMemeTest() throws ApiException {
        String keywords = null;
        Boolean keywordsInImage = null;
        String mediaType = null;
        Integer number = null;
        Integer minRating = null;
                InlineResponse2003 response = api.randomMeme(keywords, keywordsInImage, mediaType, number, minRating);
        // TODO: test validations
    }
    
    /**
     * Search Memes
     *
     * Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void searchMemesTest() throws ApiException {
        String keywords = null;
        Boolean keywordsInImage = null;
        String mediaType = null;
        Integer number = null;
        Integer minRating = null;
        BigDecimal offset = null;
                InlineResponse2002 response = api.searchMemes(keywords, keywordsInImage, mediaType, number, minRating, offset);
        // TODO: test validations
    }
    
    /**
     * Upvote a Meme
     *
     * Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void upvoteMemeTest() throws ApiException {
        Integer id = null;
                InlineResponse2008 response = api.upvoteMeme(id);
        // TODO: test validations
    }
    
}
