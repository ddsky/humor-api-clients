-module(humorapi_search_memes_200_response_memes_inner).

-export([encode/1]).

-export_type([humorapi_search_memes_200_response_memes_inner/0]).

-type humorapi_search_memes_200_response_memes_inner() ::
    #{ 'id' := integer(),
       'url' := binary(),
       'type' := binary()
     }.

encode(#{ 'id' := Id,
          'url' := Url,
          'type' := Type
        }) ->
    #{ 'id' => Id,
       'url' => Url,
       'type' => Type
     }.
