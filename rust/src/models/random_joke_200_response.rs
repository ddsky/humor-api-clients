/*
 * Humor API
 *
 * Awesome Humor API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@humorapi.com
 * Generated by: https://openapi-generator.tech
 */

/// RandomJoke200Response : 



#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct RandomJoke200Response {
    #[serde(rename = "id")]
    pub id: i32,
    #[serde(rename = "joke")]
    pub joke: String,
}

impl RandomJoke200Response {
    /// 
    pub fn new(id: i32, joke: String) -> RandomJoke200Response {
        RandomJoke200Response {
            id,
            joke,
        }
    }
}

