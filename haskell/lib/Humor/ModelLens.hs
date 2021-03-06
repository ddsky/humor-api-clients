{-
   Humor API

   Awesome Humor API.

   OpenAPI Version: 3.0.0
   Humor API API version: 1.0
   Contact: mail@humorapi.com
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : Humor.Lens
-}

{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-matches -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Humor.ModelLens where

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Data, Typeable)
import qualified Data.Map as Map
import qualified Data.Set as Set
import qualified Data.Time as TI

import Data.Text (Text)

import Prelude (($), (.),(<$>),(<*>),(=<<),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

import Humor.Model
import Humor.Core


-- * InlineResponse200

-- | 'inlineResponse200Jokes' Lens
inlineResponse200JokesL :: Lens_' InlineResponse200 ([A.Value])
inlineResponse200JokesL f InlineResponse200{..} = (\inlineResponse200Jokes -> InlineResponse200 { inlineResponse200Jokes, ..} ) <$> f inlineResponse200Jokes
{-# INLINE inlineResponse200JokesL #-}



-- * InlineResponse2001

-- | 'inlineResponse2001Images' Lens
inlineResponse2001ImagesL :: Lens_' InlineResponse2001 ([A.Value])
inlineResponse2001ImagesL f InlineResponse2001{..} = (\inlineResponse2001Images -> InlineResponse2001 { inlineResponse2001Images, ..} ) <$> f inlineResponse2001Images
{-# INLINE inlineResponse2001ImagesL #-}



-- * InlineResponse2002

-- | 'inlineResponse2002Memes' Lens
inlineResponse2002MemesL :: Lens_' InlineResponse2002 ([A.Value])
inlineResponse2002MemesL f InlineResponse2002{..} = (\inlineResponse2002Memes -> InlineResponse2002 { inlineResponse2002Memes, ..} ) <$> f inlineResponse2002Memes
{-# INLINE inlineResponse2002MemesL #-}



-- * InlineResponse2003

-- | 'inlineResponse2003Id' Lens
inlineResponse2003IdL :: Lens_' InlineResponse2003 (Int)
inlineResponse2003IdL f InlineResponse2003{..} = (\inlineResponse2003Id -> InlineResponse2003 { inlineResponse2003Id, ..} ) <$> f inlineResponse2003Id
{-# INLINE inlineResponse2003IdL #-}

-- | 'inlineResponse2003Url' Lens
inlineResponse2003UrlL :: Lens_' InlineResponse2003 (Text)
inlineResponse2003UrlL f InlineResponse2003{..} = (\inlineResponse2003Url -> InlineResponse2003 { inlineResponse2003Url, ..} ) <$> f inlineResponse2003Url
{-# INLINE inlineResponse2003UrlL #-}

-- | 'inlineResponse2003Type' Lens
inlineResponse2003TypeL :: Lens_' InlineResponse2003 (Text)
inlineResponse2003TypeL f InlineResponse2003{..} = (\inlineResponse2003Type -> InlineResponse2003 { inlineResponse2003Type, ..} ) <$> f inlineResponse2003Type
{-# INLINE inlineResponse2003TypeL #-}



-- * InlineResponse2004

-- | 'inlineResponse2004Id' Lens
inlineResponse2004IdL :: Lens_' InlineResponse2004 (Int)
inlineResponse2004IdL f InlineResponse2004{..} = (\inlineResponse2004Id -> InlineResponse2004 { inlineResponse2004Id, ..} ) <$> f inlineResponse2004Id
{-# INLINE inlineResponse2004IdL #-}

-- | 'inlineResponse2004Joke' Lens
inlineResponse2004JokeL :: Lens_' InlineResponse2004 (Text)
inlineResponse2004JokeL f InlineResponse2004{..} = (\inlineResponse2004Joke -> InlineResponse2004 { inlineResponse2004Joke, ..} ) <$> f inlineResponse2004Joke
{-# INLINE inlineResponse2004JokeL #-}



-- * InlineResponse2005

-- | 'inlineResponse2005Text' Lens
inlineResponse2005TextL :: Lens_' InlineResponse2005 (Text)
inlineResponse2005TextL f InlineResponse2005{..} = (\inlineResponse2005Text -> InlineResponse2005 { inlineResponse2005Text, ..} ) <$> f inlineResponse2005Text
{-# INLINE inlineResponse2005TextL #-}



-- * InlineResponse2006

-- | 'inlineResponse2006Rating' Lens
inlineResponse2006RatingL :: Lens_' InlineResponse2006 (Double)
inlineResponse2006RatingL f InlineResponse2006{..} = (\inlineResponse2006Rating -> InlineResponse2006 { inlineResponse2006Rating, ..} ) <$> f inlineResponse2006Rating
{-# INLINE inlineResponse2006RatingL #-}



-- * InlineResponse2007

-- | 'inlineResponse2007Word' Lens
inlineResponse2007WordL :: Lens_' InlineResponse2007 (Text)
inlineResponse2007WordL f InlineResponse2007{..} = (\inlineResponse2007Word -> InlineResponse2007 { inlineResponse2007Word, ..} ) <$> f inlineResponse2007Word
{-# INLINE inlineResponse2007WordL #-}

-- | 'inlineResponse2007Rating' Lens
inlineResponse2007RatingL :: Lens_' InlineResponse2007 (Double)
inlineResponse2007RatingL f InlineResponse2007{..} = (\inlineResponse2007Rating -> InlineResponse2007 { inlineResponse2007Rating, ..} ) <$> f inlineResponse2007Rating
{-# INLINE inlineResponse2007RatingL #-}



-- * InlineResponse2008

-- | 'inlineResponse2008Message' Lens
inlineResponse2008MessageL :: Lens_' InlineResponse2008 (Text)
inlineResponse2008MessageL f InlineResponse2008{..} = (\inlineResponse2008Message -> InlineResponse2008 { inlineResponse2008Message, ..} ) <$> f inlineResponse2008Message
{-# INLINE inlineResponse2008MessageL #-}



-- * InlineResponse2009

-- | 'inlineResponse2009Joke' Lens
inlineResponse2009JokeL :: Lens_' InlineResponse2009 (Text)
inlineResponse2009JokeL f InlineResponse2009{..} = (\inlineResponse2009Joke -> InlineResponse2009 { inlineResponse2009Joke, ..} ) <$> f inlineResponse2009Joke
{-# INLINE inlineResponse2009JokeL #-}

-- | 'inlineResponse2009Tags' Lens
inlineResponse2009TagsL :: Lens_' InlineResponse2009 ([Text])
inlineResponse2009TagsL f InlineResponse2009{..} = (\inlineResponse2009Tags -> InlineResponse2009 { inlineResponse2009Tags, ..} ) <$> f inlineResponse2009Tags
{-# INLINE inlineResponse2009TagsL #-}


