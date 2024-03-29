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


import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param joke 
 * @param tags 
 */


data class AnalyzeJoke200Response (

    @Json(name = "joke")
    val joke: kotlin.String,

    @Json(name = "tags")
    val tags: kotlin.collections.List<kotlin.String>

)

