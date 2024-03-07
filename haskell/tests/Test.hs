{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE PartialTypeSignatures #-}

module Main where

import Data.Typeable (Proxy(..))
import Test.Hspec
import Test.Hspec.QuickCheck

import PropMime
import Instances ()

import Humor.Model
import Humor.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 10) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy AnalyzeJoke200Response)
      propMimeEq MimeJSON (Proxy :: Proxy GenerateNonsenseWord200Response)
      propMimeEq MimeJSON (Proxy :: Proxy Praise200Response)
      propMimeEq MimeJSON (Proxy :: Proxy RandomJoke200Response)
      propMimeEq MimeJSON (Proxy :: Proxy RandomMeme200Response)
      propMimeEq MimeJSON (Proxy :: Proxy RateWord200Response)
      propMimeEq MimeJSON (Proxy :: Proxy SearchGifs200Response)
      propMimeEq MimeJSON (Proxy :: Proxy SearchGifs200ResponseImagesInner)
      propMimeEq MimeJSON (Proxy :: Proxy SearchJokes200Response)
      propMimeEq MimeJSON (Proxy :: Proxy SearchJokes200ResponseJokesInner)
      propMimeEq MimeJSON (Proxy :: Proxy SearchMemes200Response)
      propMimeEq MimeJSON (Proxy :: Proxy SearchMemes200ResponseMemesInner)
      propMimeEq MimeJSON (Proxy :: Proxy SubmitJoke200Response)
      
