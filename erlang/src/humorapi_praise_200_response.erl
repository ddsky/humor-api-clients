-module(humorapi_praise_200_response).

-export([encode/1]).

-export_type([humorapi_praise_200_response/0]).

-type humorapi_praise_200_response() ::
    #{ 'text' := binary()
     }.

encode(#{ 'text' := Text
        }) ->
    #{ 'text' => Text
     }.
