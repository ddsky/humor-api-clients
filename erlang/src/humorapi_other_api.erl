-module(humorapi_other_api).

-export([generate_nonsense_word/1, generate_nonsense_word/2,
         insult/3, insult/4,
         praise/3, praise/4,
         rate_word/2, rate_word/3,
         search_gifs/2, search_gifs/3]).

-define(BASE_URL, <<"">>).

%% @doc Generate Nonsense Word
%% Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.
-spec generate_nonsense_word(ctx:ctx()) -> {ok, humorapi_generate_nonsense_word_200_response:humorapi_generate_nonsense_word_200_response(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
generate_nonsense_word(Ctx) ->
    generate_nonsense_word(Ctx, #{}).

-spec generate_nonsense_word(ctx:ctx(), maps:map()) -> {ok, humorapi_generate_nonsense_word_200_response:humorapi_generate_nonsense_word_200_response(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
generate_nonsense_word(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(humorapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/words/nonsense/random"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = humorapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    humorapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Insult
%% Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.
-spec insult(ctx:ctx(), binary(), binary()) -> {ok, humorapi_praise_200_response:humorapi_praise_200_response(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
insult(Ctx, Name, Reason) ->
    insult(Ctx, Name, Reason, #{}).

-spec insult(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, humorapi_praise_200_response:humorapi_praise_200_response(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
insult(Ctx, Name, Reason, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(humorapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/insult"],
    QS = lists:flatten([{<<"name">>, Name}, {<<"reason">>, Reason}])++humorapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = humorapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    humorapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Praise
%% Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.
-spec praise(ctx:ctx(), binary(), binary()) -> {ok, humorapi_praise_200_response:humorapi_praise_200_response(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
praise(Ctx, Name, Reason) ->
    praise(Ctx, Name, Reason, #{}).

-spec praise(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, humorapi_praise_200_response:humorapi_praise_200_response(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
praise(Ctx, Name, Reason, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(humorapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/praise"],
    QS = lists:flatten([{<<"name">>, Name}, {<<"reason">>, Reason}])++humorapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = humorapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    humorapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Rate Word
%% Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.
-spec rate_word(ctx:ctx(), binary()) -> {ok, humorapi_rate_word_200_response:humorapi_rate_word_200_response(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
rate_word(Ctx, Word) ->
    rate_word(Ctx, Word, #{}).

-spec rate_word(ctx:ctx(), binary(), maps:map()) -> {ok, humorapi_rate_word_200_response:humorapi_rate_word_200_response(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
rate_word(Ctx, Word, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(humorapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/words/rate"],
    QS = lists:flatten([{<<"word">>, Word}])++humorapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = humorapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    humorapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Gifs
%% Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.
-spec search_gifs(ctx:ctx(), binary()) -> {ok, humorapi_search_gifs_200_response:humorapi_search_gifs_200_response(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
search_gifs(Ctx, Query) ->
    search_gifs(Ctx, Query, #{}).

-spec search_gifs(ctx:ctx(), binary(), maps:map()) -> {ok, humorapi_search_gifs_200_response:humorapi_search_gifs_200_response(), humorapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), humorapi_utils:response_info()}.
search_gifs(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(humorapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/gif/search"],
    QS = lists:flatten([{<<"query">>, Query}])++humorapi_utils:optional_params(['number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = humorapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    humorapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


