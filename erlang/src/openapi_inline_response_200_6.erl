-module(openapi_inline_response_200_6).

-export([encode/1]).

-export_type([openapi_inline_response_200_6/0]).

-type openapi_inline_response_200_6() ::
    #{ 'rating' := integer()
     }.

encode(#{ 'rating' := Rating
        }) ->
    #{ 'rating' => Rating
     }.
