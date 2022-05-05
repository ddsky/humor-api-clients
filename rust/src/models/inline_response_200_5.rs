/*
 * Humor API
 *
 * Awesome Humor API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@humorapi.com
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Default, Serialize, Deserialize)]
pub struct InlineResponse2005 {
    #[serde(rename = "text")]
    pub text: String,
}

impl InlineResponse2005 {
    pub fn new(text: String) -> InlineResponse2005 {
        InlineResponse2005 {
            text,
        }
    }
}


