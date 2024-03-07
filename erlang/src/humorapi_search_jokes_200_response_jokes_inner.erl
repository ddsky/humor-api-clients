-module(humorapi_search_jokes_200_response_jokes_inner).

-export([encode/1]).

-export_type([humorapi_search_jokes_200_response_jokes_inner/0]).

-type humorapi_search_jokes_200_response_jokes_inner() ::
    #{ 'id' := integer(),
       'joke' := binary()
     }.

encode(#{ 'id' := Id,
          'joke' := Joke
        }) ->
    #{ 'id' => Id,
       'joke' => Joke
     }.
