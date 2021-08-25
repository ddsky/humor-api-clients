package com.humorapi.client.model;


import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse2004  {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("joke")
  private String joke = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getJoke() {
    return joke;
  }
  public void setJoke(String joke) {
    this.joke = joke;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2004 inlineResponse2004 = (InlineResponse2004) o;
    return (this.id == null ? inlineResponse2004.id == null : this.id.equals(inlineResponse2004.id)) &&
        (this.joke == null ? inlineResponse2004.joke == null : this.joke.equals(inlineResponse2004.joke));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.joke == null ? 0: this.joke.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2004 {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  joke: ").append(joke).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}