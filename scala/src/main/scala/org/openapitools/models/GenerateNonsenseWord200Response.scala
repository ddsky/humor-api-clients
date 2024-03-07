package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import humorapi._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param word 
 * @param rating 
 */
case class GenerateNonsenseWord200Response(word: String,
                rating: BigDecimal
                )

object GenerateNonsenseWord200Response {
    /**
     * Creates the codec for converting GenerateNonsenseWord200Response from and to JSON.
     */
    implicit val decoder: Decoder[GenerateNonsenseWord200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GenerateNonsenseWord200Response] = deriveEncoder
}
