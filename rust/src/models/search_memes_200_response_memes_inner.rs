/*
 * Humor API
 *
 * Awesome Humor API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@humorapi.com
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct SearchMemes200ResponseMemesInner {
    #[serde(rename = "id")]
    pub id: i32,
    #[serde(rename = "url")]
    pub url: String,
    #[serde(rename = "type")]
    pub r#type: String,
}

impl SearchMemes200ResponseMemesInner {
    pub fn new(id: i32, url: String, r#type: String) -> SearchMemes200ResponseMemesInner {
        SearchMemes200ResponseMemesInner {
            id,
            url,
            r#type,
        }
    }
}


