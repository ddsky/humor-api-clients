-module(openapi_inline_response_200_3).

-export([encode/1]).

-export_type([openapi_inline_response_200_3/0]).

-type openapi_inline_response_200_3() ::
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
