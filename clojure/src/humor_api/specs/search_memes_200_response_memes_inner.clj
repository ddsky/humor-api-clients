(ns humor-api.specs.search-memes-200-response-memes-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-memes-200-response-memes-inner-data
  {
   (ds/req :id) int?
   (ds/req :url) string?
   (ds/req :type) string?
   })

(def search-memes-200-response-memes-inner-spec
  (ds/spec
    {:name ::search-memes-200-response-memes-inner
     :spec search-memes-200-response-memes-inner-data}))
