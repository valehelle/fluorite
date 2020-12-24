defmodule Fluorite.Repo do
  use Ecto.Repo,
    otp_app: :fluorite,
    adapter: Ecto.Adapters.Postgres
end
