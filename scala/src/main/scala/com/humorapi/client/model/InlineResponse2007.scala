package com.humorapi.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import humorapi._
import java.math.BigDecimal

/**
 * 
 * @param word 
 * @param rating 
 */
case class InlineResponse2007(word: String,
                rating: BigDecimal
                )

object InlineResponse2007 {
    /**
     * Creates the codec for converting InlineResponse2007 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2007] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2007] = deriveEncoder
}
