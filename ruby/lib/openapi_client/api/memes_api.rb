=begin
#Humor API

#Awesome Humor API.

The version of the OpenAPI document: 1.0
Contact: mail@humorapi.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'uri'

module OpenapiClient
  class MemesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Downvote a Meme
    # Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
    # @param id [Integer] The object&#39;s id.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2008]
    def downvote_meme(id, opts = {})
      data, _status_code, _headers = downvote_meme_with_http_info(id, opts)
      data
    end

    # Downvote a Meme
    # Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
    # @param id [Integer] The object&#39;s id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2008, Integer, Hash)>] InlineResponse2008 data, response status code and response headers
    def downvote_meme_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemesApi.downvote_meme ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MemesApi.downvote_meme"
      end
      if @api_client.config.client_side_validation && id < 1
        fail ArgumentError, 'invalid value for "id" when calling MemesApi.downvote_meme, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/memes/{id}/downvote'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2008' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKey']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemesApi#downvote_meme\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Random Meme
    # Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :keywords A comma separated list of keywords.
    # @option opts [Boolean] :keywords_in_image Whether the keywords should be found in the meme&#39;s image.
    # @option opts [String] :media_type The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;.
    # @option opts [Integer] :number The number of results to retrieve between 1 and 10.
    # @option opts [Integer] :min_rating The minimum rating between 0 and 10 the result should have.
    # @return [InlineResponse2003]
    def random_meme(opts = {})
      data, _status_code, _headers = random_meme_with_http_info(opts)
      data
    end

    # Random Meme
    # Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :keywords A comma separated list of keywords.
    # @option opts [Boolean] :keywords_in_image Whether the keywords should be found in the meme&#39;s image.
    # @option opts [String] :media_type The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;.
    # @option opts [Integer] :number The number of results to retrieve between 1 and 10.
    # @option opts [Integer] :min_rating The minimum rating between 0 and 10 the result should have.
    # @return [Array<(InlineResponse2003, Integer, Hash)>] InlineResponse2003 data, response status code and response headers
    def random_meme_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemesApi.random_meme ...'
      end
      allowable_values = ["true", "false"]
      if @api_client.config.client_side_validation && opts[:'keywords_in_image'] && !allowable_values.include?(opts[:'keywords_in_image'])
        fail ArgumentError, "invalid value for \"keywords_in_image\", must be one of #{allowable_values}"
      end
      allowable_values = ["image", "video", "jpg", "gif", "png", "mp4"]
      if @api_client.config.client_side_validation && opts[:'media_type'] && !allowable_values.include?(opts[:'media_type'])
        fail ArgumentError, "invalid value for \"media_type\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] > 10
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling MemesApi.random_meme, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] < 1
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling MemesApi.random_meme, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'min_rating'].nil? && opts[:'min_rating'].to_s.length < 0
        fail ArgumentError, 'invalid value for "opts[:"min_rating"]" when calling MemesApi.random_meme, the character length must be great than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'min_rating'].nil? && opts[:'min_rating'] > 10
        fail ArgumentError, 'invalid value for "opts[:"min_rating"]" when calling MemesApi.random_meme, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'min_rating'].nil? && opts[:'min_rating'] < 0
        fail ArgumentError, 'invalid value for "opts[:"min_rating"]" when calling MemesApi.random_meme, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/memes/random'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'keywords'] = opts[:'keywords'] if !opts[:'keywords'].nil?
      query_params[:'keywords-in-image'] = opts[:'keywords_in_image'] if !opts[:'keywords_in_image'].nil?
      query_params[:'media-type'] = opts[:'media_type'] if !opts[:'media_type'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?
      query_params[:'min-rating'] = opts[:'min_rating'] if !opts[:'min_rating'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2003' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKey']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemesApi#random_meme\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search Memes
    # Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :keywords A comma separated list of keywords.
    # @option opts [Boolean] :keywords_in_image Whether the keywords should be found in the meme&#39;s image.
    # @option opts [String] :media_type The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;.
    # @option opts [Integer] :number The number of results to retrieve between 1 and 10.
    # @option opts [Integer] :min_rating The minimum rating between 0 and 10 the result should have.
    # @option opts [Float] :offset The number of results to skip.
    # @return [InlineResponse2002]
    def search_memes(opts = {})
      data, _status_code, _headers = search_memes_with_http_info(opts)
      data
    end

    # Search Memes
    # Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :keywords A comma separated list of keywords.
    # @option opts [Boolean] :keywords_in_image Whether the keywords should be found in the meme&#39;s image.
    # @option opts [String] :media_type The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;.
    # @option opts [Integer] :number The number of results to retrieve between 1 and 10.
    # @option opts [Integer] :min_rating The minimum rating between 0 and 10 the result should have.
    # @option opts [Float] :offset The number of results to skip.
    # @return [Array<(InlineResponse2002, Integer, Hash)>] InlineResponse2002 data, response status code and response headers
    def search_memes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemesApi.search_memes ...'
      end
      allowable_values = ["true", "false"]
      if @api_client.config.client_side_validation && opts[:'keywords_in_image'] && !allowable_values.include?(opts[:'keywords_in_image'])
        fail ArgumentError, "invalid value for \"keywords_in_image\", must be one of #{allowable_values}"
      end
      allowable_values = ["image", "video", "jpg", "gif", "png", "mp4"]
      if @api_client.config.client_side_validation && opts[:'media_type'] && !allowable_values.include?(opts[:'media_type'])
        fail ArgumentError, "invalid value for \"media_type\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] > 10
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling MemesApi.search_memes, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] < 1
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling MemesApi.search_memes, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'min_rating'].nil? && opts[:'min_rating'].to_s.length < 0
        fail ArgumentError, 'invalid value for "opts[:"min_rating"]" when calling MemesApi.search_memes, the character length must be great than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'min_rating'].nil? && opts[:'min_rating'] > 10
        fail ArgumentError, 'invalid value for "opts[:"min_rating"]" when calling MemesApi.search_memes, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'min_rating'].nil? && opts[:'min_rating'] < 0
        fail ArgumentError, 'invalid value for "opts[:"min_rating"]" when calling MemesApi.search_memes, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling MemesApi.search_memes, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling MemesApi.search_memes, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/memes/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'keywords'] = opts[:'keywords'] if !opts[:'keywords'].nil?
      query_params[:'keywords-in-image'] = opts[:'keywords_in_image'] if !opts[:'keywords_in_image'].nil?
      query_params[:'media-type'] = opts[:'media_type'] if !opts[:'media_type'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?
      query_params[:'min-rating'] = opts[:'min_rating'] if !opts[:'min_rating'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2002' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKey']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemesApi#search_memes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upvote a Meme
    # Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
    # @param id [Integer] The object&#39;s id.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2008]
    def upvote_meme(id, opts = {})
      data, _status_code, _headers = upvote_meme_with_http_info(id, opts)
      data
    end

    # Upvote a Meme
    # Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
    # @param id [Integer] The object&#39;s id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2008, Integer, Hash)>] InlineResponse2008 data, response status code and response headers
    def upvote_meme_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemesApi.upvote_meme ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MemesApi.upvote_meme"
      end
      if @api_client.config.client_side_validation && id < 1
        fail ArgumentError, 'invalid value for "id" when calling MemesApi.upvote_meme, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/memes/{id}/upvote'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2008' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKey']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemesApi#upvote_meme\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
