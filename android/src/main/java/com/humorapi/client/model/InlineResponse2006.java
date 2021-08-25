package com.humorapi.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse2006  {
  
  @SerializedName("rating")
  private BigDecimal rating = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getRating() {
    return rating;
  }
  public void setRating(BigDecimal rating) {
    this.rating = rating;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2006 inlineResponse2006 = (InlineResponse2006) o;
    return (this.rating == null ? inlineResponse2006.rating == null : this.rating.equals(inlineResponse2006.rating));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.rating == null ? 0: this.rating.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2006 {\n");
    
    sb.append("  rating: ").append(rating).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}