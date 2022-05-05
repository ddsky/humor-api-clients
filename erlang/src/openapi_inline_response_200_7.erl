-module(openapi_inline_response_200_7).

-export([encode/1]).

-export_type([openapi_inline_response_200_7/0]).

-type openapi_inline_response_200_7() ::
    #{ 'word' := binary(),
       'rating' := integer()
     }.

encode(#{ 'word' := Word,
          'rating' := Rating
        }) ->
    #{ 'word' => Word,
       'rating' => Rating
     }.
