package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import humorapi._

/**
 * 
 * @param id 
 * @param joke 
 */
case class SearchJokes200ResponseJokesInner(id: Int,
                joke: String
                )

object SearchJokes200ResponseJokesInner {
    /**
     * Creates the codec for converting SearchJokes200ResponseJokesInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchJokes200ResponseJokesInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchJokes200ResponseJokesInner] = deriveEncoder
}
