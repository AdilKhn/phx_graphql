defmodule PhxGraphql.Repo do
  use Ecto.Repo,
    otp_app: :phx_graphql,
    adapter: Ecto.Adapters.Postgres
end
