-module(humorapi_submit_joke_200_response).

-export([encode/1]).

-export_type([humorapi_submit_joke_200_response/0]).

-type humorapi_submit_joke_200_response() ::
    #{ 'message' := binary()
     }.

encode(#{ 'message' := Message
        }) ->
    #{ 'message' => Message
     }.
