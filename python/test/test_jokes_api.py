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

from humorapi.api.jokes_api import JokesApi


class TestJokesApi(unittest.TestCase):
    """JokesApi unit test stubs"""

    def setUp(self) -> None:
        self.api = JokesApi()

    def tearDown(self) -> None:
        pass

    def test_analyze_joke(self) -> None:
        """Test case for analyze_joke

        Analyze Joke
        """
        pass

    def test_downvote_joke(self) -> None:
        """Test case for downvote_joke

        Downvote a Joke
        """
        pass

    def test_random_joke(self) -> None:
        """Test case for random_joke

        Random Joke
        """
        pass

    def test_search_jokes(self) -> None:
        """Test case for search_jokes

        Search Jokes
        """
        pass

    def test_submit_joke(self) -> None:
        """Test case for submit_joke

        Submit Joke
        """
        pass

    def test_upvote_joke(self) -> None:
        """Test case for upvote_joke

        Upvote a Joke
        """
        pass


if __name__ == '__main__':
    unittest.main()
