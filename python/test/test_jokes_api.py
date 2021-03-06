"""
    Humor API

    Awesome Humor API.  # noqa: E501

    The version of the OpenAPI document: 1.0
    Contact: mail@humorapi.com
    Generated by: https://openapi-generator.tech
"""


import unittest

import openapi_client
from com.humorapi.jokes_api import JokesApi  # noqa: E501


class TestJokesApi(unittest.TestCase):
    """JokesApi unit test stubs"""

    def setUp(self):
        self.api = JokesApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_analyze_joke(self):
        """Test case for analyze_joke

        Analyze Joke  # noqa: E501
        """
        pass

    def test_downvote_joke(self):
        """Test case for downvote_joke

        Downvote a Joke  # noqa: E501
        """
        pass

    def test_random_joke(self):
        """Test case for random_joke

        Random Joke  # noqa: E501
        """
        pass

    def test_search_jokes(self):
        """Test case for search_jokes

        Search Jokes  # noqa: E501
        """
        pass

    def test_submit_joke(self):
        """Test case for submit_joke

        Submit Joke  # noqa: E501
        """
        pass

    def test_upvote_joke(self):
        """Test case for upvote_joke

        Upvote a Joke  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()
