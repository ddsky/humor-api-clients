# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule HumorAPI.Model.RandomJoke200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :joke
  ]

  @type t :: %__MODULE__{
    :id => integer(),
    :joke => String.t
  }

  def decode(value) do
    value
  end
end

