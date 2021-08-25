-module(humorapi_inline_response_200_2).

-export([encode/1]).

-export_type([humorapi_inline_response_200_2/0]).

-type humorapi_inline_response_200_2() ::
    #{ 'memes' := list()
     }.

encode(#{ 'memes' := Memes
        }) ->
    #{ 'memes' => Memes
     }.
