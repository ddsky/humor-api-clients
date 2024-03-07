package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import humorapi._
import org.openapitools.models.SearchJokes200ResponseJokesInner

/**
 * 
 * @param jokes 
 */
case class SearchJokes200Response(jokes: Set[SearchJokes200ResponseJokesInner]
                )

object SearchJokes200Response {
    /**
     * Creates the codec for converting SearchJokes200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchJokes200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchJokes200Response] = deriveEncoder
}
