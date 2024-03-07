(ns humor-api.specs.search-gifs-200-response-images-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-gifs-200-response-images-inner-data
  {
   (ds/req :url) string?
   (ds/req :width) int?
   (ds/req :height) int?
   })

(def search-gifs-200-response-images-inner-spec
  (ds/spec
    {:name ::search-gifs-200-response-images-inner
     :spec search-gifs-200-response-images-inner-data}))
