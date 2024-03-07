-module(humorapi_random_meme_200_response).

-export([encode/1]).

-export_type([humorapi_random_meme_200_response/0]).

-type humorapi_random_meme_200_response() ::
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
