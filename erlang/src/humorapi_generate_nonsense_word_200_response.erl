-module(humorapi_generate_nonsense_word_200_response).

-export([encode/1]).

-export_type([humorapi_generate_nonsense_word_200_response/0]).

-type humorapi_generate_nonsense_word_200_response() ::
    #{ 'word' := binary(),
       'rating' := integer()
     }.

encode(#{ 'word' := Word,
          'rating' := Rating
        }) ->
    #{ 'word' => Word,
       'rating' => Rating
     }.
