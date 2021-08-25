(ns humor-api.api.other
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


(defn-spec generate-nonsense-word-with-http-info any?
  "Generate Nonsense Word
  Generate a nonsense word.
See https://humorapi.com/docs/#Generate-Nonsense-Word for more."
  []
  (call-api "/words/nonsense/random" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey"]}))

(defn-spec generate-nonsense-word inline-response-200-7-spec
  "Generate Nonsense Word
  Generate a nonsense word.
See https://humorapi.com/docs/#Generate-Nonsense-Word for more."
  []
  (let [res (:data (generate-nonsense-word-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-7-spec res st/string-transformer)
       res)))


(defn-spec insult-with-http-info any?
  "Insult
  Insult somebody for doing something.
See https://humorapi.com/docs/#Insult for more."
  [name string?, reason string?]
  (check-required-params name reason)
  (call-api "/insult" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"name" name "reason" reason }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey"]}))

(defn-spec insult inline-response-200-5-spec
  "Insult
  Insult somebody for doing something.
See https://humorapi.com/docs/#Insult for more."
  [name string?, reason string?]
  (let [res (:data (insult-with-http-info name reason))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-5-spec res st/string-transformer)
       res)))


(defn-spec praise-with-http-info any?
  "Praise
  Praise somebody for doing something.
See https://humorapi.com/docs/#Praise for more."
  [name string?, reason string?]
  (check-required-params name reason)
  (call-api "/praise" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"name" name "reason" reason }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey"]}))

(defn-spec praise inline-response-200-5-spec
  "Praise
  Praise somebody for doing something.
See https://humorapi.com/docs/#Praise for more."
  [name string?, reason string?]
  (let [res (:data (praise-with-http-info name reason))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-5-spec res st/string-transformer)
       res)))


(defn-spec rate-word-with-http-info any?
  "Rate Word
  Rate the funniness of a word.
See https://humorapi.com/docs/#Rate-Word for more."
  [word string?]
  (check-required-params word)
  (call-api "/words/rate" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"word" word }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey"]}))

(defn-spec rate-word inline-response-200-6-spec
  "Rate Word
  Rate the funniness of a word.
See https://humorapi.com/docs/#Rate-Word for more."
  [word string?]
  (let [res (:data (rate-word-with-http-info word))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-6-spec res st/string-transformer)
       res)))


(defn-spec search-gifs-with-http-info any?
  "Search Gifs
  Search for gifs.
See https://humorapi.com/docs/#Search-Gifs for more."
  ([query string?, ] (search-gifs-with-http-info query nil))
  ([query string?, {:keys [number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/gif/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey"]})))

(defn-spec search-gifs inline-response-200-1-spec
  "Search Gifs
  Search for gifs.
See https://humorapi.com/docs/#Search-Gifs for more."
  ([query string?, ] (search-gifs query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-gifs-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-1-spec res st/string-transformer)
        res))))


