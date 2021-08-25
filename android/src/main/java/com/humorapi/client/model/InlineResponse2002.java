package com.humorapi.client.model;

import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse2002  {
  
  @SerializedName("memes")
  private List<Object> memes = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getMemes() {
    return memes;
  }
  public void setMemes(List<Object> memes) {
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
