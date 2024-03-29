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

// checks if the SearchGifs200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchGifs200Response{}

// SearchGifs200Response 
type SearchGifs200Response struct {
	Images []SearchGifs200ResponseImagesInner `json:"images"`
}

type _SearchGifs200Response SearchGifs200Response

// NewSearchGifs200Response instantiates a new SearchGifs200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchGifs200Response(images []SearchGifs200ResponseImagesInner) *SearchGifs200Response {
	this := SearchGifs200Response{}
	this.Images = images
	return &this
}

// NewSearchGifs200ResponseWithDefaults instantiates a new SearchGifs200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchGifs200ResponseWithDefaults() *SearchGifs200Response {
	this := SearchGifs200Response{}
	return &this
}

// GetImages returns the Images field value
func (o *SearchGifs200Response) GetImages() []SearchGifs200ResponseImagesInner {
	if o == nil {
		var ret []SearchGifs200ResponseImagesInner
		return ret
	}

	return o.Images
}

// GetImagesOk returns a tuple with the Images field value
// and a boolean to check if the value has been set.
func (o *SearchGifs200Response) GetImagesOk() ([]SearchGifs200ResponseImagesInner, bool) {
	if o == nil {
		return nil, false
	}
	return o.Images, true
}

// SetImages sets field value
func (o *SearchGifs200Response) SetImages(v []SearchGifs200ResponseImagesInner) {
	o.Images = v
}

func (o SearchGifs200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchGifs200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["images"] = o.Images
	return toSerialize, nil
}

func (o *SearchGifs200Response) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"images",
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

	varSearchGifs200Response := _SearchGifs200Response{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varSearchGifs200Response)

	if err != nil {
		return err
	}

	*o = SearchGifs200Response(varSearchGifs200Response)

	return err
}

type NullableSearchGifs200Response struct {
	value *SearchGifs200Response
	isSet bool
}

func (v NullableSearchGifs200Response) Get() *SearchGifs200Response {
	return v.value
}

func (v *NullableSearchGifs200Response) Set(val *SearchGifs200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchGifs200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchGifs200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchGifs200Response(val *SearchGifs200Response) *NullableSearchGifs200Response {
	return &NullableSearchGifs200Response{value: val, isSet: true}
}

func (v NullableSearchGifs200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchGifs200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


