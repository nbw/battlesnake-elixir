# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :battlesnake_elixir,
  ecto_repos: [BattlesnakeElixir.Repo]

# Configures the endpoint
config :battlesnake_elixir, BattlesnakeElixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kHzEyQUK5PyJN6d7uS1WJqdMN8Y9X0bQtJU62qmLoEmfy1n6JnSRGWS3WlFyvOtT",
  render_errors: [view: BattlesnakeElixirWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BattlesnakeElixir.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
