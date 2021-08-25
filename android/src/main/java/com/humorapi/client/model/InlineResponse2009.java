package com.humorapi.client.model;

import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse2009  {
  
  @SerializedName("joke")
  private String joke = null;
  @SerializedName("tags")
  private List<String> tags = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getJoke() {
    return joke;
  }
  public void setJoke(String joke) {
    this.joke = joke;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getTags() {
    return tags;
  }
  public void setTags(List<String> tags) {
    this.tags = tags;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2009 inlineResponse2009 = (InlineResponse2009) o;
    return (this.joke == null ? inlineResponse2009.joke == null : this.joke.equals(inlineResponse2009.joke)) &&
        (this.tags == null ? inlineResponse2009.tags == null : this.tags.equals(inlineResponse2009.tags));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.joke == null ? 0: this.joke.hashCode());
    result = 31 * result + (this.tags == null ? 0: this.tags.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2009 {\n");
    
    sb.append("  joke: ").append(joke).append("\n");
    sb.append("  tags: ").append(tags).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
