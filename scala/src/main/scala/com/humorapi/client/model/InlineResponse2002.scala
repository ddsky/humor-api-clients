package com.humorapi.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import humorapi._
import scala.collection.immutable.Seq

/**
 * 
 * @param memes 
 */
case class InlineResponse2002(memes: Seq[Object]
                )

object InlineResponse2002 {
    /**
     * Creates the codec for converting InlineResponse2002 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2002] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2002] = deriveEncoder
}
