(ns humor-api.specs.rate-word-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def rate-word-200-response-data
  {
   (ds/req :rating) float?
   })

(def rate-word-200-response-spec
  (ds/spec
    {:name ::rate-word-200-response
     :spec rate-word-200-response-data}))
