(ns humor-api.specs.search-jokes-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [humor-api.specs.search-jokes-200-response-jokes-inner :refer :all]
            )
  (:import (java.io File)))


(def search-jokes-200-response-data
  {
   (ds/req :jokes) (s/coll-of search-jokes-200-response-jokes-inner-spec)
   })

(def search-jokes-200-response-spec
  (ds/spec
    {:name ::search-jokes-200-response
     :spec search-jokes-200-response-data}))
