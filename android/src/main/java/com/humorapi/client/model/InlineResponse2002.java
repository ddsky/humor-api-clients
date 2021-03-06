/**
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

import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class InlineResponse2002 {
  
  @SerializedName("memes")
  private Set<Object> memes = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Set<Object> getMemes() {
    return memes;
  }
  public void setMemes(Set<Object> memes) {
    this.memes = memes;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2002 inlineResponse2002 = (InlineResponse2002) o;
    return (this.memes == null ? inlineResponse2002.memes == null : this.memes.equals(inlineResponse2002.memes));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.memes == null ? 0: this.memes.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2002 {\n");
    
    sb.append("  memes: ").append(memes).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
