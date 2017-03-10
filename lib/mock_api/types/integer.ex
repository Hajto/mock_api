defmodule MockApi.Type.Integer do
  @behaviour MockApi.Type

  def gen do
    gen(0,100)
  end

  def gen(from, to) do
    Enum.random(from..to)
  end
end
