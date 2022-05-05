-module(openapi_inline_response_200_1).

-export([encode/1]).

-export_type([openapi_inline_response_200_1/0]).

-type openapi_inline_response_200_1() ::
    #{ 'images' := openapi_set:openapi_set()
     }.

encode(#{ 'images' := Images
        }) ->
    #{ 'images' => Images
     }.
