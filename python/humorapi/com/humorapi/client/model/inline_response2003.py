# coding: utf-8

"""
    Humor API

    Awesome Humor API.  # noqa: E501

    The version of the OpenAPI document: 1.0
    Contact: mail@humorapi.com
    Generated by: https://openapi-generator.tech
"""


import pprint
import re  # noqa: F401

import six


class InlineResponse2003(object):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    """
    Attributes:
      openapi_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    openapi_types = {
        'id': 'int',
        'url': 'str',
        'type': 'str'
    }

    attribute_map = {
        'id': 'id',
        'url': 'url',
        'type': 'type'
    }

    def __init__(self, id=None, url=None, type=None):  # noqa: E501
        """InlineResponse2003 - a model defined in OpenAPI"""  # noqa: E501

        self._id = None
        self._url = None
        self._type = None
        self.discriminator = None

        self.id = id
        self.url = url
        self.type = type

    @property
    def id(self):
        """Gets the id of this InlineResponse2003.  # noqa: E501


        :return: The id of this InlineResponse2003.  # noqa: E501
        :rtype: int
        """
        return self._id

    @id.setter
    def id(self, id):
        """Sets the id of this InlineResponse2003.


        :param id: The id of this InlineResponse2003.  # noqa: E501
        :type: int
        """
        if id is None:
            raise ValueError("Invalid value for `id`, must not be `None`")  # noqa: E501

        self._id = id

    @property
    def url(self):
        """Gets the url of this InlineResponse2003.  # noqa: E501


        :return: The url of this InlineResponse2003.  # noqa: E501
        :rtype: str
        """
        return self._url

    @url.setter
    def url(self, url):
        """Sets the url of this InlineResponse2003.


        :param url: The url of this InlineResponse2003.  # noqa: E501
        :type: str
        """
        if url is None:
            raise ValueError("Invalid value for `url`, must not be `None`")  # noqa: E501
        if url is not None and len(url) < 1:
            raise ValueError("Invalid value for `url`, length must be greater than or equal to `1`")  # noqa: E501

        self._url = url

    @property
    def type(self):
        """Gets the type of this InlineResponse2003.  # noqa: E501


        :return: The type of this InlineResponse2003.  # noqa: E501
        :rtype: str
        """
        return self._type

    @type.setter
    def type(self, type):
        """Sets the type of this InlineResponse2003.


        :param type: The type of this InlineResponse2003.  # noqa: E501
        :type: str
        """
        if type is None:
            raise ValueError("Invalid value for `type`, must not be `None`")  # noqa: E501
        if type is not None and len(type) < 1:
            raise ValueError("Invalid value for `type`, length must be greater than or equal to `1`")  # noqa: E501

        self._type = type

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.openapi_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, InlineResponse2003):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other