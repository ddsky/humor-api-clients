(ns humor-api.specs.inline-response-200-4
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-4-data
  {
   (ds/req :id) int?
   (ds/req :joke) string?
   })

(def inline-response-200-4-spec
  (ds/spec
    {:name ::inline-response-200-4
     :spec inline-response-200-4-data}))
