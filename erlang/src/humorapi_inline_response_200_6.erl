-module(humorapi_inline_response_200_6).

-export([encode/1]).

-export_type([humorapi_inline_response_200_6/0]).

-type humorapi_inline_response_200_6() ::
    #{ 'rating' := integer()
     }.

encode(#{ 'rating' := Rating
        }) ->
    #{ 'rating' => Rating
     }.
