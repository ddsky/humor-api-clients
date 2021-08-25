-module(humorapi_inline_response_200_3).

-export([encode/1]).

-export_type([humorapi_inline_response_200_3/0]).

-type humorapi_inline_response_200_3() ::
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
