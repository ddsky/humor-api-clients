-module(humorapi_jokes_api).

-export([analyze_joke/2, analyze_joke/3,
         downvote_joke/2, downvote_joke/3,
         random_joke/1, random_joke/2,
         search_jokes/1, search_jokes/2,
         submit_joke/2, submit_joke/3,
         upvote_joke/2, upvote_joke/3]).

-define(BASE_URL, "").

%% @doc Analyze Joke
%% Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.
-spec analyze_joke(ctx:ctx()) -> {ok, humorapi_inline_response_200_9:humorapi_inline_response_200_9(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
analyze_joke(Ctx) ->
    analyze_joke(Ctx, #{}).

-spec analyze_joke(ctx:ctx(), maps:map()) -> {ok, humorapi_inline_response_200_9:humorapi_inline_response_200_9(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
analyze_joke(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/jokes/analyze"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = humorapi_utils:select_header_content_type([<<"text/plain">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    humorapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Downvote a Joke
%% Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.
-spec downvote_joke(ctx:ctx(), integer()) -> {ok, humorapi_inline_response_200_8:humorapi_inline_response_200_8(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
downvote_joke(Ctx, Id) ->
    downvote_joke(Ctx, Id, #{}).

-spec downvote_joke(ctx:ctx(), integer(), maps:map()) -> {ok, humorapi_inline_response_200_8:humorapi_inline_response_200_8(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
downvote_joke(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/jokes/", Id, "/downvote"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = humorapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    humorapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Random Joke
%% Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.
-spec random_joke(ctx:ctx()) -> {ok, humorapi_inline_response_200_4:humorapi_inline_response_200_4(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
random_joke(Ctx) ->
    random_joke(Ctx, #{}).

-spec random_joke(ctx:ctx(), maps:map()) -> {ok, humorapi_inline_response_200_4:humorapi_inline_response_200_4(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
random_joke(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/jokes/random"],
    QS = lists:flatten([])++humorapi_utils:optional_params(['keywords', 'include-tags', 'exclude-tags', 'min-rating', 'max-length'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = humorapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    humorapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Jokes
%% Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.
-spec search_jokes(ctx:ctx()) -> {ok, humorapi_inline_response_200:humorapi_inline_response_200(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
search_jokes(Ctx) ->
    search_jokes(Ctx, #{}).

-spec search_jokes(ctx:ctx(), maps:map()) -> {ok, humorapi_inline_response_200:humorapi_inline_response_200(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
search_jokes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/jokes/search"],
    QS = lists:flatten([])++humorapi_utils:optional_params(['keywords', 'include-tags', 'exclude-tags', 'number', 'min-rating', 'max-length', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = humorapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    humorapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Submit Joke
%% Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.
-spec submit_joke(ctx:ctx()) -> {ok, humorapi_inline_response_200_8:humorapi_inline_response_200_8(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
submit_joke(Ctx) ->
    submit_joke(Ctx, #{}).

-spec submit_joke(ctx:ctx(), maps:map()) -> {ok, humorapi_inline_response_200_8:humorapi_inline_response_200_8(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
submit_joke(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/jokes"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = humorapi_utils:select_header_content_type([<<"text/plain">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    humorapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Upvote a Joke
%% Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.
-spec upvote_joke(ctx:ctx(), integer()) -> {ok, humorapi_inline_response_200_8:humorapi_inline_response_200_8(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
upvote_joke(Ctx, Id) ->
    upvote_joke(Ctx, Id, #{}).

-spec upvote_joke(ctx:ctx(), integer(), maps:map()) -> {ok, humorapi_inline_response_200_8:humorapi_inline_response_200_8(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
upvote_joke(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/jokes/", Id, "/upvote"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = humorapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    humorapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


