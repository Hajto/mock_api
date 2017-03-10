# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mock_api,
  ecto_repos: [MockApi.Repo]

# Configures the endpoint
config :mock_api, MockApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "O/NjeRZ8kDT3+2TB0FRCDvGcfgtqiTPx76X1p05/ZzIRRzvpolrs4KHWPyb/QnbJ",
  render_errors: [view: MockApi.ErrorView, accepts: ~w(json)],
  pubsub: [name: MockApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
