(ns humor-api.api.jokes
  (:require [humor-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [humor-api.specs.inline-response-200-9 :refer :all]
            [humor-api.specs.inline-response-200-8 :refer :all]
            [humor-api.specs.inline-response-200-7 :refer :all]
            [humor-api.specs.inline-response-200-6 :refer :all]
            [humor-api.specs.inline-response-200-5 :refer :all]
            [humor-api.specs.inline-response-200-4 :refer :all]
            [humor-api.specs.inline-response-200-3 :refer :all]
            [humor-api.specs.inline-response-200-2 :refer :all]
            [humor-api.specs.inline-response-200-1 :refer :all]
            [humor-api.specs.inline-response-200 :refer :all]
            )
  (:import (java.io File)))


(defn-spec analyze-joke-with-http-info any?
  "Analyze Joke
  Analyze a joke.
See https://humorapi.com/docs/#Analyze-Joke for more."
  ([] (analyze-joke-with-http-info nil))
  ([{:keys [body]} (s/map-of keyword? any?)]
   (call-api "/jokes/analyze" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["text/plain"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey"]})))

(defn-spec analyze-joke inline-response-200-9-spec
  "Analyze Joke
  Analyze a joke.
See https://humorapi.com/docs/#Analyze-Joke for more."
  ([] (analyze-joke nil))
  ([optional-params any?]
   (let [res (:data (analyze-joke-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-9-spec res st/string-transformer)
        res))))


(defn-spec downvote-joke-with-http-info any?
  "Downvote a Joke
  Downvote a joke.
See https://humorapi.com/docs/#Downvote-Joke for more."
  [id int?]
  (check-required-params id)
  (call-api "/jokes/{id}/downvote" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey"]}))

(defn-spec downvote-joke inline-response-200-8-spec
  "Downvote a Joke
  Downvote a joke.
See https://humorapi.com/docs/#Downvote-Joke for more."
  [id int?]
  (let [res (:data (downvote-joke-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-8-spec res st/string-transformer)
       res)))


(defn-spec random-joke-with-http-info any?
  "Random Joke
  Get a random joke.
See https://humorapi.com/docs/#Random-Joke for more."
  ([] (random-joke-with-http-info nil))
  ([{:keys [keywords include-tags exclude-tags min-rating max-length]} (s/map-of keyword? any?)]
   (call-api "/jokes/random" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"keywords" keywords "include-tags" include-tags "exclude-tags" exclude-tags "min-rating" min-rating "max-length" max-length }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey"]})))

(defn-spec random-joke inline-response-200-4-spec
  "Random Joke
  Get a random joke.
See https://humorapi.com/docs/#Random-Joke for more."
  ([] (random-joke nil))
  ([optional-params any?]
   (let [res (:data (random-joke-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-4-spec res st/string-transformer)
        res))))


(defn-spec search-jokes-with-http-info any?
  "Search Jokes
  Search for jokes.
See https://humorapi.com/docs/#Search-Jokes for more."
  ([] (search-jokes-with-http-info nil))
  ([{:keys [keywords include-tags exclude-tags number min-rating max-length offset]} (s/map-of keyword? any?)]
   (call-api "/jokes/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"keywords" keywords "include-tags" include-tags "exclude-tags" exclude-tags "number" number "min-rating" min-rating "max-length" max-length "offset" offset }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey"]})))

(defn-spec search-jokes inline-response-200-spec
  "Search Jokes
  Search for jokes.
See https://humorapi.com/docs/#Search-Jokes for more."
  ([] (search-jokes nil))
  ([optional-params any?]
   (let [res (:data (search-jokes-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-spec res st/string-transformer)
        res))))


(defn-spec submit-joke-with-http-info any?
  "Submit Joke
  Submit a joke.
See https://humorapi.com/docs/#Submit-Joke for more."
  ([] (submit-joke-with-http-info nil))
  ([{:keys [body]} (s/map-of keyword? any?)]
   (call-api "/jokes" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["text/plain"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey"]})))

(defn-spec submit-joke inline-response-200-8-spec
  "Submit Joke
  Submit a joke.
See https://humorapi.com/docs/#Submit-Joke for more."
  ([] (submit-joke nil))
  ([optional-params any?]
   (let [res (:data (submit-joke-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-8-spec res st/string-transformer)
        res))))


(defn-spec upvote-joke-with-http-info any?
  "Upvote a Joke
  Upvote a joke.
See https://humorapi.com/docs/#Upvote-Joke for more."
  [id int?]
  (check-required-params id)
  (call-api "/jokes/{id}/upvote" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey"]}))

(defn-spec upvote-joke inline-response-200-8-spec
  "Upvote a Joke
  Upvote a joke.
See https://humorapi.com/docs/#Upvote-Joke for more."
  [id int?]
  (let [res (:data (upvote-joke-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-8-spec res st/string-transformer)
       res)))


