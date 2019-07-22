use Mix.Config

config :ecto_assoc_constraint,
  ecto_repos: [EctoAssocConstraint.Repo]

import_config "#{Mix.env()}.exs"
