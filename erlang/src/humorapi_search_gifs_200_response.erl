-module(humorapi_search_gifs_200_response).

-export([encode/1]).

-export_type([humorapi_search_gifs_200_response/0]).

-type humorapi_search_gifs_200_response() ::
    #{ 'images' := humorapi_set:humorapi_set()
     }.

encode(#{ 'images' := Images
        }) ->
    #{ 'images' => Images
     }.
