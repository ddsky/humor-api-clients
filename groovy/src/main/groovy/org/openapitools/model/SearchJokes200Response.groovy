package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.SearchJokes200ResponseJokesInner;

@Canonical
class SearchJokes200Response {
    
    Set<SearchJokes200ResponseJokesInner> jokes = new LinkedHashSet<>()
}
