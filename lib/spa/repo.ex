defmodule Spa.Repo do
  use Ecto.Repo,
    otp_app: :spa,
    adapter: Ecto.Adapters.Postgres
end
