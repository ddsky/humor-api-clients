// TODO: better import syntax?
import {BaseAPIRequestFactory, RequiredError} from './baseapi';
import {Configuration} from '../configuration';
import {RequestContext, HttpMethod, ResponseContext, HttpFile} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {canConsumeForm, isCodeInRange} from '../util';
import {SecurityAuthentication} from '../auth/auth';


import { InlineResponse200 } from '..com/humorapi/client/model/models/InlineResponse200';
import { InlineResponse2004 } from '..com/humorapi/client/model/models/InlineResponse2004';
import { InlineResponse2008 } from '..com/humorapi/client/model/models/InlineResponse2008';
import { InlineResponse2009 } from '..com/humorapi/client/model/models/InlineResponse2009';

/**
 * no description
 */
export class JokesApiRequestFactory extends BaseAPIRequestFactory {

    /**
     * Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.
     * Analyze Joke
     * @param body Post the joke as plain text.
     */
    public async analyzeJoke(body?: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;


        // Path Params
        const localVarPath = '/jokes/analyze';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "text/plain"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(body, "string", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

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
     * Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.
     * Downvote a Joke
     * @param id The object&#39;s id.
     */
    public async downvoteJoke(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("JokesApi", "downvoteJoke", "id");
        }


        // Path Params
        const localVarPath = '/jokes/{id}/downvote'
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
     * Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.
     * Random Joke
     * @param keywords A comma separated list of keywords.
     * @param includeTags A comma separated list of tags that the joke must have.
     * @param excludeTags A comma separated list of tags that the joke must not have.
     * @param minRating The minimum rating between 0 and 10 the result should have.
     * @param maxLength The maximum number of letters in the joke.
     */
    public async randomJoke(keywords?: string, includeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday', excludeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday', minRating?: number, maxLength?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;






        // Path Params
        const localVarPath = '/jokes/random';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (keywords !== undefined) {
            requestContext.setQueryParam("keywords", ObjectSerializer.serialize(keywords, "string", ""));
        }

        // Query Params
        if (includeTags !== undefined) {
            requestContext.setQueryParam("include-tags", ObjectSerializer.serialize(includeTags, "'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday'", ""));
        }

        // Query Params
        if (excludeTags !== undefined) {
            requestContext.setQueryParam("exclude-tags", ObjectSerializer.serialize(excludeTags, "'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday'", ""));
        }

        // Query Params
        if (minRating !== undefined) {
            requestContext.setQueryParam("min-rating", ObjectSerializer.serialize(minRating, "number", ""));
        }

        // Query Params
        if (maxLength !== undefined) {
            requestContext.setQueryParam("max-length", ObjectSerializer.serialize(maxLength, "number", ""));
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
     * Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.
     * Search Jokes
     * @param keywords A comma separated list of keywords.
     * @param includeTags A comma separated list of tags that the joke must have.
     * @param excludeTags A comma separated list of tags that the joke must not have.
     * @param number The number of results to retrieve between 1 and 10.
     * @param minRating The minimum rating between 0 and 10 the result should have.
     * @param maxLength The maximum number of letters in the joke.
     * @param offset The number of results to skip.
     */
    public async searchJokes(keywords?: string, includeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday', excludeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday', number?: number, minRating?: number, maxLength?: number, offset?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;








        // Path Params
        const localVarPath = '/jokes/search';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (keywords !== undefined) {
            requestContext.setQueryParam("keywords", ObjectSerializer.serialize(keywords, "string", ""));
        }

        // Query Params
        if (includeTags !== undefined) {
            requestContext.setQueryParam("include-tags", ObjectSerializer.serialize(includeTags, "'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday'", ""));
        }

        // Query Params
        if (excludeTags !== undefined) {
            requestContext.setQueryParam("exclude-tags", ObjectSerializer.serialize(excludeTags, "'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday'", ""));
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
        if (maxLength !== undefined) {
            requestContext.setQueryParam("max-length", ObjectSerializer.serialize(maxLength, "number", ""));
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
     * Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.
     * Submit Joke
     * @param body Post the joke as plain text.
     */
    public async submitJoke(body?: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;


        // Path Params
        const localVarPath = '/jokes';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "text/plain"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(body, "string", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

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
     * Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.
     * Upvote a Joke
     * @param id The object&#39;s id.
     */
    public async upvoteJoke(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("JokesApi", "upvoteJoke", "id");
        }


        // Path Params
        const localVarPath = '/jokes/{id}/upvote'
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

export class JokesApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to analyzeJoke
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async analyzeJoke(response: ResponseContext): Promise<InlineResponse2009 > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: InlineResponse2009 = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "InlineResponse2009", ""
            ) as InlineResponse2009;
            return body;
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: InlineResponse2009 = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "InlineResponse2009", ""
            ) as InlineResponse2009;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to downvoteJoke
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async downvoteJoke(response: ResponseContext): Promise<InlineResponse2008 > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: InlineResponse2008 = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "InlineResponse2008", ""
            ) as InlineResponse2008;
            return body;
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: InlineResponse2008 = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "InlineResponse2008", ""
            ) as InlineResponse2008;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to randomJoke
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async randomJoke(response: ResponseContext): Promise<InlineResponse2004 > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: InlineResponse2004 = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "InlineResponse2004", ""
            ) as InlineResponse2004;
            return body;
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: InlineResponse2004 = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "InlineResponse2004", ""
            ) as InlineResponse2004;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to searchJokes
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async searchJokes(response: ResponseContext): Promise<InlineResponse200 > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: InlineResponse200 = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "InlineResponse200", ""
            ) as InlineResponse200;
            return body;
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: InlineResponse200 = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "InlineResponse200", ""
            ) as InlineResponse200;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to submitJoke
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async submitJoke(response: ResponseContext): Promise<InlineResponse2008 > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: InlineResponse2008 = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "InlineResponse2008", ""
            ) as InlineResponse2008;
            return body;
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: InlineResponse2008 = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "InlineResponse2008", ""
            ) as InlineResponse2008;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to upvoteJoke
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async upvoteJoke(response: ResponseContext): Promise<InlineResponse2008 > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: InlineResponse2008 = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "InlineResponse2008", ""
            ) as InlineResponse2008;
            return body;
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: InlineResponse2008 = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "InlineResponse2008", ""
            ) as InlineResponse2008;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

}
