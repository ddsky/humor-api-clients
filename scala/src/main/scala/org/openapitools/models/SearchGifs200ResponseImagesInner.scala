package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import humorapi._

/**
 * 
 * @param url 
 * @param width 
 * @param height 
 */
case class SearchGifs200ResponseImagesInner(url: String,
                width: Int,
                height: Int
                )

object SearchGifs200ResponseImagesInner {
    /**
     * Creates the codec for converting SearchGifs200ResponseImagesInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchGifs200ResponseImagesInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchGifs200ResponseImagesInner] = deriveEncoder
}
