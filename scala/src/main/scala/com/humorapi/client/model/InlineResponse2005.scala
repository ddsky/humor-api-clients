package com.humorapi.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import humorapi._

/**
 * 
 * @param text 
 */
case class InlineResponse2005(text: String
                )

object InlineResponse2005 {
    /**
     * Creates the codec for converting InlineResponse2005 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2005] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2005] = deriveEncoder
}
