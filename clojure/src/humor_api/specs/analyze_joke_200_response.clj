(ns humor-api.specs.analyze-joke-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def analyze-joke-200-response-data
  {
   (ds/req :joke) string?
   (ds/req :tags) (s/coll-of string?)
   })

(def analyze-joke-200-response-spec
  (ds/spec
    {:name ::analyze-joke-200-response
     :spec analyze-joke-200-response-data}))
