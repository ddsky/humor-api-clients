(ns humor-api.specs.search-jokes-200-response-jokes-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-jokes-200-response-jokes-inner-data
  {
   (ds/req :id) int?
   (ds/req :joke) string?
   })

(def search-jokes-200-response-jokes-inner-spec
  (ds/spec
    {:name ::search-jokes-200-response-jokes-inner
     :spec search-jokes-200-response-jokes-inner-data}))
