package com.humorapi.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param message 
 */
case class InlineResponse2008(message: String
                )

object InlineResponse2008 {
    /**
     * Creates the codec for converting InlineResponse2008 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2008] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2008] = deriveEncoder
}
