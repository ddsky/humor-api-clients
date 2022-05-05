import { ResponseContext, RequestContext, HttpFile } from '../http/http';
import * as models from '../models/all';
import { Configuration} from '../configuration'
import { Observable, of, from } from '../rxjsStub';
import {mergeMap, map} from  '../rxjsStub';
import { InlineResponse200 } from '../models/InlineResponse200';
import { InlineResponse2001 } from '../models/InlineResponse2001';
import { InlineResponse2002 } from '../models/InlineResponse2002';
import { InlineResponse2003 } from '../models/InlineResponse2003';
import { InlineResponse2004 } from '../models/InlineResponse2004';
import { InlineResponse2005 } from '../models/InlineResponse2005';
import { InlineResponse2006 } from '../models/InlineResponse2006';
import { InlineResponse2007 } from '../models/InlineResponse2007';
import { InlineResponse2008 } from '../models/InlineResponse2008';
import { InlineResponse2009 } from '../models/InlineResponse2009';

import { JokesApiRequestFactory, JokesApiResponseProcessor} from "../apis/JokesApi";
export class ObservableJokesApi {
    private requestFactory: JokesApiRequestFactory;
    private responseProcessor: JokesApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: JokesApiRequestFactory,
        responseProcessor?: JokesApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new JokesApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new JokesApiResponseProcessor();
    }

    /**
     * Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.
     * Analyze Joke
     * @param body Post the joke as plain text.
     */
    public analyzeJoke(body?: string, _options?: Configuration): Observable<InlineResponse2009> {
        const requestContextPromise = this.requestFactory.analyzeJoke(body, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.analyzeJoke(rsp)));
            }));
    }

    /**
     * Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.
     * Downvote a Joke
     * @param id The object&#39;s id.
     */
    public downvoteJoke(id: number, _options?: Configuration): Observable<InlineResponse2008> {
        const requestContextPromise = this.requestFactory.downvoteJoke(id, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.downvoteJoke(rsp)));
            }));
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
    public randomJoke(keywords?: string, includeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday', excludeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday', minRating?: number, maxLength?: number, _options?: Configuration): Observable<InlineResponse2004> {
        const requestContextPromise = this.requestFactory.randomJoke(keywords, includeTags, excludeTags, minRating, maxLength, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.randomJoke(rsp)));
            }));
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
    public searchJokes(keywords?: string, includeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday', excludeTags?: 'clean' | 'yo_mama' | 'chuck_norris' | 'nsfw' | 'racist' | 'sexist' | 'sexual' | 'political' | 'religious' | 'knock_knock' | 'christmas' | 'nerdy' | 'analogy' | 'one_liner' | 'dark' | 'jewish' | 'school' | 'sport' | 'law' | 'kids' | 'animal' | 'relationship' | 'insults' | 'blondes' | 'deep_thoughts' | 'food' | 'holiday', number?: number, minRating?: number, maxLength?: number, offset?: number, _options?: Configuration): Observable<InlineResponse200> {
        const requestContextPromise = this.requestFactory.searchJokes(keywords, includeTags, excludeTags, number, minRating, maxLength, offset, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchJokes(rsp)));
            }));
    }

    /**
     * Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.
     * Submit Joke
     * @param body Post the joke as plain text.
     */
    public submitJoke(body?: string, _options?: Configuration): Observable<InlineResponse2008> {
        const requestContextPromise = this.requestFactory.submitJoke(body, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.submitJoke(rsp)));
            }));
    }

    /**
     * Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.
     * Upvote a Joke
     * @param id The object&#39;s id.
     */
    public upvoteJoke(id: number, _options?: Configuration): Observable<InlineResponse2008> {
        const requestContextPromise = this.requestFactory.upvoteJoke(id, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.upvoteJoke(rsp)));
            }));
    }

}

import { MemesApiRequestFactory, MemesApiResponseProcessor} from "../apis/MemesApi";
export class ObservableMemesApi {
    private requestFactory: MemesApiRequestFactory;
    private responseProcessor: MemesApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: MemesApiRequestFactory,
        responseProcessor?: MemesApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new MemesApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new MemesApiResponseProcessor();
    }

    /**
     * Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
     * Downvote a Meme
     * @param id The object&#39;s id.
     */
    public downvoteMeme(id: number, _options?: Configuration): Observable<InlineResponse2008> {
        const requestContextPromise = this.requestFactory.downvoteMeme(id, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.downvoteMeme(rsp)));
            }));
    }

    /**
     * Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
     * Random Meme
     * @param keywords A comma separated list of keywords.
     * @param keywordsInImage Whether the keywords should be found in the meme&#39;s image.
     * @param mediaType The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;.
     * @param number The number of results to retrieve between 1 and 10.
     * @param minRating The minimum rating between 0 and 10 the result should have.
     */
    public randomMeme(keywords?: string, keywordsInImage?: boolean, mediaType?: 'image' | 'video' | 'jpg' | 'gif' | 'png' | 'mp4', number?: number, minRating?: number, _options?: Configuration): Observable<InlineResponse2003> {
        const requestContextPromise = this.requestFactory.randomMeme(keywords, keywordsInImage, mediaType, number, minRating, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.randomMeme(rsp)));
            }));
    }

    /**
     * Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
     * Search Memes
     * @param keywords A comma separated list of keywords.
     * @param keywordsInImage Whether the keywords should be found in the meme&#39;s image.
     * @param mediaType The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;.
     * @param number The number of results to retrieve between 1 and 10.
     * @param minRating The minimum rating between 0 and 10 the result should have.
     * @param offset The number of results to skip.
     */
    public searchMemes(keywords?: string, keywordsInImage?: boolean, mediaType?: 'image' | 'video' | 'jpg' | 'gif' | 'png' | 'mp4', number?: number, minRating?: number, offset?: number, _options?: Configuration): Observable<InlineResponse2002> {
        const requestContextPromise = this.requestFactory.searchMemes(keywords, keywordsInImage, mediaType, number, minRating, offset, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchMemes(rsp)));
            }));
    }

    /**
     * Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
     * Upvote a Meme
     * @param id The object&#39;s id.
     */
    public upvoteMeme(id: number, _options?: Configuration): Observable<InlineResponse2008> {
        const requestContextPromise = this.requestFactory.upvoteMeme(id, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.upvoteMeme(rsp)));
            }));
    }

}

import { OtherApiRequestFactory, OtherApiResponseProcessor} from "../apis/OtherApi";
export class ObservableOtherApi {
    private requestFactory: OtherApiRequestFactory;
    private responseProcessor: OtherApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: OtherApiRequestFactory,
        responseProcessor?: OtherApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new OtherApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new OtherApiResponseProcessor();
    }

    /**
     * Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.
     * Generate Nonsense Word
     */
    public generateNonsenseWord(_options?: Configuration): Observable<InlineResponse2007> {
        const requestContextPromise = this.requestFactory.generateNonsenseWord(_options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.generateNonsenseWord(rsp)));
            }));
    }

    /**
     * Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.
     * Insult
     * @param name The person&#39;s name.
     * @param reason The reason for the praise/insult.
     */
    public insult(name: string, reason: string, _options?: Configuration): Observable<InlineResponse2005> {
        const requestContextPromise = this.requestFactory.insult(name, reason, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.insult(rsp)));
            }));
    }

    /**
     * Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.
     * Praise
     * @param name The person&#39;s name.
     * @param reason The reason for the praise/insult.
     */
    public praise(name: string, reason: string, _options?: Configuration): Observable<InlineResponse2005> {
        const requestContextPromise = this.requestFactory.praise(name, reason, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.praise(rsp)));
            }));
    }

    /**
     * Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.
     * Rate Word
     * @param word The word to be rated.
     */
    public rateWord(word: string, _options?: Configuration): Observable<InlineResponse2006> {
        const requestContextPromise = this.requestFactory.rateWord(word, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.rateWord(rsp)));
            }));
    }

    /**
     * Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.
     * Search Gifs
     * @param query A search query.
     * @param number The number of results to retrieve between 1 and 10.
     */
    public searchGifs(query: string, number?: number, _options?: Configuration): Observable<InlineResponse2001> {
        const requestContextPromise = this.requestFactory.searchGifs(query, number, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchGifs(rsp)));
            }));
    }

}
