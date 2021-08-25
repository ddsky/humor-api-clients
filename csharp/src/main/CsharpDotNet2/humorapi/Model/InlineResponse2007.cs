using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace humorapi.Model {

  /// <summary>
  /// 
  /// </summary>
  [DataContract]
  public class InlineResponse2007 {
    /// <summary>
    /// Gets or Sets Word
    /// </summary>
    [DataMember(Name="word", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "word")]
    public string Word { get; set; }

    /// <summary>
    /// Gets or Sets Rating
    /// </summary>
    [DataMember(Name="rating", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "rating")]
    public decimal? Rating { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse2007 {\n");
      sb.Append("  Word: ").Append(Word).Append("\n");
      sb.Append("  Rating: ").Append(Rating).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public string ToJson() {
      return JsonConvert.SerializeObject(this, Formatting.Indented);
    }

}
}
