# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.humorapi.client.Model.InlineResponse2003 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"url",
    :"type"
  ]

  @type t :: %__MODULE__{
    :"id" => integer(),
    :"url" => String.t,
    :"type" => String.t
  }
end

defimpl Poison.Decoder, for: com.humorapi.client.Model.InlineResponse2003 do
  def decode(value, _options) do
    value
  end
end

