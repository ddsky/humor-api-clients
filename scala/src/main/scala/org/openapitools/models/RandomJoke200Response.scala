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
case class RandomJoke200Response(id: Int,
                joke: String
                )

object RandomJoke200Response {
    /**
     * Creates the codec for converting RandomJoke200Response from and to JSON.
     */
    implicit val decoder: Decoder[RandomJoke200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[RandomJoke200Response] = deriveEncoder
}
