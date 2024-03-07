# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule HumorAPI.Api.Other do
  @moduledoc """
  API calls for all endpoints tagged `Other`.
  """

  alias HumorAPI.Connection
  import HumorAPI.RequestBuilder

  @doc """
  Generate Nonsense Word
  Generate a nonsense word. See https://humorapi.com/docs/#Generate-Nonsense-Word for more.

  ### Parameters

  - `connection` (HumorAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, HumorAPI.Model.GenerateNonsenseWord200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec generate_nonsense_word(Tesla.Env.client, keyword()) :: {:ok, HumorAPI.Model.GenerateNonsenseWord200Response.t} | {:error, Tesla.Env.t}
  def generate_nonsense_word(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/words/nonsense/random")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, HumorAPI.Model.GenerateNonsenseWord200Response}
    ])
  end

  @doc """
  Insult
  Insult somebody for doing something. See https://humorapi.com/docs/#Insult for more.

  ### Parameters

  - `connection` (HumorAPI.Connection): Connection to server
  - `name` (String.t): The person's name.
  - `reason` (String.t): The reason for the praise/insult.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, HumorAPI.Model.Praise200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec insult(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, HumorAPI.Model.Praise200Response.t} | {:error, Tesla.Env.t}
  def insult(connection, name, reason, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/insult")
      |> add_param(:query, :name, name)
      |> add_param(:query, :reason, reason)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, HumorAPI.Model.Praise200Response}
    ])
  end

  @doc """
  Praise
  Praise somebody for doing something. See https://humorapi.com/docs/#Praise for more.

  ### Parameters

  - `connection` (HumorAPI.Connection): Connection to server
  - `name` (String.t): The person's name.
  - `reason` (String.t): The reason for the praise/insult.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, HumorAPI.Model.Praise200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec praise(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, HumorAPI.Model.Praise200Response.t} | {:error, Tesla.Env.t}
  def praise(connection, name, reason, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/praise")
      |> add_param(:query, :name, name)
      |> add_param(:query, :reason, reason)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, HumorAPI.Model.Praise200Response}
    ])
  end

  @doc """
  Rate Word
  Rate the funniness of a word. See https://humorapi.com/docs/#Rate-Word for more.

  ### Parameters

  - `connection` (HumorAPI.Connection): Connection to server
  - `word` (String.t): The word to be rated.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, HumorAPI.Model.RateWord200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rate_word(Tesla.Env.client, String.t, keyword()) :: {:ok, HumorAPI.Model.RateWord200Response.t} | {:error, Tesla.Env.t}
  def rate_word(connection, word, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/words/rate")
      |> add_param(:query, :word, word)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, HumorAPI.Model.RateWord200Response}
    ])
  end

  @doc """
  Search Gifs
  Search for gifs. See https://humorapi.com/docs/#Search-Gifs for more.

  ### Parameters

  - `connection` (HumorAPI.Connection): Connection to server
  - `query` (String.t): A search query.
  - `opts` (keyword): Optional parameters
    - `:number` (integer()): The number of results to retrieve between 1 and 10.

  ### Returns

  - `{:ok, HumorAPI.Model.SearchGifs200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec search_gifs(Tesla.Env.client, String.t, keyword()) :: {:ok, HumorAPI.Model.SearchGifs200Response.t} | {:error, Tesla.Env.t}
  def search_gifs(connection, query, opts \\ []) do
    optional_params = %{
      :number => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/gif/search")
      |> add_param(:query, :query, query)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, HumorAPI.Model.SearchGifs200Response}
    ])
  end
end
