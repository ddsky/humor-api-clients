(ns humor-api.specs.random-joke-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def random-joke-200-response-data
  {
   (ds/req :id) int?
   (ds/req :joke) string?
   })

(def random-joke-200-response-spec
  (ds/spec
    {:name ::random-joke-200-response
     :spec random-joke-200-response-data}))
