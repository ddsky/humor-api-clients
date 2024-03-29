-module(humorapi_memes_api).

-export([downvote_meme/2, downvote_meme/3,
         random_meme/1, random_meme/2,
         search_memes/1, search_memes/2,
         upvote_meme/2, upvote_meme/3]).

-define(BASE_URL, <<"">>).

%% @doc Downvote a Meme
%% Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
-spec downvote_meme(ctx:ctx(), integer()) -> {ok, humorapi_submit_joke_200_response:humorapi_submit_joke_200_response(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
downvote_meme(Ctx, Id) ->
    downvote_meme(Ctx, Id, #{}).

-spec downvote_meme(ctx:ctx(), integer(), maps:map()) -> {ok, humorapi_submit_joke_200_response:humorapi_submit_joke_200_response(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
downvote_meme(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(humorapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/memes/", Id, "/downvote"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = humorapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    humorapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Random Meme
%% Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
-spec random_meme(ctx:ctx()) -> {ok, humorapi_random_meme_200_response:humorapi_random_meme_200_response(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
random_meme(Ctx) ->
    random_meme(Ctx, #{}).

-spec random_meme(ctx:ctx(), maps:map()) -> {ok, humorapi_random_meme_200_response:humorapi_random_meme_200_response(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
random_meme(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(humorapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/memes/random"],
    QS = lists:flatten([])++humorapi_utils:optional_params(['keywords', 'keywords-in-image', 'media-type', 'number', 'min-rating'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = humorapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    humorapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Memes
%% Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
-spec search_memes(ctx:ctx()) -> {ok, humorapi_search_memes_200_response:humorapi_search_memes_200_response(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
search_memes(Ctx) ->
    search_memes(Ctx, #{}).

-spec search_memes(ctx:ctx(), maps:map()) -> {ok, humorapi_search_memes_200_response:humorapi_search_memes_200_response(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
search_memes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(humorapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/memes/search"],
    QS = lists:flatten([])++humorapi_utils:optional_params(['keywords', 'keywords-in-image', 'media-type', 'number', 'min-rating', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = humorapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    humorapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Upvote a Meme
%% Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
-spec upvote_meme(ctx:ctx(), integer()) -> {ok, humorapi_submit_joke_200_response:humorapi_submit_joke_200_response(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
upvote_meme(Ctx, Id) ->
    upvote_meme(Ctx, Id, #{}).

-spec upvote_meme(ctx:ctx(), integer(), maps:map()) -> {ok, humorapi_submit_joke_200_response:humorapi_submit_joke_200_response(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
upvote_meme(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(humorapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/memes/", Id, "/upvote"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = humorapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    humorapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


