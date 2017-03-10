defmodule MockApi.Type do
  @callback gen() :: String

  @moduledoc """
  This module is used as behaviour reference. Modules that implement this callback will be used to generate all the JSON data types. Including String, Boolean and Number (Integer and floating point separate).
  """
end
