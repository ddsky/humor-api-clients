(ns humor-api.specs.submit-joke-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def submit-joke-200-response-data
  {
   (ds/req :message) string?
   })

(def submit-joke-200-response-spec
  (ds/spec
    {:name ::submit-joke-200-response
     :spec submit-joke-200-response-data}))
