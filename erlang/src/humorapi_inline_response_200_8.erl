-module(humorapi_inline_response_200_8).

-export([encode/1]).

-export_type([humorapi_inline_response_200_8/0]).

-type humorapi_inline_response_200_8() ::
    #{ 'message' := binary()
     }.

encode(#{ 'message' := Message
        }) ->
    #{ 'message' => Message
     }.
