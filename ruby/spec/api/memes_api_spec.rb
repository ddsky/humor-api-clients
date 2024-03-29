=begin
#Humor API

#Awesome Humor API.

The version of the OpenAPI document: 1.0
Contact: mail@humorapi.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::MemesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MemesApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::MemesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MemesApi' do
    it 'should create an instance of MemesApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::MemesApi)
    end
  end

  # unit tests for downvote_meme
  # Downvote a Meme
  # Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
  # @param id The object&#39;s id.
  # @param [Hash] opts the optional parameters
  # @return [SubmitJoke200Response]
  describe 'downvote_meme test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for random_meme
  # Random Meme
  # Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :keywords A comma separated list of keywords.
  # @option opts [Boolean] :keywords_in_image Whether the keywords should be found in the meme&#39;s image.
  # @option opts [String] :media_type The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;.
  # @option opts [Integer] :number The number of results to retrieve between 1 and 10.
  # @option opts [Integer] :min_rating The minimum rating between 0 and 10 the result should have.
  # @return [RandomMeme200Response]
  describe 'random_meme test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_memes
  # Search Memes
  # Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :keywords A comma separated list of keywords.
  # @option opts [Boolean] :keywords_in_image Whether the keywords should be found in the meme&#39;s image.
  # @option opts [String] :media_type The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;.
  # @option opts [Integer] :number The number of results to retrieve between 1 and 10.
  # @option opts [Integer] :min_rating The minimum rating between 0 and 10 the result should have.
  # @option opts [Float] :offset The number of results to skip.
  # @return [SearchMemes200Response]
  describe 'search_memes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for upvote_meme
  # Upvote a Meme
  # Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
  # @param id The object&#39;s id.
  # @param [Hash] opts the optional parameters
  # @return [SubmitJoke200Response]
  describe 'upvote_meme test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
