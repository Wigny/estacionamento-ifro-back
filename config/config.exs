# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :estacionamento_ifro,
  namespace: EstacionamentoIFRO,
  ecto_repos: [EstacionamentoIFRO.Repo]

# Configures the endpoint
config :estacionamento_ifro, EstacionamentoIFROWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "o7TlGpGSDBjjG9fKxuFpgMfqENn3K5CcgUTu1T7hwwLO8GVX1m7jOJ3wUiGSoV2l",
  render_errors: [view: EstacionamentoIFROWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: EstacionamentoIFRO.PubSub,
  live_view: [signing_salt: "BVY00Y/I"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
