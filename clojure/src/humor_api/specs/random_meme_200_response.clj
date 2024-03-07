(ns humor-api.specs.random-meme-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def random-meme-200-response-data
  {
   (ds/req :id) int?
   (ds/req :url) string?
   (ds/req :type) string?
   })

(def random-meme-200-response-spec
  (ds/spec
    {:name ::random-meme-200-response
     :spec random-meme-200-response-data}))
