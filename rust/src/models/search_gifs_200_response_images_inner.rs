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
pub struct SearchGifs200ResponseImagesInner {
    #[serde(rename = "url")]
    pub url: String,
    #[serde(rename = "width")]
    pub width: i32,
    #[serde(rename = "height")]
    pub height: i32,
}

impl SearchGifs200ResponseImagesInner {
    pub fn new(url: String, width: i32, height: i32) -> SearchGifs200ResponseImagesInner {
        SearchGifs200ResponseImagesInner {
            url,
            width,
            height,
        }
    }
}


