package com.humorapi.client.model

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
case class InlineResponse2004(id: Int,
                joke: String
                )

object InlineResponse2004 {
    /**
     * Creates the codec for converting InlineResponse2004 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2004] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2004] = deriveEncoder
}
