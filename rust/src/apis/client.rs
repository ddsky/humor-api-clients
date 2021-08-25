use std::rc::Rc;

use hyper;
use super::configuration::Configuration;

pub struct APIClient<C: hyper::client::Connect> {
    configuration: Rc<Configuration<C>>,
    jokes_api: Box<::apis::JokesApi>,
    memes_api: Box<::apis::MemesApi>,
    other_api: Box<::apis::OtherApi>,
}

impl<C: hyper::client::Connect> APIClient<C> {
    pub fn new(configuration: Configuration<C>) -> APIClient<C> {
        let rc = Rc::new(configuration);

        APIClient {
            configuration: rc.clone(),
            jokes_api: Box::new(::apis::JokesApiClient::new(rc.clone())),
            memes_api: Box::new(::apis::MemesApiClient::new(rc.clone())),
            other_api: Box::new(::apis::OtherApiClient::new(rc.clone())),
        }
    }

    pub fn jokes_api(&self) -> &::apis::JokesApi{
        self.jokes_api.as_ref()
    }

    pub fn memes_api(&self) -> &::apis::MemesApi{
        self.memes_api.as_ref()
    }

    pub fn other_api(&self) -> &::apis::OtherApi{
        self.other_api.as_ref()
    }

}
