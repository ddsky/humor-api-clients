# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule HumorAPI.Api.Memes do
  @moduledoc """
  API calls for all endpoints tagged `Memes`.
  """

  alias HumorAPI.Connection
  import HumorAPI.RequestBuilder

  @doc """
  Downvote a Meme
  Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.

  ### Parameters

  - `connection` (HumorAPI.Connection): Connection to server
  - `id` (integer()): The object's id.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, HumorAPI.Model.SubmitJoke200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec downvote_meme(Tesla.Env.client, integer(), keyword()) :: {:ok, HumorAPI.Model.SubmitJoke200Response.t} | {:error, Tesla.Env.t}
  def downvote_meme(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/memes/#{id}/downvote")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, HumorAPI.Model.SubmitJoke200Response}
    ])
  end

  @doc """
  Random Meme
  Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.

  ### Parameters

  - `connection` (HumorAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:keywords` (String.t): A comma separated list of keywords.
    - `:"keywords-in-image"` (boolean()): Whether the keywords should be found in the meme's image.
    - `:"media-type"` (String.t): The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
    - `:number` (integer()): The number of results to retrieve between 1 and 10.
    - `:"min-rating"` (integer()): The minimum rating between 0 and 10 the result should have.

  ### Returns

  - `{:ok, HumorAPI.Model.RandomMeme200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec random_meme(Tesla.Env.client, keyword()) :: {:ok, HumorAPI.Model.RandomMeme200Response.t} | {:error, Tesla.Env.t}
  def random_meme(connection, opts \\ []) do
    optional_params = %{
      :keywords => :query,
      :"keywords-in-image" => :query,
      :"media-type" => :query,
      :number => :query,
      :"min-rating" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/memes/random")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, HumorAPI.Model.RandomMeme200Response}
    ])
  end

  @doc """
  Search Memes
  Search for memes. See https://humorapi.com/docs/#Search-Memes for more.

  ### Parameters

  - `connection` (HumorAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:keywords` (String.t): A comma separated list of keywords.
    - `:"keywords-in-image"` (boolean()): Whether the keywords should be found in the meme's image.
    - `:"media-type"` (String.t): The type of the content. Can be either 'image' or 'video' or specific formats such as 'jpg', 'png', 'gif', or 'mp4'.
    - `:number` (integer()): The number of results to retrieve between 1 and 10.
    - `:"min-rating"` (integer()): The minimum rating between 0 and 10 the result should have.
    - `:offset` (float()): The number of results to skip.

  ### Returns

  - `{:ok, HumorAPI.Model.SearchMemes200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec search_memes(Tesla.Env.client, keyword()) :: {:ok, HumorAPI.Model.SearchMemes200Response.t} | {:error, Tesla.Env.t}
  def search_memes(connection, opts \\ []) do
    optional_params = %{
      :keywords => :query,
      :"keywords-in-image" => :query,
      :"media-type" => :query,
      :number => :query,
      :"min-rating" => :query,
      :offset => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/memes/search")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, HumorAPI.Model.SearchMemes200Response}
    ])
  end

  @doc """
  Upvote a Meme
  Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.

  ### Parameters

  - `connection` (HumorAPI.Connection): Connection to server
  - `id` (integer()): The object's id.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, HumorAPI.Model.SubmitJoke200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec upvote_meme(Tesla.Env.client, integer(), keyword()) :: {:ok, HumorAPI.Model.SubmitJoke200Response.t} | {:error, Tesla.Env.t}
  def upvote_meme(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/memes/#{id}/upvote")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, HumorAPI.Model.SubmitJoke200Response}
    ])
  end
end
