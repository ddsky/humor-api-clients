-module(humorapi_inline_response_200_9).

-export([encode/1]).

-export_type([humorapi_inline_response_200_9/0]).

-type humorapi_inline_response_200_9() ::
    #{ 'joke' := binary(),
       'tags' := list()
     }.

encode(#{ 'joke' := Joke,
          'tags' := Tags
        }) ->
    #{ 'joke' => Joke,
       'tags' => Tags
     }.
