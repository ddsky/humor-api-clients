# coding: utf-8

"""
    Humor API

    Awesome Humor API.

    The version of the OpenAPI document: 1.0
    Contact: mail@humorapi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from humorapi.models.search_jokes200_response_jokes_inner import SearchJokes200ResponseJokesInner

class TestSearchJokes200ResponseJokesInner(unittest.TestCase):
    """SearchJokes200ResponseJokesInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchJokes200ResponseJokesInner:
        """Test SearchJokes200ResponseJokesInner
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchJokes200ResponseJokesInner`
        """
        model = SearchJokes200ResponseJokesInner()
        if include_optional:
            return SearchJokes200ResponseJokesInner(
                id = 56,
                joke = '0'
            )
        else:
            return SearchJokes200ResponseJokesInner(
                id = 56,
                joke = '0',
        )
        """

    def testSearchJokes200ResponseJokesInner(self):
        """Test SearchJokes200ResponseJokesInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
