package org.openapitools.models

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
case class RandomMeme200Response(id: Int,
                url: String,
                _type: String
                )

object RandomMeme200Response {
    /**
     * Creates the codec for converting RandomMeme200Response from and to JSON.
     */
    implicit val decoder: Decoder[RandomMeme200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[RandomMeme200Response] = deriveEncoder
}
