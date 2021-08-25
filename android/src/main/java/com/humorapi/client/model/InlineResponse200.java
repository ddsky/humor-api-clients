package com.humorapi.client.model;

import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse200  {
  
  @SerializedName("jokes")
  private List<Object> jokes = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getJokes() {
    return jokes;
  }
  public void setJokes(List<Object> jokes) {
    this.jokes = jokes;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse200 inlineResponse200 = (InlineResponse200) o;
    return (this.jokes == null ? inlineResponse200.jokes == null : this.jokes.equals(inlineResponse200.jokes));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.jokes == null ? 0: this.jokes.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse200 {\n");
    
    sb.append("  jokes: ").append(jokes).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
