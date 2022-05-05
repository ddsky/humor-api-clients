-module(openapi_inline_response_200_2).

-export([encode/1]).

-export_type([openapi_inline_response_200_2/0]).

-type openapi_inline_response_200_2() ::
    #{ 'memes' := openapi_set:openapi_set()
     }.

encode(#{ 'memes' := Memes
        }) ->
    #{ 'memes' => Memes
     }.
