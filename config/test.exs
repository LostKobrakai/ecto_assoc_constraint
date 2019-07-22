use Mix.Config

config :ecto_assoc_constraint, EctoAssocConstraint.Repo,
  database: "ecto_assoc_constraint_repo_test",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
