-module(openapi_inline_response_200).

-export([encode/1]).

-export_type([openapi_inline_response_200/0]).

-type openapi_inline_response_200() ::
    #{ 'jokes' := openapi_set:openapi_set()
     }.

encode(#{ 'jokes' := Jokes
        }) ->
    #{ 'jokes' => Jokes
     }.
