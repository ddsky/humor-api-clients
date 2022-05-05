package com.humorapi.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import scala.collection.immutable.Seq

/**
 * 
 * @param jokes 
 */
case class InlineResponse200(jokes: Set[Object]
                )

object InlineResponse200 {
    /**
     * Creates the codec for converting InlineResponse200 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse200] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse200] = deriveEncoder
}
