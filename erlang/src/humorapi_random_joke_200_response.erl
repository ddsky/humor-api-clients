-module(humorapi_random_joke_200_response).

-export([encode/1]).

-export_type([humorapi_random_joke_200_response/0]).

-type humorapi_random_joke_200_response() ::
    #{ 'id' := integer(),
       'joke' := binary()
     }.

encode(#{ 'id' := Id,
          'joke' := Joke
        }) ->
    #{ 'id' => Id,
       'joke' => Joke
     }.
