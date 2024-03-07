-module(humorapi_search_gifs_200_response_images_inner).

-export([encode/1]).

-export_type([humorapi_search_gifs_200_response_images_inner/0]).

-type humorapi_search_gifs_200_response_images_inner() ::
    #{ 'url' := binary(),
       'width' := integer(),
       'height' := integer()
     }.

encode(#{ 'url' := Url,
          'width' := Width,
          'height' := Height
        }) ->
    #{ 'url' => Url,
       'width' => Width,
       'height' => Height
     }.
