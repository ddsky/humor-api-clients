-module(humorapi_inline_response_200).

-export([encode/1]).

-export_type([humorapi_inline_response_200/0]).

-type humorapi_inline_response_200() ::
    #{ 'jokes' := list()
     }.

encode(#{ 'jokes' := Jokes
        }) ->
    #{ 'jokes' => Jokes
     }.
