-module(humorapi_search_memes_200_response).

-export([encode/1]).

-export_type([humorapi_search_memes_200_response/0]).

-type humorapi_search_memes_200_response() ::
    #{ 'memes' := humorapi_set:humorapi_set()
     }.

encode(#{ 'memes' := Memes
        }) ->
    #{ 'memes' => Memes
     }.
