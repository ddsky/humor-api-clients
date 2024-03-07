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
case class SearchMemes200ResponseMemesInner(id: Int,
                url: String,
                _type: String
                )

object SearchMemes200ResponseMemesInner {
    /**
     * Creates the codec for converting SearchMemes200ResponseMemesInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchMemes200ResponseMemesInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchMemes200ResponseMemesInner] = deriveEncoder
}
