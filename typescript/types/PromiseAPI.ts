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
import { ObservableJokesApi } from './ObservableAPI';

import { JokesApiRequestFactory, JokesApiResponseProcessor} from "../apis/JokesApi";
export class PromiseJokesApi {
    private api: ObservableJokesApi

    public constructor(
        configuration: Configuration,
        requestFactory?: JokesApiRequestFactory,
        responseProcessor?: JokesApiResponseProcessor
    ) {
        this.api = new ObservableJokesApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.
     * Analyze Joke
     * @param body Post the joke as plain text.
     */
    public analyzeJokeWithHttpInfo(body?: string, _options?: Configuration): Promise<HttpInfo<AnalyzeJoke200Response>> {
        const result = this.api.analyzeJokeWithHttpInfo(body, _options);
        return result.toPromise();
    }

    /**
     * Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.
     * Analyze Joke
     * @param body Post the joke as plain text.
     */
    public analyzeJoke(body?: string, _options?: Configuration): Promise<AnalyzeJoke200Response> {
        const result = this.api.analyzeJoke(body, _options);
        return result.toPromise();
    }

    /**
     * Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.
     * Downvote a Joke
     * @param id The object\&#39;s id.
     */
    public downvoteJokeWithHttpInfo(id: number, _options?: Configuration): Promise<HttpInfo<SubmitJoke200Response>> {
        const result = this.api.downvoteJokeWithHttpInfo(id, _options);
        return result.toPromise();
    }

    /**
     * Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.
     * Downvote a Joke
     * @param id The object\&#39;s id.
     */
    public downvoteJoke(id: number, _options?: Configuration): Promise<SubmitJoke200Response> {
        const result = this.api.downvoteJoke(id, _options);
        return result.toPromise();
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
    public randomJokeWithHttpInfo(keywords?: string, includeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday', excludeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday', minRating?: number, maxLength?: number, _options?: Configuration): Promise<HttpInfo<RandomJoke200Response>> {
        const result = this.api.randomJokeWithHttpInfo(keywords, includeTags, excludeTags, minRating, maxLength, _options);
        return result.toPromise();
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
    public randomJoke(keywords?: string, includeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday', excludeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday', minRating?: number, maxLength?: number, _options?: Configuration): Promise<RandomJoke200Response> {
        const result = this.api.randomJoke(keywords, includeTags, excludeTags, minRating, maxLength, _options);
        return result.toPromise();
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
    public searchJokesWithHttpInfo(keywords?: string, includeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday', excludeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday', number?: number, minRating?: number, maxLength?: number, offset?: number, _options?: Configuration): Promise<HttpInfo<SearchJokes200Response>> {
        const result = this.api.searchJokesWithHttpInfo(keywords, includeTags, excludeTags, number, minRating, maxLength, offset, _options);
        return result.toPromise();
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
    public searchJokes(keywords?: string, includeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday', excludeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday', number?: number, minRating?: number, maxLength?: number, offset?: number, _options?: Configuration): Promise<SearchJokes200Response> {
        const result = this.api.searchJokes(keywords, includeTags, excludeTags, number, minRating, maxLength, offset, _options);
        return result.toPromise();
    }

    /**
     * Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.
     * Submit Joke
     * @param body Post the joke as plain text.
     */
    public submitJokeWithHttpInfo(body?: string, _options?: Configuration): Promise<HttpInfo<SubmitJoke200Response>> {
        const result = this.api.submitJokeWithHttpInfo(body, _options);
        return result.toPromise();
    }

    /**
     * Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.
     * Submit Joke
     * @param body Post the joke as plain text.
     */
    public submitJoke(body?: string, _options?: Configuration): Promise<SubmitJoke200Response> {
        const result = this.api.submitJoke(body, _options);
        return result.toPromise();
    }

    /**
     * Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.
     * Upvote a Joke
     * @param id The object\&#39;s id.
     */
    public upvoteJokeWithHttpInfo(id: number, _options?: Configuration): Promise<HttpInfo<SubmitJoke200Response>> {
        const result = this.api.upvoteJokeWithHttpInfo(id, _options);
        return result.toPromise();
    }

    /**
     * Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.
     * Upvote a Joke
     * @param id The object\&#39;s id.
     */
    public upvoteJoke(id: number, _options?: Configuration): Promise<SubmitJoke200Response> {
        const result = this.api.upvoteJoke(id, _options);
        return result.toPromise();
    }


}



import { ObservableMemesApi } from './ObservableAPI';

import { MemesApiRequestFactory, MemesApiResponseProcessor} from "../apis/MemesApi";
export class PromiseMemesApi {
    private api: ObservableMemesApi

    public constructor(
        configuration: Configuration,
        requestFactory?: MemesApiRequestFactory,
        responseProcessor?: MemesApiResponseProcessor
    ) {
        this.api = new ObservableMemesApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
     * Downvote a Meme
     * @param id The object\&#39;s id.
     */
    public downvoteMemeWithHttpInfo(id: number, _options?: Configuration): Promise<HttpInfo<SubmitJoke200Response>> {
        const result = this.api.downvoteMemeWithHttpInfo(id, _options);
        return result.toPromise();
    }

    /**
     * Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
     * Downvote a Meme
     * @param id The object\&#39;s id.
     */
    public downvoteMeme(id: number, _options?: Configuration): Promise<SubmitJoke200Response> {
        const result = this.api.downvoteMeme(id, _options);
        return result.toPromise();
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
    public randomMemeWithHttpInfo(keywords?: string, keywordsInImage?: boolean, mediaType?: 'image' | 'video' | 'jpg' | 'gif' | 'png' | 'mp4', number?: number, minRating?: number, _options?: Configuration): Promise<HttpInfo<RandomMeme200Response>> {
        const result = this.api.randomMemeWithHttpInfo(keywords, keywordsInImage, mediaType, number, minRating, _options);
        return result.toPromise();
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
    public randomMeme(keywords?: string, keywordsInImage?: boolean, mediaType?: 'image' | 'video' | 'jpg' | 'gif' | 'png' | 'mp4', number?: number, minRating?: number, _options?: Configuration): Promise<RandomMeme200Response> {
        const result = this.api.randomMeme(keywords, keywordsInImage, mediaType, number, minRating, _options);
        return result.toPromise();
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
    public searchMemesWithHttpInfo(keywords?: string, keywordsInImage?: boolean, mediaType?: 'image' | 'video' | 'jpg' | 'gif' | 'png' | 'mp4', number?: number, minRating?: number, offset?: number, _options?: Configuration): Promise<HttpInfo<SearchMemes200Response>> {
        const result = this.api.searchMemesWithHttpInfo(keywords, keywordsInImage, mediaType, number, minRating, offset, _options);
        return result.toPromise();
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
    public searchMemes(keywords?: string, keywordsInImage?: boolean, mediaType?: 'image' | 'video' | 'jpg' | 'gif' | 'png' | 'mp4', number?: number, minRating?: number, offset?: number, _options?: Configuration): Promise<SearchMemes200Response> {
        const result = this.api.searchMemes(keywords, keywordsInImage, mediaType, number, minRating, offset, _options);
        return result.toPromise();
    }

    /**
     * Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
     * Upvote a Meme
     * @param id The object\&#39;s id.
     */
    public upvoteMemeWithHttpInfo(id: number, _options?: Configuration): Promise<HttpInfo<SubmitJoke200Response>> {
        const result = this.api.upvoteMemeWithHttpInfo(id, _options);
        return result.toPromise();
    }

    /**
     * Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
     * Upvote a Meme
     * @param id The object\&#39;s id.
     */
    public upvoteMeme(id: number, _options?: Configuration): Promise<SubmitJoke200Response> {
        const result = this.api.upvoteMeme(id, _options);
        return result.toPromise();
    }


}



import { ObservableOtherApi } from './ObservableAPI';

import { OtherApiRequestFactory, OtherApiResponseProcessor} from "../apis/OtherApi";
export class PromiseOtherApi {
    private api: ObservableOtherApi

    public constructor(
        configuration: Configuration,
        requestFactory?: OtherApiRequestFactory,
        responseProcessor?: OtherApiResponseProcessor
    ) {
        this.api = new ObservableOtherApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.
     * Generate Nonsense Word
     */
    public generateNonsenseWordWithHttpInfo(_options?: Configuration): Promise<HttpInfo<GenerateNonsenseWord200Response>> {
        const result = this.api.generateNonsenseWordWithHttpInfo(_options);
        return result.toPromise();
    }

    /**
     * Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.
     * Generate Nonsense Word
     */
    public generateNonsenseWord(_options?: Configuration): Promise<GenerateNonsenseWord200Response> {
        const result = this.api.generateNonsenseWord(_options);
        return result.toPromise();
    }

    /**
     * Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.
     * Insult
     * @param name The person\&#39;s name.
     * @param reason The reason for the praise/insult.
     */
    public insultWithHttpInfo(name: string, reason: string, _options?: Configuration): Promise<HttpInfo<Praise200Response>> {
        const result = this.api.insultWithHttpInfo(name, reason, _options);
        return result.toPromise();
    }

    /**
     * Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.
     * Insult
     * @param name The person\&#39;s name.
     * @param reason The reason for the praise/insult.
     */
    public insult(name: string, reason: string, _options?: Configuration): Promise<Praise200Response> {
        const result = this.api.insult(name, reason, _options);
        return result.toPromise();
    }

    /**
     * Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.
     * Praise
     * @param name The person\&#39;s name.
     * @param reason The reason for the praise/insult.
     */
    public praiseWithHttpInfo(name: string, reason: string, _options?: Configuration): Promise<HttpInfo<Praise200Response>> {
        const result = this.api.praiseWithHttpInfo(name, reason, _options);
        return result.toPromise();
    }

    /**
     * Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.
     * Praise
     * @param name The person\&#39;s name.
     * @param reason The reason for the praise/insult.
     */
    public praise(name: string, reason: string, _options?: Configuration): Promise<Praise200Response> {
        const result = this.api.praise(name, reason, _options);
        return result.toPromise();
    }

    /**
     * Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.
     * Rate Word
     * @param word The word to be rated.
     */
    public rateWordWithHttpInfo(word: string, _options?: Configuration): Promise<HttpInfo<RateWord200Response>> {
        const result = this.api.rateWordWithHttpInfo(word, _options);
        return result.toPromise();
    }

    /**
     * Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.
     * Rate Word
     * @param word The word to be rated.
     */
    public rateWord(word: string, _options?: Configuration): Promise<RateWord200Response> {
        const result = this.api.rateWord(word, _options);
        return result.toPromise();
    }

    /**
     * Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.
     * Search Gifs
     * @param query A search query.
     * @param number The number of results to retrieve between 1 and 10.
     */
    public searchGifsWithHttpInfo(query: string, number?: number, _options?: Configuration): Promise<HttpInfo<SearchGifs200Response>> {
        const result = this.api.searchGifsWithHttpInfo(query, number, _options);
        return result.toPromise();
    }

    /**
     * Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.
     * Search Gifs
     * @param query A search query.
     * @param number The number of results to retrieve between 1 and 10.
     */
    public searchGifs(query: string, number?: number, _options?: Configuration): Promise<SearchGifs200Response> {
        const result = this.api.searchGifs(query, number, _options);
        return result.toPromise();
    }


}



