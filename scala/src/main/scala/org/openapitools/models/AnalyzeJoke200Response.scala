package org.openapitools.models

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
case class AnalyzeJoke200Response(joke: String,
                tags: Seq[String]
                )

object AnalyzeJoke200Response {
    /**
     * Creates the codec for converting AnalyzeJoke200Response from and to JSON.
     */
    implicit val decoder: Decoder[AnalyzeJoke200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[AnalyzeJoke200Response] = deriveEncoder
}
