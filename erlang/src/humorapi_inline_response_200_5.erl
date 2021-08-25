-module(humorapi_inline_response_200_5).

-export([encode/1]).

-export_type([humorapi_inline_response_200_5/0]).

-type humorapi_inline_response_200_5() ::
    #{ 'text' := binary()
     }.

encode(#{ 'text' := Text
        }) ->
    #{ 'text' => Text
     }.
