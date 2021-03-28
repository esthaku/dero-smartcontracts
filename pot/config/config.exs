# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :pot,
  ecto_repos: [Pot.Repo]

# Configures the endpoint
config :pot, PotWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ll+yS6GF0o9CPv1yd0Kt9baJEcVhJA243HNQDmVXLRIV0cWvxo5Dc4HMYB8n7do0",
  render_errors: [view: PotWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Pot.PubSub,
  live_view: [signing_salt: "J2Wl4ZB8"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
