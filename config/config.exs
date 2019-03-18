# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :reviews_framework,
  ecto_repos: [ReviewsFramework.Repo]

# Configures the endpoint
config :reviews_framework, ReviewsFrameworkWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PPl3EuX9zF+aE5hIP8eKR9qfqULtoy17xZ/i62qSfMqJAAu1Abkjal0JHZMtmvie",
  render_errors: [view: ReviewsFrameworkWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ReviewsFramework.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
