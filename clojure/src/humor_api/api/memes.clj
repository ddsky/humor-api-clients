(ns humor-api.api.memes
  (:require [humor-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [humor-api.specs.search-jokes-200-response :refer :all]
            [humor-api.specs.submit-joke-200-response :refer :all]
            [humor-api.specs.search-gifs-200-response-images-inner :refer :all]
            [humor-api.specs.search-memes-200-response-memes-inner :refer :all]
            [humor-api.specs.analyze-joke-200-response :refer :all]
            [humor-api.specs.praise-200-response :refer :all]
            [humor-api.specs.search-gifs-200-response :refer :all]
            [humor-api.specs.generate-nonsense-word-200-response :refer :all]
            [humor-api.specs.rate-word-200-response :refer :all]
            [humor-api.specs.search-jokes-200-response-jokes-inner :refer :all]
            [humor-api.specs.random-meme-200-response :refer :all]
            [humor-api.specs.random-joke-200-response :refer :all]
            [humor-api.specs.search-memes-200-response :refer :all]
            )
  (:import (java.io File)))


(defn-spec downvote-meme-with-http-info any?
  "Downvote a Meme
  Downvote a meme.
See https://humorapi.com/docs/#Downvote-Meme for more."
  [id int?]
  (check-required-params id)
  (call-api "/memes/{id}/downvote" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey"]}))

(defn-spec downvote-meme submit-joke-200-response-spec
  "Downvote a Meme
  Downvote a meme.
See https://humorapi.com/docs/#Downvote-Meme for more."
  [id int?]
  (let [res (:data (downvote-meme-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode submit-joke-200-response-spec res st/string-transformer)
       res)))


(defn-spec random-meme-with-http-info any?
  "Random Meme
  Get a random meme.
See https://humorapi.com/docs/#Random-Meme for more."
  ([] (random-meme-with-http-info nil))
  ([{:keys [keywords keywords-in-image media-type number min-rating]} (s/map-of keyword? any?)]
   (call-api "/memes/random" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"keywords" keywords "keywords-in-image" keywords-in-image "media-type" media-type "number" number "min-rating" min-rating }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey"]})))

(defn-spec random-meme random-meme-200-response-spec
  "Random Meme
  Get a random meme.
See https://humorapi.com/docs/#Random-Meme for more."
  ([] (random-meme nil))
  ([optional-params any?]
   (let [res (:data (random-meme-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode random-meme-200-response-spec res st/string-transformer)
        res))))


(defn-spec search-memes-with-http-info any?
  "Search Memes
  Search for memes.
See https://humorapi.com/docs/#Search-Memes for more."
  ([] (search-memes-with-http-info nil))
  ([{:keys [keywords keywords-in-image media-type number min-rating offset]} (s/map-of keyword? any?)]
   (call-api "/memes/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"keywords" keywords "keywords-in-image" keywords-in-image "media-type" media-type "number" number "min-rating" min-rating "offset" offset }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey"]})))

(defn-spec search-memes search-memes-200-response-spec
  "Search Memes
  Search for memes.
See https://humorapi.com/docs/#Search-Memes for more."
  ([] (search-memes nil))
  ([optional-params any?]
   (let [res (:data (search-memes-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-memes-200-response-spec res st/string-transformer)
        res))))


(defn-spec upvote-meme-with-http-info any?
  "Upvote a Meme
  Upvote a meme.
See https://humorapi.com/docs/#Upvote-Meme for more."
  [id int?]
  (check-required-params id)
  (call-api "/memes/{id}/upvote" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey"]}))

(defn-spec upvote-meme submit-joke-200-response-spec
  "Upvote a Meme
  Upvote a meme.
See https://humorapi.com/docs/#Upvote-Meme for more."
  [id int?]
  (let [res (:data (upvote-meme-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode submit-joke-200-response-spec res st/string-transformer)
       res)))


