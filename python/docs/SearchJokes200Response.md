# SearchJokes200Response



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**jokes** | [**List[SearchJokes200ResponseJokesInner]**](SearchJokes200ResponseJokesInner.md) |  | 

## Example

```python
from humorapi.models.search_jokes200_response import SearchJokes200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchJokes200Response from a JSON string
search_jokes200_response_instance = SearchJokes200Response.from_json(json)
# print the JSON string representation of the object
print SearchJokes200Response.to_json()

# convert the object into a dict
search_jokes200_response_dict = search_jokes200_response_instance.to_dict()
# create an instance of SearchJokes200Response from a dict
search_jokes200_response_form_dict = search_jokes200_response.from_dict(search_jokes200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


