defmodule EctoAssocConstraintTest do
  use ExUnit.Case, async: true

  alias EctoAssocConstraint.{Repo, Location, Address}

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)
  end

  test "greets the world" do
    {:ok, location} =
      %Location{}
      |> Location.changeset(%{original: "Munich"})
      |> Repo.insert()

    assert {:ok, _} =
             location
             |> Location.changeset(%{original: "Zurich"})
             |> Repo.update()
  end
end
