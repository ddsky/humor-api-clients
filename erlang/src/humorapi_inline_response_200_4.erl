-module(humorapi_inline_response_200_4).

-export([encode/1]).

-export_type([humorapi_inline_response_200_4/0]).

-type humorapi_inline_response_200_4() ::
    #{ 'id' := integer(),
       'joke' := binary()
     }.

encode(#{ 'id' := Id,
          'joke' := Joke
        }) ->
    #{ 'id' => Id,
       'joke' => Joke
     }.
