# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.humorapi.client.Model.InlineResponse2009 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"joke",
    :"tags"
  ]

  @type t :: %__MODULE__{
    :"joke" => String.t,
    :"tags" => [String.t]
  }
end

defimpl Poison.Decoder, for: com.humorapi.client.Model.InlineResponse2009 do
  def decode(value, _options) do
    value
  end
end

