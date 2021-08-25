# coding: utf-8

"""
    Humor API

    Awesome Humor API.  # noqa: E501

    The version of the OpenAPI document: 1.0
    Contact: mail@humorapi.com
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

import re  # noqa: F401

# python 2 and python 3 compatibility library
import six

from humorapi.api_client import ApiClient
from humorapi.exceptions import (
    ApiTypeError,
    ApiValueError
)


class JokesApi(object):
    """NOTE: This class is auto generated by OpenAPI Generator
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def analyze_joke(self, **kwargs):  # noqa: E501
        """Analyze Joke  # noqa: E501

        Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.analyze_joke(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str body: Post the joke as plain text.
        :return: InlineResponse2009
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.analyze_joke_with_http_info(**kwargs)  # noqa: E501
        else:
            (data) = self.analyze_joke_with_http_info(**kwargs)  # noqa: E501
            return data

    def analyze_joke_with_http_info(self, **kwargs):  # noqa: E501
        """Analyze Joke  # noqa: E501

        Analyze a joke. See https://humorapi.com/docs/#Analyze-Joke for more.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.analyze_joke_with_http_info(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str body: Post the joke as plain text.
        :return: InlineResponse2009
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['body']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method analyze_joke" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        if 'body' in local_var_params:
            body_params = local_var_params['body']
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['text/plain'])  # noqa: E501

        # Authentication setting
        auth_settings = ['apiKey']  # noqa: E501

        return self.api_client.call_api(
            '/jokes/analyze', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='InlineResponse2009',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)

    def downvote_joke(self, id, **kwargs):  # noqa: E501
        """Downvote a Joke  # noqa: E501

        Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.downvote_joke(id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int id: The object's id. (required)
        :return: InlineResponse2008
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.downvote_joke_with_http_info(id, **kwargs)  # noqa: E501
        else:
            (data) = self.downvote_joke_with_http_info(id, **kwargs)  # noqa: E501
            return data

    def downvote_joke_with_http_info(self, id, **kwargs):  # noqa: E501
        """Downvote a Joke  # noqa: E501

        Downvote a joke. See https://humorapi.com/docs/#Downvote-Joke for more.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.downvote_joke_with_http_info(id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int id: The object's id. (required)
        :return: InlineResponse2008
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['id']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method downvote_joke" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'id' is set
        if ('id' not in local_var_params or
                local_var_params['id'] is None):
            raise ApiValueError("Missing the required parameter `id` when calling `downvote_joke`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'id' in local_var_params:
            path_params['id'] = local_var_params['id']  # noqa: E501

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['apiKey']  # noqa: E501

        return self.api_client.call_api(
            '/jokes/{id}/downvote', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='InlineResponse2008',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)

    def random_joke(self, **kwargs):  # noqa: E501
        """Random Joke  # noqa: E501

        Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.random_joke(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str keywords: A comma separated list of keywords.
        :param str include_tags: A comma separated list of tags that the joke must have.
        :param str exclude_tags: A comma separated list of tags that the joke must not have.
        :param int min_rating: The minimum rating between 0 and 10 the result should have.
        :param int max_length: The maximum number of letters in the joke.
        :return: InlineResponse2004
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.random_joke_with_http_info(**kwargs)  # noqa: E501
        else:
            (data) = self.random_joke_with_http_info(**kwargs)  # noqa: E501
            return data

    def random_joke_with_http_info(self, **kwargs):  # noqa: E501
        """Random Joke  # noqa: E501

        Get a random joke. See https://humorapi.com/docs/#Random-Joke for more.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.random_joke_with_http_info(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str keywords: A comma separated list of keywords.
        :param str include_tags: A comma separated list of tags that the joke must have.
        :param str exclude_tags: A comma separated list of tags that the joke must not have.
        :param int min_rating: The minimum rating between 0 and 10 the result should have.
        :param int max_length: The maximum number of letters in the joke.
        :return: InlineResponse2004
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['keywords', 'include_tags', 'exclude_tags', 'min_rating', 'max_length']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method random_joke" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']

        if ('min_rating' in local_var_params and
                len(local_var_params['min_rating']) < 0):
            raise ApiValueError("Invalid value for parameter `min_rating` when calling `random_joke`, length must be greater than or equal to `0`")  # noqa: E501
        if 'min_rating' in local_var_params and local_var_params['min_rating'] > 10:  # noqa: E501
            raise ApiValueError("Invalid value for parameter `min_rating` when calling `random_joke`, must be a value less than or equal to `10`")  # noqa: E501
        if 'min_rating' in local_var_params and local_var_params['min_rating'] < 0:  # noqa: E501
            raise ApiValueError("Invalid value for parameter `min_rating` when calling `random_joke`, must be a value greater than or equal to `0`")  # noqa: E501
        if 'max_length' in local_var_params and local_var_params['max_length'] > 9999:  # noqa: E501
            raise ApiValueError("Invalid value for parameter `max_length` when calling `random_joke`, must be a value less than or equal to `9999`")  # noqa: E501
        if 'max_length' in local_var_params and local_var_params['max_length'] < 10:  # noqa: E501
            raise ApiValueError("Invalid value for parameter `max_length` when calling `random_joke`, must be a value greater than or equal to `10`")  # noqa: E501
        collection_formats = {}

        path_params = {}

        query_params = []
        if 'keywords' in local_var_params:
            query_params.append(('keywords', local_var_params['keywords']))  # noqa: E501
        if 'include_tags' in local_var_params:
            query_params.append(('include-tags', local_var_params['include_tags']))  # noqa: E501
        if 'exclude_tags' in local_var_params:
            query_params.append(('exclude-tags', local_var_params['exclude_tags']))  # noqa: E501
        if 'min_rating' in local_var_params:
            query_params.append(('min-rating', local_var_params['min_rating']))  # noqa: E501
        if 'max_length' in local_var_params:
            query_params.append(('max-length', local_var_params['max_length']))  # noqa: E501

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['apiKey']  # noqa: E501

        return self.api_client.call_api(
            '/jokes/random', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='InlineResponse2004',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)

    def search_jokes(self, **kwargs):  # noqa: E501
        """Search Jokes  # noqa: E501

        Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.search_jokes(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str keywords: A comma separated list of keywords.
        :param str include_tags: A comma separated list of tags that the joke must have.
        :param str exclude_tags: A comma separated list of tags that the joke must not have.
        :param int number: The number of results to retrieve between 1 and 10.
        :param int min_rating: The minimum rating between 0 and 10 the result should have.
        :param int max_length: The maximum number of letters in the joke.
        :return: InlineResponse200
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.search_jokes_with_http_info(**kwargs)  # noqa: E501
        else:
            (data) = self.search_jokes_with_http_info(**kwargs)  # noqa: E501
            return data

    def search_jokes_with_http_info(self, **kwargs):  # noqa: E501
        """Search Jokes  # noqa: E501

        Search for jokes. See https://humorapi.com/docs/#Search-Jokes for more.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.search_jokes_with_http_info(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str keywords: A comma separated list of keywords.
        :param str include_tags: A comma separated list of tags that the joke must have.
        :param str exclude_tags: A comma separated list of tags that the joke must not have.
        :param int number: The number of results to retrieve between 1 and 10.
        :param int min_rating: The minimum rating between 0 and 10 the result should have.
        :param int max_length: The maximum number of letters in the joke.
        :return: InlineResponse200
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['keywords', 'include_tags', 'exclude_tags', 'number', 'min_rating', 'max_length']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method search_jokes" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']

        if 'number' in local_var_params and local_var_params['number'] > 10:  # noqa: E501
            raise ApiValueError("Invalid value for parameter `number` when calling `search_jokes`, must be a value less than or equal to `10`")  # noqa: E501
        if 'number' in local_var_params and local_var_params['number'] < 1:  # noqa: E501
            raise ApiValueError("Invalid value for parameter `number` when calling `search_jokes`, must be a value greater than or equal to `1`")  # noqa: E501
        if ('min_rating' in local_var_params and
                len(local_var_params['min_rating']) < 0):
            raise ApiValueError("Invalid value for parameter `min_rating` when calling `search_jokes`, length must be greater than or equal to `0`")  # noqa: E501
        if 'min_rating' in local_var_params and local_var_params['min_rating'] > 10:  # noqa: E501
            raise ApiValueError("Invalid value for parameter `min_rating` when calling `search_jokes`, must be a value less than or equal to `10`")  # noqa: E501
        if 'min_rating' in local_var_params and local_var_params['min_rating'] < 0:  # noqa: E501
            raise ApiValueError("Invalid value for parameter `min_rating` when calling `search_jokes`, must be a value greater than or equal to `0`")  # noqa: E501
        if 'max_length' in local_var_params and local_var_params['max_length'] > 9999:  # noqa: E501
            raise ApiValueError("Invalid value for parameter `max_length` when calling `search_jokes`, must be a value less than or equal to `9999`")  # noqa: E501
        if 'max_length' in local_var_params and local_var_params['max_length'] < 10:  # noqa: E501
            raise ApiValueError("Invalid value for parameter `max_length` when calling `search_jokes`, must be a value greater than or equal to `10`")  # noqa: E501
        collection_formats = {}

        path_params = {}

        query_params = []
        if 'keywords' in local_var_params:
            query_params.append(('keywords', local_var_params['keywords']))  # noqa: E501
        if 'include_tags' in local_var_params:
            query_params.append(('include-tags', local_var_params['include_tags']))  # noqa: E501
        if 'exclude_tags' in local_var_params:
            query_params.append(('exclude-tags', local_var_params['exclude_tags']))  # noqa: E501
        if 'number' in local_var_params:
            query_params.append(('number', local_var_params['number']))  # noqa: E501
        if 'min_rating' in local_var_params:
            query_params.append(('min-rating', local_var_params['min_rating']))  # noqa: E501
        if 'max_length' in local_var_params:
            query_params.append(('max-length', local_var_params['max_length']))  # noqa: E501

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['apiKey']  # noqa: E501

        return self.api_client.call_api(
            '/jokes/search', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='InlineResponse200',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)

    def submit_joke(self, **kwargs):  # noqa: E501
        """Submit Joke  # noqa: E501

        Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.submit_joke(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str body: Post the joke as plain text.
        :return: InlineResponse2008
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.submit_joke_with_http_info(**kwargs)  # noqa: E501
        else:
            (data) = self.submit_joke_with_http_info(**kwargs)  # noqa: E501
            return data

    def submit_joke_with_http_info(self, **kwargs):  # noqa: E501
        """Submit Joke  # noqa: E501

        Submit a joke. See https://humorapi.com/docs/#Submit-Joke for more.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.submit_joke_with_http_info(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str body: Post the joke as plain text.
        :return: InlineResponse2008
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['body']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method submit_joke" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        if 'body' in local_var_params:
            body_params = local_var_params['body']
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['text/plain'])  # noqa: E501

        # Authentication setting
        auth_settings = ['apiKey']  # noqa: E501

        return self.api_client.call_api(
            '/jokes', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='InlineResponse2008',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)

    def upvote_joke(self, id, **kwargs):  # noqa: E501
        """Upvote a Joke  # noqa: E501

        Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.upvote_joke(id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int id: The object's id. (required)
        :return: InlineResponse2008
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.upvote_joke_with_http_info(id, **kwargs)  # noqa: E501
        else:
            (data) = self.upvote_joke_with_http_info(id, **kwargs)  # noqa: E501
            return data

    def upvote_joke_with_http_info(self, id, **kwargs):  # noqa: E501
        """Upvote a Joke  # noqa: E501

        Upvote a joke. See https://humorapi.com/docs/#Upvote-Joke for more.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.upvote_joke_with_http_info(id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int id: The object's id. (required)
        :return: InlineResponse2008
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['id']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method upvote_joke" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'id' is set
        if ('id' not in local_var_params or
                local_var_params['id'] is None):
            raise ApiValueError("Missing the required parameter `id` when calling `upvote_joke`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'id' in local_var_params:
            path_params['id'] = local_var_params['id']  # noqa: E501

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['apiKey']  # noqa: E501

        return self.api_client.call_api(
            '/jokes/{id}/upvote', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='InlineResponse2008',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)
