defmodule EctoAssocConstraint.Repo do
  use Ecto.Repo,
    otp_app: :ecto_assoc_constraint,
    adapter: Ecto.Adapters.Postgres
end
