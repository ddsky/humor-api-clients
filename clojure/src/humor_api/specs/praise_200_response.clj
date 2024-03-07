(ns humor-api.specs.praise-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def praise-200-response-data
  {
   (ds/req :text) string?
   })

(def praise-200-response-spec
  (ds/spec
    {:name ::praise-200-response
     :spec praise-200-response-data}))
