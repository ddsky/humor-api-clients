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

from humorapi.models.random_joke200_response import RandomJoke200Response

class TestRandomJoke200Response(unittest.TestCase):
    """RandomJoke200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RandomJoke200Response:
        """Test RandomJoke200Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RandomJoke200Response`
        """
        model = RandomJoke200Response()
        if include_optional:
            return RandomJoke200Response(
                id = 56,
                joke = '0'
            )
        else:
            return RandomJoke200Response(
                id = 56,
                joke = '0',
        )
        """

    def testRandomJoke200Response(self):
        """Test RandomJoke200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
