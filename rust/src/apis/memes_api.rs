/*
 * Humor API
 *
 * Awesome Humor API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@humorapi.com
 * Generated by: https://openapi-generator.tech
 */

use std::rc::Rc;
use std::borrow::Borrow;

use hyper;
use serde_json;
use futures::Future;

use super::{Error, configuration};
use super::request as __internal_request;

pub struct MemesApiClient<C: hyper::client::Connect> {
    configuration: Rc<configuration::Configuration<C>>,
}

impl<C: hyper::client::Connect> MemesApiClient<C> {
    pub fn new(configuration: Rc<configuration::Configuration<C>>) -> MemesApiClient<C> {
        MemesApiClient {
            configuration: configuration,
        }
    }
}

pub trait MemesApi {
    fn downvote_meme(&self, id: i32) -> Box<Future<Item = ::models::InlineResponse2008, Error = Error<serde_json::Value>>>;
    fn random_meme(&self, keywords: &str, keywords_in_image: bool, media_type: &str, number: i32, min_rating: i32) -> Box<Future<Item = ::models::InlineResponse2003, Error = Error<serde_json::Value>>>;
    fn search_memes(&self, keywords: &str, keywords_in_image: bool, media_type: &str, number: i32, min_rating: i32) -> Box<Future<Item = ::models::InlineResponse2002, Error = Error<serde_json::Value>>>;
    fn upvote_meme(&self, id: i32) -> Box<Future<Item = ::models::InlineResponse2008, Error = Error<serde_json::Value>>>;
}


impl<C: hyper::client::Connect>MemesApi for MemesApiClient<C> {
    fn downvote_meme(&self, id: i32) -> Box<Future<Item = ::models::InlineResponse2008, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Post, "/memes/{id}/downvote".to_string())
            .with_auth(__internal_request::Auth::ApiKey(__internal_request::ApiKey{
                in_header: false,
                in_query: true,
                param_name: "api-key".to_owned(),
            }))
            .with_path_param("id".to_string(), id.to_string())
            .execute(self.configuration.borrow())
    }

    fn random_meme(&self, keywords: &str, keywords_in_image: bool, media_type: &str, number: i32, min_rating: i32) -> Box<Future<Item = ::models::InlineResponse2003, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/memes/random".to_string())
            .with_auth(__internal_request::Auth::ApiKey(__internal_request::ApiKey{
                in_header: false,
                in_query: true,
                param_name: "api-key".to_owned(),
            }))
            .with_query_param("keywords".to_string(), keywords.to_string())
            .with_query_param("keywords-in-image".to_string(), keywords_in_image.to_string())
            .with_query_param("media-type".to_string(), media_type.to_string())
            .with_query_param("number".to_string(), number.to_string())
            .with_query_param("min-rating".to_string(), min_rating.to_string())
            .execute(self.configuration.borrow())
    }

    fn search_memes(&self, keywords: &str, keywords_in_image: bool, media_type: &str, number: i32, min_rating: i32) -> Box<Future<Item = ::models::InlineResponse2002, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/memes/search".to_string())
            .with_auth(__internal_request::Auth::ApiKey(__internal_request::ApiKey{
                in_header: false,
                in_query: true,
                param_name: "api-key".to_owned(),
            }))
            .with_query_param("keywords".to_string(), keywords.to_string())
            .with_query_param("keywords-in-image".to_string(), keywords_in_image.to_string())
            .with_query_param("media-type".to_string(), media_type.to_string())
            .with_query_param("number".to_string(), number.to_string())
            .with_query_param("min-rating".to_string(), min_rating.to_string())
            .execute(self.configuration.borrow())
    }

    fn upvote_meme(&self, id: i32) -> Box<Future<Item = ::models::InlineResponse2008, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Post, "/memes/{id}/upvote".to_string())
            .with_auth(__internal_request::Auth::ApiKey(__internal_request::ApiKey{
                in_header: false,
                in_query: true,
                param_name: "api-key".to_owned(),
            }))
            .with_path_param("id".to_string(), id.to_string())
            .execute(self.configuration.borrow())
    }

}