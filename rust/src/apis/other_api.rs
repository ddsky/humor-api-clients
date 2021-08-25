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

pub struct OtherApiClient<C: hyper::client::Connect> {
    configuration: Rc<configuration::Configuration<C>>,
}

impl<C: hyper::client::Connect> OtherApiClient<C> {
    pub fn new(configuration: Rc<configuration::Configuration<C>>) -> OtherApiClient<C> {
        OtherApiClient {
            configuration: configuration,
        }
    }
}

pub trait OtherApi {
    fn generate_nonsense_word(&self, ) -> Box<Future<Item = ::models::InlineResponse2007, Error = Error<serde_json::Value>>>;
    fn insult(&self, name: &str, reason: &str) -> Box<Future<Item = ::models::InlineResponse2005, Error = Error<serde_json::Value>>>;
    fn praise(&self, name: &str, reason: &str) -> Box<Future<Item = ::models::InlineResponse2005, Error = Error<serde_json::Value>>>;
    fn rate_word(&self, word: &str) -> Box<Future<Item = ::models::InlineResponse2006, Error = Error<serde_json::Value>>>;
    fn search_gifs(&self, query: &str, number: i32) -> Box<Future<Item = ::models::InlineResponse2001, Error = Error<serde_json::Value>>>;
}


impl<C: hyper::client::Connect>OtherApi for OtherApiClient<C> {
    fn generate_nonsense_word(&self, ) -> Box<Future<Item = ::models::InlineResponse2007, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/words/nonsense/random".to_string())
            .with_auth(__internal_request::Auth::ApiKey(__internal_request::ApiKey{
                in_header: false,
                in_query: true,
                param_name: "api-key".to_owned(),
            }))
            .execute(self.configuration.borrow())
    }

    fn insult(&self, name: &str, reason: &str) -> Box<Future<Item = ::models::InlineResponse2005, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/insult".to_string())
            .with_auth(__internal_request::Auth::ApiKey(__internal_request::ApiKey{
                in_header: false,
                in_query: true,
                param_name: "api-key".to_owned(),
            }))
            .with_query_param("name".to_string(), name.to_string())
            .with_query_param("reason".to_string(), reason.to_string())
            .execute(self.configuration.borrow())
    }

    fn praise(&self, name: &str, reason: &str) -> Box<Future<Item = ::models::InlineResponse2005, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/praise".to_string())
            .with_auth(__internal_request::Auth::ApiKey(__internal_request::ApiKey{
                in_header: false,
                in_query: true,
                param_name: "api-key".to_owned(),
            }))
            .with_query_param("name".to_string(), name.to_string())
            .with_query_param("reason".to_string(), reason.to_string())
            .execute(self.configuration.borrow())
    }

    fn rate_word(&self, word: &str) -> Box<Future<Item = ::models::InlineResponse2006, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/words/rate".to_string())
            .with_auth(__internal_request::Auth::ApiKey(__internal_request::ApiKey{
                in_header: false,
                in_query: true,
                param_name: "api-key".to_owned(),
            }))
            .with_query_param("word".to_string(), word.to_string())
            .execute(self.configuration.borrow())
    }

    fn search_gifs(&self, query: &str, number: i32) -> Box<Future<Item = ::models::InlineResponse2001, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/gif/search".to_string())
            .with_auth(__internal_request::Auth::ApiKey(__internal_request::ApiKey{
                in_header: false,
                in_query: true,
                param_name: "api-key".to_owned(),
            }))
            .with_query_param("query".to_string(), query.to_string())
            .with_query_param("number".to_string(), number.to_string())
            .execute(self.configuration.borrow())
    }

}