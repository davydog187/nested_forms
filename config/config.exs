# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :nested_forms,
  ecto_repos: [NestedForms.Repo]

# Configures the endpoint
config :nested_forms, NestedFormsWeb.Endpoint,
  url: [host: "localhost"],
  live_view: [
    signing_salt: "SECRET_SALT"
  ],
  secret_key_base: "rkliE0LEIm+PwOBMFtuGZ5uVK9zOoJPWFYIYiZl/lhG68d7MrKYQHfoouTBC/BPp",
  render_errors: [view: NestedFormsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NestedForms.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
