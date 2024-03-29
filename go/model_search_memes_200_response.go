/*
Humor API

Awesome Humor API.

API version: 1.0
Contact: mail@humorapi.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package humorapi

import (
	"encoding/json"
	"bytes"
	"fmt"
)

// checks if the SearchMemes200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchMemes200Response{}

// SearchMemes200Response 
type SearchMemes200Response struct {
	Memes []SearchMemes200ResponseMemesInner `json:"memes"`
}

type _SearchMemes200Response SearchMemes200Response

// NewSearchMemes200Response instantiates a new SearchMemes200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchMemes200Response(memes []SearchMemes200ResponseMemesInner) *SearchMemes200Response {
	this := SearchMemes200Response{}
	this.Memes = memes
	return &this
}

// NewSearchMemes200ResponseWithDefaults instantiates a new SearchMemes200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchMemes200ResponseWithDefaults() *SearchMemes200Response {
	this := SearchMemes200Response{}
	return &this
}

// GetMemes returns the Memes field value
func (o *SearchMemes200Response) GetMemes() []SearchMemes200ResponseMemesInner {
	if o == nil {
		var ret []SearchMemes200ResponseMemesInner
		return ret
	}

	return o.Memes
}

// GetMemesOk returns a tuple with the Memes field value
// and a boolean to check if the value has been set.
func (o *SearchMemes200Response) GetMemesOk() ([]SearchMemes200ResponseMemesInner, bool) {
	if o == nil {
		return nil, false
	}
	return o.Memes, true
}

// SetMemes sets field value
func (o *SearchMemes200Response) SetMemes(v []SearchMemes200ResponseMemesInner) {
	o.Memes = v
}

func (o SearchMemes200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchMemes200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["memes"] = o.Memes
	return toSerialize, nil
}

func (o *SearchMemes200Response) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"memes",
	}

	allProperties := make(map[string]interface{})

	err = json.Unmarshal(data, &allProperties)

	if err != nil {
		return err;
	}

	for _, requiredProperty := range(requiredProperties) {
		if _, exists := allProperties[requiredProperty]; !exists {
			return fmt.Errorf("no value given for required property %v", requiredProperty)
		}
	}

	varSearchMemes200Response := _SearchMemes200Response{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varSearchMemes200Response)

	if err != nil {
		return err
	}

	*o = SearchMemes200Response(varSearchMemes200Response)

	return err
}

type NullableSearchMemes200Response struct {
	value *SearchMemes200Response
	isSet bool
}

func (v NullableSearchMemes200Response) Get() *SearchMemes200Response {
	return v.value
}

func (v *NullableSearchMemes200Response) Set(val *SearchMemes200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchMemes200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchMemes200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchMemes200Response(val *SearchMemes200Response) *NullableSearchMemes200Response {
	return &NullableSearchMemes200Response{value: val, isSet: true}
}

func (v NullableSearchMemes200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchMemes200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


