/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package humorapi.models

import humorapi.models.SearchJokes200ResponseJokesInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param jokes 
 */


data class SearchJokes200Response (

    @Json(name = "jokes")
    val jokes: kotlin.collections.Set<SearchJokes200ResponseJokesInner>

)

