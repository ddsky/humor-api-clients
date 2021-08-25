package com.humorapi.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import humorapi._
import scala.collection.immutable.Seq

/**
 * 
 * @param images 
 */
case class InlineResponse2001(images: Seq[Object]
                )

object InlineResponse2001 {
    /**
     * Creates the codec for converting InlineResponse2001 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2001] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2001] = deriveEncoder
}
