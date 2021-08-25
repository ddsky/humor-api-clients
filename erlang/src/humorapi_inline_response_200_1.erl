-module(humorapi_inline_response_200_1).

-export([encode/1]).

-export_type([humorapi_inline_response_200_1/0]).

-type humorapi_inline_response_200_1() ::
    #{ 'images' := list()
     }.

encode(#{ 'images' := Images
        }) ->
    #{ 'images' => Images
     }.
