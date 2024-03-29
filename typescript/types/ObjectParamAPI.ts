import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration} from '../configuration'

import { AnalyzeJoke200Response } from '../models/AnalyzeJoke200Response';
import { GenerateNonsenseWord200Response } from '../models/GenerateNonsenseWord200Response';
import { Praise200Response } from '../models/Praise200Response';
import { RandomJoke200Response } from '../models/RandomJoke200Response';
import { RandomMeme200Response } from '../models/RandomMeme200Response';
import { RateWord200Response } from '../models/RateWord200Response';
import { SearchGifs200Response } from '../models/SearchGifs200Response';
import { SearchGifs200ResponseImagesInner } from '../models/SearchGifs200ResponseImagesInner';
import { SearchJokes200Response } from '../models/SearchJokes200Response';
import { SearchJokes200ResponseJokesInner } from '../models/SearchJokes200ResponseJokesInner';
import { SearchMemes200Response } from '../models/SearchMemes200Response';
import { SearchMemes200ResponseMemesInner } from '../models/SearchMemes200ResponseMemesInner';
import { SubmitJoke200Response } from '../models/SubmitJoke200Response';

import { ObservableJokesApi } from "./ObservableAPI";
import { JokesApiRequestFactory, JokesApiResponseProcessor} from "../apis/JokesApi";

export interface JokesApiAnalyzeJokeRequest {
    /**
     * Post the joke as plain text.
     * @type string
     * @memberof JokesApianalyzeJoke
     */
    body?: string
}

export interface JokesApiDownvoteJokeRequest {
    /**
     * The object\&#39;s id.
     * @type number
     * @memberof JokesApidownvoteJoke
     */
    id: number
}

export interface JokesApiRandomJokeRequest {
    /**
     * A comma separated list of keywords.
     * @type string
     * @memberof JokesApirandomJoke
     */
    keywords?: string
    /**
     * A comma separated list of tags that the joke must have.
     * @type &#39;clean&#39; | &#39;yo_mama&#39; | &#39;chuck_norris&#39; | &#39;nsfw&#39; | &#39;racist&#39; | &#39;sexist&#39; | &#39;sexual&#39; | &#39;political&#39; | &#39;religious&#39; | &#39;knock_knock&#39; | &#39;christmas&#39; | &#39;nerdy&#39; | &#39;analogy&#39; | &#39;one_liner&#39; | &#39;dark&#39; | &#39;jewish&#39; | &#39;school&#39; | &#39;sport&#39; | &#39;law&#39; | &#39;kids&#39; | &#39;animal&#39; | &#39;relationship&#39; | &#39;insults&#39; | &#39;blondes&#39; | &#39;deep_thoughts&#39; | &#39;food&#39; | &#39;holiday&#39;
     * @memberof JokesApirandomJoke
     */
    includeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday'
    /**
     * A comma separated list of tags that the joke must not have.
     * @type &#39;clean&#39; | &#39;yo_mama&#39; | &#39;chuck_norris&#39; | &#39;nsfw&#39; | &#39;racist&#39; | &#39;sexist&#39; | &#39;sexual&#39; | &#39;political&#39; | &#39;religious&#39; | &#39;knock_knock&#39; | &#39;christmas&#39; | &#39;nerdy&#39; | &#39;analogy&#39; | &#39;one_liner&#39; | &#39;dark&#39; | &#39;jewish&#39; | &#39;school&#39; | &#39;sport&#39; | &#39;law&#39; | &#39;kids&#39; | &#39;animal&#39; | &#39;relationship&#39; | &#39;insults&#39; | &#39;blondes&#39; | &#39;deep_thoughts&#39; | &#39;food&#39; | &#39;holiday&#39;
     * @memberof JokesApirandomJoke
     */
    excludeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday'
    /**
     * The minimum rating between 0 and 10 the result should have.
     * @type number
     * @memberof JokesApirandomJoke
     */
    minRating?: number
    /**
     * The maximum number of letters in the joke.
     * @type number
     * @memberof JokesApirandomJoke
     */
    maxLength?: number
}

export interface JokesApiSearchJokesRequest {
    /**
     * A comma separated list of keywords.
     * @type string
     * @memberof JokesApisearchJokes
     */
    keywords?: string
    /**
     * A comma separated list of tags that the joke must have.
     * @type &#39;clean&#39; | &#39;yo_mama&#39; | &#39;chuck_norris&#39; | &#39;nsfw&#39; | &#39;racist&#39; | &#39;sexist&#39; | &#39;sexual&#39; | &#39;political&#39; | &#39;religious&#39; | &#39;knock_knock&#39; | &#39;christmas&#39; | &#39;nerdy&#39; | &#39;analogy&#39; | &#39;one_liner&#39; | &#39;dark&#39; | &#39;jewish&#39; | &#39;school&#39; | &#39;sport&#39; | &#39;law&#39; | &#39;kids&#39; | &#39;animal&#39; | &#39;relationship&#39; | &#39;insults&#39; | &#39;blondes&#39; | &#39;deep_thoughts&#39; | &#39;food&#39; | &#39;holiday&#39;
     * @memberof JokesApisearchJokes
     */
    includeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday'
    /**
     * A comma separated list of tags that the joke must not have.
     * @type &#39;clean&#39; | &#39;yo_mama&#39; | &#39;chuck_norris&#39; | &#39;nsfw&#39; | &#39;racist&#39; | &#39;sexist&#39; | &#39;sexual&#39; | &#39;political&#39; | &#39;religious&#39; | &#39;knock_knock&#39; | &#39;christmas&#39; | &#39;nerdy&#39; | &#39;analogy&#39; | &#39;one_liner&#39; | &#39;dark&#39; | &#39;jewish&#39; | &#39;school&#39; | &#39;sport&#39; | &#39;law&#39; | &#39;kids&#39; | &#39;animal&#39; | &#39;relationship&#39; | &#39;insults&#39; | &#39;blondes&#39; | &#39;deep_thoughts&#39; | &#39;food&#39; | &#39;holiday&#39;
     * @memberof JokesApisearchJokes
     */
    excludeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday'
    /**
     * The number of results to retrieve between 1 and 10.
     * @type number
     * @memberof JokesApisearchJokes
     */
    number?: number
    /**
     * The minimum rating between 0 and 10 the result should have.
     * @type number
     * @memberof JokesApisearchJokes
     */
    minRating?: number
    /**
     * The maximum number of letters in the joke.
     * @type number
     * @memberof JokesApisearchJokes
     */
    maxLength?: number
    /**
     * The number of results to skip.
     * @type number
     * @memberof JokesApisearchJokes
     */
    offset?: number
}

export interface JokesApiSubmitJokeRequest {
    /**
     * Post the joke as plain text.
     * @type string
     * @memberof JokesApisubmitJoke
     */
    body?: string
}

export interface JokesApiUpvoteJokeRequest {
    /**
     * The object\&#39;s id.
     * @type number
     * @memberof JokesApiupvoteJoke
     */
    id: number
}

export class ObjectJokesApi {
    private api: ObservableJokesApi

    public constructor(configuration: Configuration, requestFactory?: JokesApiRequestFactory, responseProcessor?: JokesApiResponseProcessor) {
        this.api = new ObservableJokesApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.
     * Analyze Joke
     * @param param the request object
     */
    public analyzeJokeWithHttpInfo(param: JokesApiAnalyzeJokeRequest = {}, options?: Configuration): Promise<HttpInfo<AnalyzeJoke200Response>> {
        return this.api.analyzeJokeWithHttpInfo(param.body,  options).toPromise();
    }

    /**
     * Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.
     * Analyze Joke
     * @param param the request object
     */
    public analyzeJoke(param: JokesApiAnalyzeJokeRequest = {}, options?: Configuration): Promise<AnalyzeJoke200Response> {
        return this.api.analyzeJoke(param.body,  options).toPromise();
    }

    /**
     * Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.
     * Downvote a Joke
     * @param param the request object
     */
    public downvoteJokeWithHttpInfo(param: JokesApiDownvoteJokeRequest, options?: Configuration): Promise<HttpInfo<SubmitJoke200Response>> {
        return this.api.downvoteJokeWithHttpInfo(param.id,  options).toPromise();
    }

    /**
     * Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.
     * Downvote a Joke
     * @param param the request object
     */
    public downvoteJoke(param: JokesApiDownvoteJokeRequest, options?: Configuration): Promise<SubmitJoke200Response> {
        return this.api.downvoteJoke(param.id,  options).toPromise();
    }

    /**
     * Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.
     * Random Joke
     * @param param the request object
     */
    public randomJokeWithHttpInfo(param: JokesApiRandomJokeRequest = {}, options?: Configuration): Promise<HttpInfo<RandomJoke200Response>> {
        return this.api.randomJokeWithHttpInfo(param.keywords, param.includeTags, param.excludeTags, param.minRating, param.maxLength,  options).toPromise();
    }

    /**
     * Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.
     * Random Joke
     * @param param the request object
     */
    public randomJoke(param: JokesApiRandomJokeRequest = {}, options?: Configuration): Promise<RandomJoke200Response> {
        return this.api.randomJoke(param.keywords, param.includeTags, param.excludeTags, param.minRating, param.maxLength,  options).toPromise();
    }

    /**
     * Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.
     * Search Jokes
     * @param param the request object
     */
    public searchJokesWithHttpInfo(param: JokesApiSearchJokesRequest = {}, options?: Configuration): Promise<HttpInfo<SearchJokes200Response>> {
        return this.api.searchJokesWithHttpInfo(param.keywords, param.includeTags, param.excludeTags, param.number, param.minRating, param.maxLength, param.offset,  options).toPromise();
    }

    /**
     * Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.
     * Search Jokes
     * @param param the request object
     */
    public searchJokes(param: JokesApiSearchJokesRequest = {}, options?: Configuration): Promise<SearchJokes200Response> {
        return this.api.searchJokes(param.keywords, param.includeTags, param.excludeTags, param.number, param.minRating, param.maxLength, param.offset,  options).toPromise();
    }

    /**
     * Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.
     * Submit Joke
     * @param param the request object
     */
    public submitJokeWithHttpInfo(param: JokesApiSubmitJokeRequest = {}, options?: Configuration): Promise<HttpInfo<SubmitJoke200Response>> {
        return this.api.submitJokeWithHttpInfo(param.body,  options).toPromise();
    }

    /**
     * Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.
     * Submit Joke
     * @param param the request object
     */
    public submitJoke(param: JokesApiSubmitJokeRequest = {}, options?: Configuration): Promise<SubmitJoke200Response> {
        return this.api.submitJoke(param.body,  options).toPromise();
    }

    /**
     * Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.
     * Upvote a Joke
     * @param param the request object
     */
    public upvoteJokeWithHttpInfo(param: JokesApiUpvoteJokeRequest, options?: Configuration): Promise<HttpInfo<SubmitJoke200Response>> {
        return this.api.upvoteJokeWithHttpInfo(param.id,  options).toPromise();
    }

    /**
     * Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.
     * Upvote a Joke
     * @param param the request object
     */
    public upvoteJoke(param: JokesApiUpvoteJokeRequest, options?: Configuration): Promise<SubmitJoke200Response> {
        return this.api.upvoteJoke(param.id,  options).toPromise();
    }

}

import { ObservableMemesApi } from "./ObservableAPI";
import { MemesApiRequestFactory, MemesApiResponseProcessor} from "../apis/MemesApi";

export interface MemesApiDownvoteMemeRequest {
    /**
     * The object\&#39;s id.
     * @type number
     * @memberof MemesApidownvoteMeme
     */
    id: number
}

export interface MemesApiRandomMemeRequest {
    /**
     * A comma separated list of keywords.
     * @type string
     * @memberof MemesApirandomMeme
     */
    keywords?: string
    /**
     * Whether the keywords should be found in the meme\&#39;s image.
     * @type boolean
     * @memberof MemesApirandomMeme
     */
    keywordsInImage?: boolean
    /**
     * The type of the content. Can be either \&#39;image\&#39; or \&#39;video\&#39; or specific formats such as \&#39;jpg\&#39;, \&#39;png\&#39;, \&#39;gif\&#39;, or \&#39;mp4\&#39;.
     * @type &#39;image&#39; | &#39;video&#39; | &#39;jpg&#39; | &#39;gif&#39; | &#39;png&#39; | &#39;mp4&#39;
     * @memberof MemesApirandomMeme
     */
    mediaType?: 'image' | 'video' | 'jpg' | 'gif' | 'png' | 'mp4'
    /**
     * The number of results to retrieve between 1 and 10.
     * @type number
     * @memberof MemesApirandomMeme
     */
    number?: number
    /**
     * The minimum rating between 0 and 10 the result should have.
     * @type number
     * @memberof MemesApirandomMeme
     */
    minRating?: number
}

export interface MemesApiSearchMemesRequest {
    /**
     * A comma separated list of keywords.
     * @type string
     * @memberof MemesApisearchMemes
     */
    keywords?: string
    /**
     * Whether the keywords should be found in the meme\&#39;s image.
     * @type boolean
     * @memberof MemesApisearchMemes
     */
    keywordsInImage?: boolean
    /**
     * The type of the content. Can be either \&#39;image\&#39; or \&#39;video\&#39; or specific formats such as \&#39;jpg\&#39;, \&#39;png\&#39;, \&#39;gif\&#39;, or \&#39;mp4\&#39;.
     * @type &#39;image&#39; | &#39;video&#39; | &#39;jpg&#39; | &#39;gif&#39; | &#39;png&#39; | &#39;mp4&#39;
     * @memberof MemesApisearchMemes
     */
    mediaType?: 'image' | 'video' | 'jpg' | 'gif' | 'png' | 'mp4'
    /**
     * The number of results to retrieve between 1 and 10.
     * @type number
     * @memberof MemesApisearchMemes
     */
    number?: number
    /**
     * The minimum rating between 0 and 10 the result should have.
     * @type number
     * @memberof MemesApisearchMemes
     */
    minRating?: number
    /**
     * The number of results to skip.
     * @type number
     * @memberof MemesApisearchMemes
     */
    offset?: number
}

export interface MemesApiUpvoteMemeRequest {
    /**
     * The object\&#39;s id.
     * @type number
     * @memberof MemesApiupvoteMeme
     */
    id: number
}

export class ObjectMemesApi {
    private api: ObservableMemesApi

    public constructor(configuration: Configuration, requestFactory?: MemesApiRequestFactory, responseProcessor?: MemesApiResponseProcessor) {
        this.api = new ObservableMemesApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
     * Downvote a Meme
     * @param param the request object
     */
    public downvoteMemeWithHttpInfo(param: MemesApiDownvoteMemeRequest, options?: Configuration): Promise<HttpInfo<SubmitJoke200Response>> {
        return this.api.downvoteMemeWithHttpInfo(param.id,  options).toPromise();
    }

    /**
     * Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
     * Downvote a Meme
     * @param param the request object
     */
    public downvoteMeme(param: MemesApiDownvoteMemeRequest, options?: Configuration): Promise<SubmitJoke200Response> {
        return this.api.downvoteMeme(param.id,  options).toPromise();
    }

    /**
     * Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
     * Random Meme
     * @param param the request object
     */
    public randomMemeWithHttpInfo(param: MemesApiRandomMemeRequest = {}, options?: Configuration): Promise<HttpInfo<RandomMeme200Response>> {
        return this.api.randomMemeWithHttpInfo(param.keywords, param.keywordsInImage, param.mediaType, param.number, param.minRating,  options).toPromise();
    }

    /**
     * Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
     * Random Meme
     * @param param the request object
     */
    public randomMeme(param: MemesApiRandomMemeRequest = {}, options?: Configuration): Promise<RandomMeme200Response> {
        return this.api.randomMeme(param.keywords, param.keywordsInImage, param.mediaType, param.number, param.minRating,  options).toPromise();
    }

    /**
     * Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
     * Search Memes
     * @param param the request object
     */
    public searchMemesWithHttpInfo(param: MemesApiSearchMemesRequest = {}, options?: Configuration): Promise<HttpInfo<SearchMemes200Response>> {
        return this.api.searchMemesWithHttpInfo(param.keywords, param.keywordsInImage, param.mediaType, param.number, param.minRating, param.offset,  options).toPromise();
    }

    /**
     * Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
     * Search Memes
     * @param param the request object
     */
    public searchMemes(param: MemesApiSearchMemesRequest = {}, options?: Configuration): Promise<SearchMemes200Response> {
        return this.api.searchMemes(param.keywords, param.keywordsInImage, param.mediaType, param.number, param.minRating, param.offset,  options).toPromise();
    }

    /**
     * Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
     * Upvote a Meme
     * @param param the request object
     */
    public upvoteMemeWithHttpInfo(param: MemesApiUpvoteMemeRequest, options?: Configuration): Promise<HttpInfo<SubmitJoke200Response>> {
        return this.api.upvoteMemeWithHttpInfo(param.id,  options).toPromise();
    }

    /**
     * Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
     * Upvote a Meme
     * @param param the request object
     */
    public upvoteMeme(param: MemesApiUpvoteMemeRequest, options?: Configuration): Promise<SubmitJoke200Response> {
        return this.api.upvoteMeme(param.id,  options).toPromise();
    }

}

import { ObservableOtherApi } from "./ObservableAPI";
import { OtherApiRequestFactory, OtherApiResponseProcessor} from "../apis/OtherApi";

export interface OtherApiGenerateNonsenseWordRequest {
}

export interface OtherApiInsultRequest {
    /**
     * The person\&#39;s name.
     * @type string
     * @memberof OtherApiinsult
     */
    name: string
    /**
     * The reason for the praise/insult.
     * @type string
     * @memberof OtherApiinsult
     */
    reason: string
}

export interface OtherApiPraiseRequest {
    /**
     * The person\&#39;s name.
     * @type string
     * @memberof OtherApipraise
     */
    name: string
    /**
     * The reason for the praise/insult.
     * @type string
     * @memberof OtherApipraise
     */
    reason: string
}

export interface OtherApiRateWordRequest {
    /**
     * The word to be rated.
     * @type string
     * @memberof OtherApirateWord
     */
    word: string
}

export interface OtherApiSearchGifsRequest {
    /**
     * A search query.
     * @type string
     * @memberof OtherApisearchGifs
     */
    query: string
    /**
     * The number of results to retrieve between 1 and 10.
     * @type number
     * @memberof OtherApisearchGifs
     */
    number?: number
}

export class ObjectOtherApi {
    private api: ObservableOtherApi

    public constructor(configuration: Configuration, requestFactory?: OtherApiRequestFactory, responseProcessor?: OtherApiResponseProcessor) {
        this.api = new ObservableOtherApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.
     * Generate Nonsense Word
     * @param param the request object
     */
    public generateNonsenseWordWithHttpInfo(param: OtherApiGenerateNonsenseWordRequest = {}, options?: Configuration): Promise<HttpInfo<GenerateNonsenseWord200Response>> {
        return this.api.generateNonsenseWordWithHttpInfo( options).toPromise();
    }

    /**
     * Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.
     * Generate Nonsense Word
     * @param param the request object
     */
    public generateNonsenseWord(param: OtherApiGenerateNonsenseWordRequest = {}, options?: Configuration): Promise<GenerateNonsenseWord200Response> {
        return this.api.generateNonsenseWord( options).toPromise();
    }

    /**
     * Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.
     * Insult
     * @param param the request object
     */
    public insultWithHttpInfo(param: OtherApiInsultRequest, options?: Configuration): Promise<HttpInfo<Praise200Response>> {
        return this.api.insultWithHttpInfo(param.name, param.reason,  options).toPromise();
    }

    /**
     * Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.
     * Insult
     * @param param the request object
     */
    public insult(param: OtherApiInsultRequest, options?: Configuration): Promise<Praise200Response> {
        return this.api.insult(param.name, param.reason,  options).toPromise();
    }

    /**
     * Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.
     * Praise
     * @param param the request object
     */
    public praiseWithHttpInfo(param: OtherApiPraiseRequest, options?: Configuration): Promise<HttpInfo<Praise200Response>> {
        return this.api.praiseWithHttpInfo(param.name, param.reason,  options).toPromise();
    }

    /**
     * Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.
     * Praise
     * @param param the request object
     */
    public praise(param: OtherApiPraiseRequest, options?: Configuration): Promise<Praise200Response> {
        return this.api.praise(param.name, param.reason,  options).toPromise();
    }

    /**
     * Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.
     * Rate Word
     * @param param the request object
     */
    public rateWordWithHttpInfo(param: OtherApiRateWordRequest, options?: Configuration): Promise<HttpInfo<RateWord200Response>> {
        return this.api.rateWordWithHttpInfo(param.word,  options).toPromise();
    }

    /**
     * Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.
     * Rate Word
     * @param param the request object
     */
    public rateWord(param: OtherApiRateWordRequest, options?: Configuration): Promise<RateWord200Response> {
        return this.api.rateWord(param.word,  options).toPromise();
    }

    /**
     * Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.
     * Search Gifs
     * @param param the request object
     */
    public searchGifsWithHttpInfo(param: OtherApiSearchGifsRequest, options?: Configuration): Promise<HttpInfo<SearchGifs200Response>> {
        return this.api.searchGifsWithHttpInfo(param.query, param.number,  options).toPromise();
    }

    /**
     * Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.
     * Search Gifs
     * @param param the request object
     */
    public searchGifs(param: OtherApiSearchGifsRequest, options?: Configuration): Promise<SearchGifs200Response> {
        return this.api.searchGifs(param.query, param.number,  options).toPromise();
    }

}
