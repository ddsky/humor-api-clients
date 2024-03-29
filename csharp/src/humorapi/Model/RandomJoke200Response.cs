/*
 * Humor API
 *
 * Awesome Humor API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@humorapi.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = humorapi.Client.OpenAPIDateConverter;

namespace humorapi.Model
{
    /// <summary>
    /// RandomJoke200Response
    /// </summary>
    [DataContract(Name = "random_joke_200_response")]
    public partial class RandomJoke200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="RandomJoke200Response" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected RandomJoke200Response() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="RandomJoke200Response" /> class.
        /// </summary>
        /// <param name="id">id (required).</param>
        /// <param name="joke">joke (required).</param>
        public RandomJoke200Response(int id = default(int), string joke = default(string))
        {
            this.Id = id;
            // to ensure "joke" is required (not null)
            if (joke == null)
            {
                throw new ArgumentNullException("joke is a required property for RandomJoke200Response and cannot be null");
            }
            this.Joke = joke;
        }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", IsRequired = true, EmitDefaultValue = true)]
        public int Id { get; set; }

        /// <summary>
        /// Gets or Sets Joke
        /// </summary>
        [DataMember(Name = "joke", IsRequired = true, EmitDefaultValue = true)]
        public string Joke { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class RandomJoke200Response {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Joke: ").Append(Joke).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            // Joke (string) minLength
            if (this.Joke != null && this.Joke.Length < 1)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Joke, length must be greater than 1.", new [] { "Joke" });
            }

            yield break;
        }
    }

}
