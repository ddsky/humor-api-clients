-module(openapi_inline_response_200_5).

-export([encode/1]).

-export_type([openapi_inline_response_200_5/0]).

-type openapi_inline_response_200_5() ::
    #{ 'text' := binary()
     }.

encode(#{ 'text' := Text
        }) ->
    #{ 'text' => Text
     }.
