// TODO: better import syntax?
import {BaseAPIRequestFactory, RequiredError, COLLECTION_FORMATS} from './baseapi';
import {Configuration} from '../configuration';
import {RequestContext, HttpMethod, ResponseContext, HttpFile, HttpInfo} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {canConsumeForm, isCodeInRange} from '../util';
import {SecurityAuthentication} from '../auth/auth';


import { RandomMeme200Response } from '../models/RandomMeme200Response';
import { SearchMemes200Response } from '../models/SearchMemes200Response';
import { SubmitJoke200Response } from '../models/SubmitJoke200Response';

/**
 * no description
 */
export class MemesApiRequestFactory extends BaseAPIRequestFactory {

    /**
     * Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
     * Downvote a Meme
     * @param id The object\&#39;s id.
     */
    public async downvoteMeme(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("MemesApi", "downvoteMeme", "id");
        }


        // Path Params
        const localVarPath = '/memes/{id}/downvote'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
     * Random Meme
     * @param keywords A comma separated list of keywords.
     * @param keywordsInImage Whether the keywords should be found in the meme\&#39;s image.
     * @param mediaType The type of the content. Can be either \&#39;image\&#39; or \&#39;video\&#39; or specific formats such as \&#39;jpg\&#39;, \&#39;png\&#39;, \&#39;gif\&#39;, or \&#39;mp4\&#39;.
     * @param number The number of results to retrieve between 1 and 10.
     * @param minRating The minimum rating between 0 and 10 the result should have.
     */
    public async randomMeme(keywords?: string, keywordsInImage?: boolean, mediaType?: 'image' | 'video' | 'jpg' | 'gif' | 'png' | 'mp4', number?: number, minRating?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;






        // Path Params
        const localVarPath = '/memes/random';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (keywords !== undefined) {
            requestContext.setQueryParam("keywords", ObjectSerializer.serialize(keywords, "string", ""));
        }

        // Query Params
        if (keywordsInImage !== undefined) {
            requestContext.setQueryParam("keywords-in-image", ObjectSerializer.serialize(keywordsInImage, "boolean", ""));
        }

        // Query Params
        if (mediaType !== undefined) {
            requestContext.setQueryParam("media-type", ObjectSerializer.serialize(mediaType, "'image' | 'video' | 'jpg' | 'gif' | 'png' | 'mp4'", ""));
        }

        // Query Params
        if (number !== undefined) {
            requestContext.setQueryParam("number", ObjectSerializer.serialize(number, "number", ""));
        }

        // Query Params
        if (minRating !== undefined) {
            requestContext.setQueryParam("min-rating", ObjectSerializer.serialize(minRating, "number", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
     * Search Memes
     * @param keywords A comma separated list of keywords.
     * @param keywordsInImage Whether the keywords should be found in the meme\&#39;s image.
     * @param mediaType The type of the content. Can be either \&#39;image\&#39; or \&#39;video\&#39; or specific formats such as \&#39;jpg\&#39;, \&#39;png\&#39;, \&#39;gif\&#39;, or \&#39;mp4\&#39;.
     * @param number The number of results to retrieve between 1 and 10.
     * @param minRating The minimum rating between 0 and 10 the result should have.
     * @param offset The number of results to skip.
     */
    public async searchMemes(keywords?: string, keywordsInImage?: boolean, mediaType?: 'image' | 'video' | 'jpg' | 'gif' | 'png' | 'mp4', number?: number, minRating?: number, offset?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;







        // Path Params
        const localVarPath = '/memes/search';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (keywords !== undefined) {
            requestContext.setQueryParam("keywords", ObjectSerializer.serialize(keywords, "string", ""));
        }

        // Query Params
        if (keywordsInImage !== undefined) {
            requestContext.setQueryParam("keywords-in-image", ObjectSerializer.serialize(keywordsInImage, "boolean", ""));
        }

        // Query Params
        if (mediaType !== undefined) {
            requestContext.setQueryParam("media-type", ObjectSerializer.serialize(mediaType, "'image' | 'video' | 'jpg' | 'gif' | 'png' | 'mp4'", ""));
        }

        // Query Params
        if (number !== undefined) {
            requestContext.setQueryParam("number", ObjectSerializer.serialize(number, "number", ""));
        }

        // Query Params
        if (minRating !== undefined) {
            requestContext.setQueryParam("min-rating", ObjectSerializer.serialize(minRating, "number", ""));
        }

        // Query Params
        if (offset !== undefined) {
            requestContext.setQueryParam("offset", ObjectSerializer.serialize(offset, "number", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
     * Upvote a Meme
     * @param id The object\&#39;s id.
     */
    public async upvoteMeme(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("MemesApi", "upvoteMeme", "id");
        }


        // Path Params
        const localVarPath = '/memes/{id}/upvote'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

}

export class MemesApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to downvoteMeme
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async downvoteMemeWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SubmitJoke200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SubmitJoke200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SubmitJoke200Response", ""
            ) as SubmitJoke200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SubmitJoke200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SubmitJoke200Response", ""
            ) as SubmitJoke200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to randomMeme
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async randomMemeWithHttpInfo(response: ResponseContext): Promise<HttpInfo<RandomMeme200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: RandomMeme200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "RandomMeme200Response", ""
            ) as RandomMeme200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: RandomMeme200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "RandomMeme200Response", ""
            ) as RandomMeme200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to searchMemes
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async searchMemesWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SearchMemes200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SearchMemes200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchMemes200Response", ""
            ) as SearchMemes200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SearchMemes200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchMemes200Response", ""
            ) as SearchMemes200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to upvoteMeme
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async upvoteMemeWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SubmitJoke200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SubmitJoke200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SubmitJoke200Response", ""
            ) as SubmitJoke200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SubmitJoke200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SubmitJoke200Response", ""
            ) as SubmitJoke200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

}
