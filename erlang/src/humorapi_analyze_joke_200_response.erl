-module(humorapi_analyze_joke_200_response).

-export([encode/1]).

-export_type([humorapi_analyze_joke_200_response/0]).

-type humorapi_analyze_joke_200_response() ::
    #{ 'joke' := binary(),
       'tags' := list()
     }.

encode(#{ 'joke' := Joke,
          'tags' := Tags
        }) ->
    #{ 'joke' => Joke,
       'tags' => Tags
     }.
