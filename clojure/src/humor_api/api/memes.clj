(ns humor-api.api.memes
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

(defn-spec downvote-meme inline-response-200-8-spec
  "Downvote a Meme
  Downvote a meme.
See https://humorapi.com/docs/#Downvote-Meme for more."
  [id int?]
  (let [res (:data (downvote-meme-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-8-spec res st/string-transformer)
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

(defn-spec random-meme inline-response-200-3-spec
  "Random Meme
  Get a random meme.
See https://humorapi.com/docs/#Random-Meme for more."
  ([] (random-meme nil))
  ([optional-params any?]
   (let [res (:data (random-meme-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-3-spec res st/string-transformer)
        res))))


(defn-spec search-memes-with-http-info any?
  "Search Memes
  Search for memes.
See https://humorapi.com/docs/#Search-Memes for more."
  ([] (search-memes-with-http-info nil))
  ([{:keys [keywords keywords-in-image media-type number min-rating]} (s/map-of keyword? any?)]
   (call-api "/memes/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"keywords" keywords "keywords-in-image" keywords-in-image "media-type" media-type "number" number "min-rating" min-rating }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey"]})))

(defn-spec search-memes inline-response-200-2-spec
  "Search Memes
  Search for memes.
See https://humorapi.com/docs/#Search-Memes for more."
  ([] (search-memes nil))
  ([optional-params any?]
   (let [res (:data (search-memes-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-2-spec res st/string-transformer)
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

(defn-spec upvote-meme inline-response-200-8-spec
  "Upvote a Meme
  Upvote a meme.
See https://humorapi.com/docs/#Upvote-Meme for more."
  [id int?]
  (let [res (:data (upvote-meme-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-8-spec res st/string-transformer)
       res)))


