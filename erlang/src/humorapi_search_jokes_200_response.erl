-module(humorapi_search_jokes_200_response).

-export([encode/1]).

-export_type([humorapi_search_jokes_200_response/0]).

-type humorapi_search_jokes_200_response() ::
    #{ 'jokes' := humorapi_set:humorapi_set()
     }.

encode(#{ 'jokes' := Jokes
        }) ->
    #{ 'jokes' => Jokes
     }.
