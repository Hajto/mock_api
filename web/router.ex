defmodule MockApi.Router do
  use MockApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MockApi do
    pipe_through :api
  end
end
