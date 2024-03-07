package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import humorapi._

/**
 * 
 * @param text 
 */
case class Praise200Response(text: String
                )

object Praise200Response {
    /**
     * Creates the codec for converting Praise200Response from and to JSON.
     */
    implicit val decoder: Decoder[Praise200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[Praise200Response] = deriveEncoder
}
