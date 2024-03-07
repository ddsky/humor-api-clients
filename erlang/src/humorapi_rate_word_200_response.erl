-module(humorapi_rate_word_200_response).

-export([encode/1]).

-export_type([humorapi_rate_word_200_response/0]).

-type humorapi_rate_word_200_response() ::
    #{ 'rating' := integer()
     }.

encode(#{ 'rating' := Rating
        }) ->
    #{ 'rating' => Rating
     }.
