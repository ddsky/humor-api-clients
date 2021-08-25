package com.humorapi.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import humorapi._

/**
 * 
 * @param id 
 * @param url 
 * @param _type 
 */
case class InlineResponse2003(id: Int,
                url: String,
                _type: String
                )

object InlineResponse2003 {
    /**
     * Creates the codec for converting InlineResponse2003 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2003] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2003] = deriveEncoder
}
