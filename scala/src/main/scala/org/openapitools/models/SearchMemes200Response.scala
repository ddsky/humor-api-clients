package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import humorapi._
import org.openapitools.models.SearchMemes200ResponseMemesInner

/**
 * 
 * @param memes 
 */
case class SearchMemes200Response(memes: Set[SearchMemes200ResponseMemesInner]
                )

object SearchMemes200Response {
    /**
     * Creates the codec for converting SearchMemes200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchMemes200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchMemes200Response] = deriveEncoder
}
