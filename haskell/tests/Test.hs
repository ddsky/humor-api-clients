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
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse200)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2001)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2002)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2003)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2004)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2005)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2006)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2007)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2008)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2009)
      
