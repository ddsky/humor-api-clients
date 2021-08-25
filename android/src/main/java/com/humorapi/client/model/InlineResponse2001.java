package com.humorapi.client.model;

import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse2001  {
  
  @SerializedName("images")
  private List<Object> images = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getImages() {
    return images;
  }
  public void setImages(List<Object> images) {
    this.images = images;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2001 inlineResponse2001 = (InlineResponse2001) o;
    return (this.images == null ? inlineResponse2001.images == null : this.images.equals(inlineResponse2001.images));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.images == null ? 0: this.images.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2001 {\n");
    
    sb.append("  images: ").append(images).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
