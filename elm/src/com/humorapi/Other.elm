{-
   Humor API
   Awesome Humor API.

   The version of the OpenAPI document: 1.0
   Contact: mail@humorapi.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git

   DO NOT EDIT THIS FILE MANUALLY.

   For more info on generating Elm code, see https://eriktim.github.io/openapi-elm/
-}


module Api.Request.Other exposing
    ( generateNonsenseWord
    , insult
    , praise
    , rateWord
    , searchGifs
    )

import Api
import Api.Data
import Dict
import Http
import Json.Decode
import Json.Encode



{-| Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.
-}
generateNonsenseWord : Api.Request Api.Data.InlineResponse2007
generateNonsenseWord =
    Api.request
        "GET"
        "/words/nonsense/random"
        []
        []
        []
        Nothing
        Api.Data.inlineResponse2007Decoder



{-| Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.
-}
insult : String -> String -> Api.Request Api.Data.InlineResponse2005
insult name_query reason_query =
    Api.request
        "GET"
        "/insult"
        []
        [ ( "name", Just <| identity name_query ), ( "reason", Just <| identity reason_query ) ]
        []
        Nothing
        Api.Data.inlineResponse2005Decoder



{-| Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.
-}
praise : String -> String -> Api.Request Api.Data.InlineResponse2005
praise name_query reason_query =
    Api.request
        "GET"
        "/praise"
        []
        [ ( "name", Just <| identity name_query ), ( "reason", Just <| identity reason_query ) ]
        []
        Nothing
        Api.Data.inlineResponse2005Decoder



{-| Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.
-}
rateWord : String -> Api.Request Api.Data.InlineResponse2006
rateWord word_query =
    Api.request
        "GET"
        "/words/rate"
        []
        [ ( "word", Just <| identity word_query ) ]
        []
        Nothing
        Api.Data.inlineResponse2006Decoder



{-| Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.
-}
searchGifs : String -> Maybe Int -> Api.Request Api.Data.InlineResponse2001
searchGifs query_query number_query =
    Api.request
        "GET"
        "/gif/search"
        []
        [ ( "query", Just <| identity query_query ), ( "number", Maybe.map String.fromInt number_query ) ]
        []
        Nothing
        Api.Data.inlineResponse2001Decoder
