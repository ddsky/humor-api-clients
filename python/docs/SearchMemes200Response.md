# SearchMemes200Response



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**memes** | [**List[SearchMemes200ResponseMemesInner]**](SearchMemes200ResponseMemesInner.md) |  | 

## Example

```python
from humorapi.models.search_memes200_response import SearchMemes200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchMemes200Response from a JSON string
search_memes200_response_instance = SearchMemes200Response.from_json(json)
# print the JSON string representation of the object
print SearchMemes200Response.to_json()

# convert the object into a dict
search_memes200_response_dict = search_memes200_response_instance.to_dict()
# create an instance of SearchMemes200Response from a dict
search_memes200_response_form_dict = search_memes200_response.from_dict(search_memes200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


