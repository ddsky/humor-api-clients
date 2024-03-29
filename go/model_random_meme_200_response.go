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

// checks if the RandomMeme200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RandomMeme200Response{}

// RandomMeme200Response 
type RandomMeme200Response struct {
	Id int32 `json:"id"`
	Url string `json:"url"`
	Type string `json:"type"`
}

type _RandomMeme200Response RandomMeme200Response

// NewRandomMeme200Response instantiates a new RandomMeme200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRandomMeme200Response(id int32, url string, type_ string) *RandomMeme200Response {
	this := RandomMeme200Response{}
	this.Id = id
	this.Url = url
	this.Type = type_
	return &this
}

// NewRandomMeme200ResponseWithDefaults instantiates a new RandomMeme200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRandomMeme200ResponseWithDefaults() *RandomMeme200Response {
	this := RandomMeme200Response{}
	return &this
}

// GetId returns the Id field value
func (o *RandomMeme200Response) GetId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *RandomMeme200Response) GetIdOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *RandomMeme200Response) SetId(v int32) {
	o.Id = v
}

// GetUrl returns the Url field value
func (o *RandomMeme200Response) GetUrl() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Url
}

// GetUrlOk returns a tuple with the Url field value
// and a boolean to check if the value has been set.
func (o *RandomMeme200Response) GetUrlOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Url, true
}

// SetUrl sets field value
func (o *RandomMeme200Response) SetUrl(v string) {
	o.Url = v
}

// GetType returns the Type field value
func (o *RandomMeme200Response) GetType() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Type
}

// GetTypeOk returns a tuple with the Type field value
// and a boolean to check if the value has been set.
func (o *RandomMeme200Response) GetTypeOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Type, true
}

// SetType sets field value
func (o *RandomMeme200Response) SetType(v string) {
	o.Type = v
}

func (o RandomMeme200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RandomMeme200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["id"] = o.Id
	toSerialize["url"] = o.Url
	toSerialize["type"] = o.Type
	return toSerialize, nil
}

func (o *RandomMeme200Response) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"id",
		"url",
		"type",
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

	varRandomMeme200Response := _RandomMeme200Response{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varRandomMeme200Response)

	if err != nil {
		return err
	}

	*o = RandomMeme200Response(varRandomMeme200Response)

	return err
}

type NullableRandomMeme200Response struct {
	value *RandomMeme200Response
	isSet bool
}

func (v NullableRandomMeme200Response) Get() *RandomMeme200Response {
	return v.value
}

func (v *NullableRandomMeme200Response) Set(val *RandomMeme200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableRandomMeme200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableRandomMeme200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRandomMeme200Response(val *RandomMeme200Response) *NullableRandomMeme200Response {
	return &NullableRandomMeme200Response{value: val, isSet: true}
}

func (v NullableRandomMeme200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRandomMeme200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


