defmodule ReviewsFramework.Repo do
  use Ecto.Repo,
    otp_app: :reviews_framework,
    adapter: Ecto.Adapters.Postgres
end
