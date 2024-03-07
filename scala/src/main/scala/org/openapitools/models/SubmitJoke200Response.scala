package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import humorapi._

/**
 * 
 * @param message 
 */
case class SubmitJoke200Response(message: String
                )

object SubmitJoke200Response {
    /**
     * Creates the codec for converting SubmitJoke200Response from and to JSON.
     */
    implicit val decoder: Decoder[SubmitJoke200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SubmitJoke200Response] = deriveEncoder
}
