package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import humorapi._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param rating 
 */
case class RateWord200Response(rating: BigDecimal
                )

object RateWord200Response {
    /**
     * Creates the codec for converting RateWord200Response from and to JSON.
     */
    implicit val decoder: Decoder[RateWord200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[RateWord200Response] = deriveEncoder
}
