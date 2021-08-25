package com.humorapi.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import humorapi._
import java.math.BigDecimal

/**
 * 
 * @param rating 
 */
case class InlineResponse2006(rating: BigDecimal
                )

object InlineResponse2006 {
    /**
     * Creates the codec for converting InlineResponse2006 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2006] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2006] = deriveEncoder
}
