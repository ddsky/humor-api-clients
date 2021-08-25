/*
 * Humor API
 * Awesome Humor API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@humorapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.humorapi.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * InlineResponse2002
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2021-08-25T21:25:45.070+02:00[Europe/Berlin]")
public class InlineResponse2002 {
  public static final String SERIALIZED_NAME_MEMES = "memes";
  @SerializedName(SERIALIZED_NAME_MEMES)
  private List<Object> memes = new ArrayList<>();

  public InlineResponse2002 memes(List<Object> memes) {
    this.memes = memes;
    return this;
  }

  public InlineResponse2002 addMemesItem(Object memesItem) {
    this.memes.add(memesItem);
    return this;
  }

   /**
   * Get memes
   * @return memes
  **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getMemes() {
    return memes;
  }

  public void setMemes(List<Object> memes) {
    this.memes = memes;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2002 inlineResponse2002 = (InlineResponse2002) o;
    return Objects.equals(this.memes, inlineResponse2002.memes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(memes);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2002 {\n");
    sb.append("    memes: ").append(toIndentedString(memes)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

