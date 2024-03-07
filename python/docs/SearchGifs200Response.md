# SearchGifs200Response



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**images** | [**List[SearchGifs200ResponseImagesInner]**](SearchGifs200ResponseImagesInner.md) |  | 

## Example

```python
from humorapi.models.search_gifs200_response import SearchGifs200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchGifs200Response from a JSON string
search_gifs200_response_instance = SearchGifs200Response.from_json(json)
# print the JSON string representation of the object
print SearchGifs200Response.to_json()

# convert the object into a dict
search_gifs200_response_dict = search_gifs200_response_instance.to_dict()
# create an instance of SearchGifs200Response from a dict
search_gifs200_response_form_dict = search_gifs200_response.from_dict(search_gifs200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


