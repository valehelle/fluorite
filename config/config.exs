# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :fluorite,
  ecto_repos: [Fluorite.Repo]

# Configures the endpoint
config :fluorite, FluoriteWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hMl3/bsCeCxnbsnEsjseU0EUkRl2kDpx+c4rfsUW6u8z2Bui9D4KqecsRUCGlcnY",
  render_errors: [view: FluoriteWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Fluorite.PubSub,
  live_view: [signing_salt: "94t+5hHk"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
