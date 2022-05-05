/**
 * Humor API
 *
 * Awesome Humor API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@humorapi.com
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package com.humorapi.client.model


import com.squareup.moshi.Json

/**
 * 
 *
 * @param word 
 * @param rating 
 */

data class InlineResponse2007 (

    @Json(name = "word")
    val word: kotlin.String,

    @Json(name = "rating")
    val rating: java.math.BigDecimal

)

