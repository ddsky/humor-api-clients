package com.humorapi.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse2007  {
  
  @SerializedName("word")
  private String word = null;
  @SerializedName("rating")
  private BigDecimal rating = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getWord() {
    return word;
  }
  public void setWord(String word) {
    this.word = word;
  }

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
    InlineResponse2007 inlineResponse2007 = (InlineResponse2007) o;
    return (this.word == null ? inlineResponse2007.word == null : this.word.equals(inlineResponse2007.word)) &&
        (this.rating == null ? inlineResponse2007.rating == null : this.rating.equals(inlineResponse2007.rating));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.word == null ? 0: this.word.hashCode());
    result = 31 * result + (this.rating == null ? 0: this.rating.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2007 {\n");
    
    sb.append("  word: ").append(word).append("\n");
    sb.append("  rating: ").append(rating).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
