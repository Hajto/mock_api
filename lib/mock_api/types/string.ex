defmodule MockApi.Type.String do
  @behaviour MockApi.Type

  def gen do
    length = Enum.random(10..500)
    :crypto.strong_rand_bytes(length)
    |> Base.url_encode64
    |> binary_part(0, length)
  end
end
