package com.humorapi.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import humorapi._
import scala.collection.immutable.Seq

/**
 * 
 * @param joke 
 * @param tags 
 */
case class InlineResponse2009(joke: String,
                tags: Seq[String]
                )

object InlineResponse2009 {
    /**
     * Creates the codec for converting InlineResponse2009 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2009] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2009] = deriveEncoder
}
