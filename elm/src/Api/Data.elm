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


module Api.Data exposing
    ( AnalyzeJoke200Response
    , GenerateNonsenseWord200Response
    , Praise200Response
    , RandomJoke200Response
    , RandomMeme200Response
    , RateWord200Response
    , SearchGifs200Response
    , SearchGifs200ResponseImagesInner
    , SearchJokes200Response
    , SearchJokes200ResponseJokesInner
    , SearchMemes200Response
    , SearchMemes200ResponseMemesInner
    , SubmitJoke200Response
    , encodeAnalyzeJoke200Response
    , encodeGenerateNonsenseWord200Response
    , encodePraise200Response
    , encodeRandomJoke200Response
    , encodeRandomMeme200Response
    , encodeRateWord200Response
    , encodeSearchGifs200Response
    , encodeSearchGifs200ResponseImagesInner
    , encodeSearchJokes200Response
    , encodeSearchJokes200ResponseJokesInner
    , encodeSearchMemes200Response
    , encodeSearchMemes200ResponseMemesInner
    , encodeSubmitJoke200Response
    , analyzeJoke200ResponseDecoder
    , generateNonsenseWord200ResponseDecoder
    , praise200ResponseDecoder
    , randomJoke200ResponseDecoder
    , randomMeme200ResponseDecoder
    , rateWord200ResponseDecoder
    , searchGifs200ResponseDecoder
    , searchGifs200ResponseImagesInnerDecoder
    , searchJokes200ResponseDecoder
    , searchJokes200ResponseJokesInnerDecoder
    , searchMemes200ResponseDecoder
    , searchMemes200ResponseMemesInnerDecoder
    , submitJoke200ResponseDecoder
    )

import Api
import Dict
import Json.Decode
import Json.Encode


-- MODEL


{-| 
-}
type alias AnalyzeJoke200Response =
    { joke : String
    , tags : List String
    }


{-| 
-}
type alias GenerateNonsenseWord200Response =
    { word : String
    , rating : Float
    }


{-| 
-}
type alias Praise200Response =
    { text : String
    }


{-| 
-}
type alias RandomJoke200Response =
    { id : Int
    , joke : String
    }


{-| 
-}
type alias RandomMeme200Response =
    { id : Int
    , url : String
    , type_ : String
    }


{-| 
-}
type alias RateWord200Response =
    { rating : Float
    }


{-| 
-}
type alias SearchGifs200Response =
    { images : List SearchGifs200ResponseImagesInner
    }


type alias SearchGifs200ResponseImagesInner =
    { url : String
    , width : Int
    , height : Int
    }


{-| 
-}
type alias SearchJokes200Response =
    { jokes : List SearchJokes200ResponseJokesInner
    }


type alias SearchJokes200ResponseJokesInner =
    { id : Int
    , joke : String
    }


{-| 
-}
type alias SearchMemes200Response =
    { memes : List SearchMemes200ResponseMemesInner
    }


type alias SearchMemes200ResponseMemesInner =
    { id : Int
    , url : String
    , type_ : String
    }


{-| 
-}
type alias SubmitJoke200Response =
    { message : String
    }


-- ENCODER


encodeAnalyzeJoke200Response : AnalyzeJoke200Response -> Json.Encode.Value
encodeAnalyzeJoke200Response =
    encodeObject << encodeAnalyzeJoke200ResponsePairs


encodeAnalyzeJoke200ResponseWithTag : ( String, String ) -> AnalyzeJoke200Response -> Json.Encode.Value
encodeAnalyzeJoke200ResponseWithTag (tagField, tag) model =
    encodeObject (encodeAnalyzeJoke200ResponsePairs model ++ [ encode tagField Json.Encode.string tag ])


encodeAnalyzeJoke200ResponsePairs : AnalyzeJoke200Response -> List EncodedField
encodeAnalyzeJoke200ResponsePairs model =
    let
        pairs =
            [ encode "joke" Json.Encode.string model.joke
            , encode "tags" (Json.Encode.list Json.Encode.string) model.tags
            ]
    in
    pairs


encodeGenerateNonsenseWord200Response : GenerateNonsenseWord200Response -> Json.Encode.Value
encodeGenerateNonsenseWord200Response =
    encodeObject << encodeGenerateNonsenseWord200ResponsePairs


encodeGenerateNonsenseWord200ResponseWithTag : ( String, String ) -> GenerateNonsenseWord200Response -> Json.Encode.Value
encodeGenerateNonsenseWord200ResponseWithTag (tagField, tag) model =
    encodeObject (encodeGenerateNonsenseWord200ResponsePairs model ++ [ encode tagField Json.Encode.string tag ])


encodeGenerateNonsenseWord200ResponsePairs : GenerateNonsenseWord200Response -> List EncodedField
encodeGenerateNonsenseWord200ResponsePairs model =
    let
        pairs =
            [ encode "word" Json.Encode.string model.word
            , encode "rating" Json.Encode.float model.rating
            ]
    in
    pairs


encodePraise200Response : Praise200Response -> Json.Encode.Value
encodePraise200Response =
    encodeObject << encodePraise200ResponsePairs


encodePraise200ResponseWithTag : ( String, String ) -> Praise200Response -> Json.Encode.Value
encodePraise200ResponseWithTag (tagField, tag) model =
    encodeObject (encodePraise200ResponsePairs model ++ [ encode tagField Json.Encode.string tag ])


encodePraise200ResponsePairs : Praise200Response -> List EncodedField
encodePraise200ResponsePairs model =
    let
        pairs =
            [ encode "text" Json.Encode.string model.text
            ]
    in
    pairs


encodeRandomJoke200Response : RandomJoke200Response -> Json.Encode.Value
encodeRandomJoke200Response =
    encodeObject << encodeRandomJoke200ResponsePairs


encodeRandomJoke200ResponseWithTag : ( String, String ) -> RandomJoke200Response -> Json.Encode.Value
encodeRandomJoke200ResponseWithTag (tagField, tag) model =
    encodeObject (encodeRandomJoke200ResponsePairs model ++ [ encode tagField Json.Encode.string tag ])


encodeRandomJoke200ResponsePairs : RandomJoke200Response -> List EncodedField
encodeRandomJoke200ResponsePairs model =
    let
        pairs =
            [ encode "id" Json.Encode.int model.id
            , encode "joke" Json.Encode.string model.joke
            ]
    in
    pairs


encodeRandomMeme200Response : RandomMeme200Response -> Json.Encode.Value
encodeRandomMeme200Response =
    encodeObject << encodeRandomMeme200ResponsePairs


encodeRandomMeme200ResponseWithTag : ( String, String ) -> RandomMeme200Response -> Json.Encode.Value
encodeRandomMeme200ResponseWithTag (tagField, tag) model =
    encodeObject (encodeRandomMeme200ResponsePairs model ++ [ encode tagField Json.Encode.string tag ])


encodeRandomMeme200ResponsePairs : RandomMeme200Response -> List EncodedField
encodeRandomMeme200ResponsePairs model =
    let
        pairs =
            [ encode "id" Json.Encode.int model.id
            , encode "url" Json.Encode.string model.url
            , encode "type" Json.Encode.string model.type_
            ]
    in
    pairs


encodeRateWord200Response : RateWord200Response -> Json.Encode.Value
encodeRateWord200Response =
    encodeObject << encodeRateWord200ResponsePairs


encodeRateWord200ResponseWithTag : ( String, String ) -> RateWord200Response -> Json.Encode.Value
encodeRateWord200ResponseWithTag (tagField, tag) model =
    encodeObject (encodeRateWord200ResponsePairs model ++ [ encode tagField Json.Encode.string tag ])


encodeRateWord200ResponsePairs : RateWord200Response -> List EncodedField
encodeRateWord200ResponsePairs model =
    let
        pairs =
            [ encode "rating" Json.Encode.float model.rating
            ]
    in
    pairs


encodeSearchGifs200Response : SearchGifs200Response -> Json.Encode.Value
encodeSearchGifs200Response =
    encodeObject << encodeSearchGifs200ResponsePairs


encodeSearchGifs200ResponseWithTag : ( String, String ) -> SearchGifs200Response -> Json.Encode.Value
encodeSearchGifs200ResponseWithTag (tagField, tag) model =
    encodeObject (encodeSearchGifs200ResponsePairs model ++ [ encode tagField Json.Encode.string tag ])


encodeSearchGifs200ResponsePairs : SearchGifs200Response -> List EncodedField
encodeSearchGifs200ResponsePairs model =
    let
        pairs =
            [ encode "images" (Json.Encode.list encodeSearchGifs200ResponseImagesInner) model.images
            ]
    in
    pairs


encodeSearchGifs200ResponseImagesInner : SearchGifs200ResponseImagesInner -> Json.Encode.Value
encodeSearchGifs200ResponseImagesInner =
    encodeObject << encodeSearchGifs200ResponseImagesInnerPairs


encodeSearchGifs200ResponseImagesInnerWithTag : ( String, String ) -> SearchGifs200ResponseImagesInner -> Json.Encode.Value
encodeSearchGifs200ResponseImagesInnerWithTag (tagField, tag) model =
    encodeObject (encodeSearchGifs200ResponseImagesInnerPairs model ++ [ encode tagField Json.Encode.string tag ])


encodeSearchGifs200ResponseImagesInnerPairs : SearchGifs200ResponseImagesInner -> List EncodedField
encodeSearchGifs200ResponseImagesInnerPairs model =
    let
        pairs =
            [ encode "url" Json.Encode.string model.url
            , encode "width" Json.Encode.int model.width
            , encode "height" Json.Encode.int model.height
            ]
    in
    pairs


encodeSearchJokes200Response : SearchJokes200Response -> Json.Encode.Value
encodeSearchJokes200Response =
    encodeObject << encodeSearchJokes200ResponsePairs


encodeSearchJokes200ResponseWithTag : ( String, String ) -> SearchJokes200Response -> Json.Encode.Value
encodeSearchJokes200ResponseWithTag (tagField, tag) model =
    encodeObject (encodeSearchJokes200ResponsePairs model ++ [ encode tagField Json.Encode.string tag ])


encodeSearchJokes200ResponsePairs : SearchJokes200Response -> List EncodedField
encodeSearchJokes200ResponsePairs model =
    let
        pairs =
            [ encode "jokes" (Json.Encode.list encodeSearchJokes200ResponseJokesInner) model.jokes
            ]
    in
    pairs


encodeSearchJokes200ResponseJokesInner : SearchJokes200ResponseJokesInner -> Json.Encode.Value
encodeSearchJokes200ResponseJokesInner =
    encodeObject << encodeSearchJokes200ResponseJokesInnerPairs


encodeSearchJokes200ResponseJokesInnerWithTag : ( String, String ) -> SearchJokes200ResponseJokesInner -> Json.Encode.Value
encodeSearchJokes200ResponseJokesInnerWithTag (tagField, tag) model =
    encodeObject (encodeSearchJokes200ResponseJokesInnerPairs model ++ [ encode tagField Json.Encode.string tag ])


encodeSearchJokes200ResponseJokesInnerPairs : SearchJokes200ResponseJokesInner -> List EncodedField
encodeSearchJokes200ResponseJokesInnerPairs model =
    let
        pairs =
            [ encode "id" Json.Encode.int model.id
            , encode "joke" Json.Encode.string model.joke
            ]
    in
    pairs


encodeSearchMemes200Response : SearchMemes200Response -> Json.Encode.Value
encodeSearchMemes200Response =
    encodeObject << encodeSearchMemes200ResponsePairs


encodeSearchMemes200ResponseWithTag : ( String, String ) -> SearchMemes200Response -> Json.Encode.Value
encodeSearchMemes200ResponseWithTag (tagField, tag) model =
    encodeObject (encodeSearchMemes200ResponsePairs model ++ [ encode tagField Json.Encode.string tag ])


encodeSearchMemes200ResponsePairs : SearchMemes200Response -> List EncodedField
encodeSearchMemes200ResponsePairs model =
    let
        pairs =
            [ encode "memes" (Json.Encode.list encodeSearchMemes200ResponseMemesInner) model.memes
            ]
    in
    pairs


encodeSearchMemes200ResponseMemesInner : SearchMemes200ResponseMemesInner -> Json.Encode.Value
encodeSearchMemes200ResponseMemesInner =
    encodeObject << encodeSearchMemes200ResponseMemesInnerPairs


encodeSearchMemes200ResponseMemesInnerWithTag : ( String, String ) -> SearchMemes200ResponseMemesInner -> Json.Encode.Value
encodeSearchMemes200ResponseMemesInnerWithTag (tagField, tag) model =
    encodeObject (encodeSearchMemes200ResponseMemesInnerPairs model ++ [ encode tagField Json.Encode.string tag ])


encodeSearchMemes200ResponseMemesInnerPairs : SearchMemes200ResponseMemesInner -> List EncodedField
encodeSearchMemes200ResponseMemesInnerPairs model =
    let
        pairs =
            [ encode "id" Json.Encode.int model.id
            , encode "url" Json.Encode.string model.url
            , encode "type" Json.Encode.string model.type_
            ]
    in
    pairs


encodeSubmitJoke200Response : SubmitJoke200Response -> Json.Encode.Value
encodeSubmitJoke200Response =
    encodeObject << encodeSubmitJoke200ResponsePairs


encodeSubmitJoke200ResponseWithTag : ( String, String ) -> SubmitJoke200Response -> Json.Encode.Value
encodeSubmitJoke200ResponseWithTag (tagField, tag) model =
    encodeObject (encodeSubmitJoke200ResponsePairs model ++ [ encode tagField Json.Encode.string tag ])


encodeSubmitJoke200ResponsePairs : SubmitJoke200Response -> List EncodedField
encodeSubmitJoke200ResponsePairs model =
    let
        pairs =
            [ encode "message" Json.Encode.string model.message
            ]
    in
    pairs


-- DECODER


analyzeJoke200ResponseDecoder : Json.Decode.Decoder AnalyzeJoke200Response
analyzeJoke200ResponseDecoder =
    Json.Decode.succeed AnalyzeJoke200Response
        |> decode "joke" Json.Decode.string 
        |> decode "tags" (Json.Decode.list Json.Decode.string) 


generateNonsenseWord200ResponseDecoder : Json.Decode.Decoder GenerateNonsenseWord200Response
generateNonsenseWord200ResponseDecoder =
    Json.Decode.succeed GenerateNonsenseWord200Response
        |> decode "word" Json.Decode.string 
        |> decode "rating" Json.Decode.float 


praise200ResponseDecoder : Json.Decode.Decoder Praise200Response
praise200ResponseDecoder =
    Json.Decode.succeed Praise200Response
        |> decode "text" Json.Decode.string 


randomJoke200ResponseDecoder : Json.Decode.Decoder RandomJoke200Response
randomJoke200ResponseDecoder =
    Json.Decode.succeed RandomJoke200Response
        |> decode "id" Json.Decode.int 
        |> decode "joke" Json.Decode.string 


randomMeme200ResponseDecoder : Json.Decode.Decoder RandomMeme200Response
randomMeme200ResponseDecoder =
    Json.Decode.succeed RandomMeme200Response
        |> decode "id" Json.Decode.int 
        |> decode "url" Json.Decode.string 
        |> decode "type" Json.Decode.string 


rateWord200ResponseDecoder : Json.Decode.Decoder RateWord200Response
rateWord200ResponseDecoder =
    Json.Decode.succeed RateWord200Response
        |> decode "rating" Json.Decode.float 


searchGifs200ResponseDecoder : Json.Decode.Decoder SearchGifs200Response
searchGifs200ResponseDecoder =
    Json.Decode.succeed SearchGifs200Response
        |> decode "images" (Json.Decode.list searchGifs200ResponseImagesInnerDecoder) 


searchGifs200ResponseImagesInnerDecoder : Json.Decode.Decoder SearchGifs200ResponseImagesInner
searchGifs200ResponseImagesInnerDecoder =
    Json.Decode.succeed SearchGifs200ResponseImagesInner
        |> decode "url" Json.Decode.string 
        |> decode "width" Json.Decode.int 
        |> decode "height" Json.Decode.int 


searchJokes200ResponseDecoder : Json.Decode.Decoder SearchJokes200Response
searchJokes200ResponseDecoder =
    Json.Decode.succeed SearchJokes200Response
        |> decode "jokes" (Json.Decode.list searchJokes200ResponseJokesInnerDecoder) 


searchJokes200ResponseJokesInnerDecoder : Json.Decode.Decoder SearchJokes200ResponseJokesInner
searchJokes200ResponseJokesInnerDecoder =
    Json.Decode.succeed SearchJokes200ResponseJokesInner
        |> decode "id" Json.Decode.int 
        |> decode "joke" Json.Decode.string 


searchMemes200ResponseDecoder : Json.Decode.Decoder SearchMemes200Response
searchMemes200ResponseDecoder =
    Json.Decode.succeed SearchMemes200Response
        |> decode "memes" (Json.Decode.list searchMemes200ResponseMemesInnerDecoder) 


searchMemes200ResponseMemesInnerDecoder : Json.Decode.Decoder SearchMemes200ResponseMemesInner
searchMemes200ResponseMemesInnerDecoder =
    Json.Decode.succeed SearchMemes200ResponseMemesInner
        |> decode "id" Json.Decode.int 
        |> decode "url" Json.Decode.string 
        |> decode "type" Json.Decode.string 


submitJoke200ResponseDecoder : Json.Decode.Decoder SubmitJoke200Response
submitJoke200ResponseDecoder =
    Json.Decode.succeed SubmitJoke200Response
        |> decode "message" Json.Decode.string 




-- HELPER


type alias EncodedField =
    Maybe ( String, Json.Encode.Value )


encodeObject : List EncodedField -> Json.Encode.Value
encodeObject =
    Json.Encode.object << List.filterMap identity


encode : String -> (a -> Json.Encode.Value) -> a -> EncodedField
encode key encoder value =
    Just ( key, encoder value )


encodeNullable : String -> (a -> Json.Encode.Value) -> Maybe a -> EncodedField
encodeNullable key encoder value =
    Just ( key, Maybe.withDefault Json.Encode.null (Maybe.map encoder value) )


maybeEncode : String -> (a -> Json.Encode.Value) -> Maybe a -> EncodedField
maybeEncode key encoder =
    Maybe.map (Tuple.pair key << encoder)


maybeEncodeNullable : String -> (a -> Json.Encode.Value) -> Maybe a -> EncodedField
maybeEncodeNullable =
    encodeNullable


decode : String -> Json.Decode.Decoder a -> Json.Decode.Decoder (a -> b) -> Json.Decode.Decoder b
decode key decoder =
    decodeChain (Json.Decode.field key decoder)


decodeLazy : (a -> c) -> String -> Json.Decode.Decoder a -> Json.Decode.Decoder (c -> b) -> Json.Decode.Decoder b
decodeLazy f key decoder =
    decodeChainLazy f (Json.Decode.field key decoder)


decodeNullable : String -> Json.Decode.Decoder a -> Json.Decode.Decoder (Maybe a -> b) -> Json.Decode.Decoder b
decodeNullable key decoder =
    decodeChain (maybeField key decoder Nothing)


decodeNullableLazy : (Maybe a -> c) -> String -> Json.Decode.Decoder a -> Json.Decode.Decoder (c -> b) -> Json.Decode.Decoder b
decodeNullableLazy f key decoder =
    decodeChainLazy f (maybeField key decoder Nothing)


maybeDecode : String -> Json.Decode.Decoder a -> Maybe a -> Json.Decode.Decoder (Maybe a -> b) -> Json.Decode.Decoder b
maybeDecode key decoder fallback =
    -- let's be kind to null-values as well
    decodeChain (maybeField key decoder fallback)


maybeDecodeLazy : (Maybe a -> c) -> String -> Json.Decode.Decoder a -> Maybe a -> Json.Decode.Decoder (c -> b) -> Json.Decode.Decoder b
maybeDecodeLazy f key decoder fallback =
    -- let's be kind to null-values as well
    decodeChainLazy f (maybeField key decoder fallback)


maybeDecodeNullable : String -> Json.Decode.Decoder a -> Maybe a -> Json.Decode.Decoder (Maybe a -> b) -> Json.Decode.Decoder b
maybeDecodeNullable key decoder fallback =
    decodeChain (maybeField key decoder fallback)


maybeDecodeNullableLazy : (Maybe a -> c) -> String -> Json.Decode.Decoder a -> Maybe a -> Json.Decode.Decoder (c -> b) -> Json.Decode.Decoder b
maybeDecodeNullableLazy f key decoder fallback =
    decodeChainLazy f (maybeField key decoder fallback)


maybeField : String -> Json.Decode.Decoder a -> Maybe a -> Json.Decode.Decoder (Maybe a)
maybeField key decoder fallback =
    let
        fieldDecoder =
            Json.Decode.field key Json.Decode.value

        valueDecoder =
            Json.Decode.oneOf [ Json.Decode.map Just decoder, Json.Decode.null fallback ]

        decodeObject rawObject =
            case Json.Decode.decodeValue fieldDecoder rawObject of
                Ok rawValue ->
                    case Json.Decode.decodeValue valueDecoder rawValue of
                        Ok value ->
                            Json.Decode.succeed value

                        Err error ->
                            Json.Decode.fail (Json.Decode.errorToString error)

                Err _ ->
                    Json.Decode.succeed fallback
    in
    Json.Decode.value
        |> Json.Decode.andThen decodeObject


decodeChain : Json.Decode.Decoder a -> Json.Decode.Decoder (a -> b) -> Json.Decode.Decoder b
decodeChain =
    Json.Decode.map2 (|>)


decodeChainLazy : (a -> c) -> Json.Decode.Decoder a -> Json.Decode.Decoder (c -> b) -> Json.Decode.Decoder b
decodeChainLazy f =
    decodeChain << Json.Decode.map f