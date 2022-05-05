-module(openapi_inline_response_200_4).

-export([encode/1]).

-export_type([openapi_inline_response_200_4/0]).

-type openapi_inline_response_200_4() ::
    #{ 'id' := integer(),
       'joke' := binary()
     }.

encode(#{ 'id' := Id,
          'joke' := Joke
        }) ->
    #{ 'id' => Id,
       'joke' => Joke
     }.
