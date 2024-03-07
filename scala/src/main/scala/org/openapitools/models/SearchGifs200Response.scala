package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import humorapi._
import org.openapitools.models.SearchGifs200ResponseImagesInner

/**
 * 
 * @param images 
 */
case class SearchGifs200Response(images: Set[SearchGifs200ResponseImagesInner]
                )

object SearchGifs200Response {
    /**
     * Creates the codec for converting SearchGifs200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchGifs200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchGifs200Response] = deriveEncoder
}
