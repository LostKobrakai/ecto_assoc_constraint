defmodule EctoAssocConstraint.Location do
  use Ecto.Schema
  import Ecto.Changeset

  schema "locations" do
    has_one :address, EctoAssocConstraint.Address, on_replace: :delete
    field :original, :string, virtual: true
    timestamps()
  end

  def changeset(struct_or_changeset, params) do
    struct_or_changeset
    |> cast(params, [:original])
    |> put_address()
  end

  defp put_address(%{data: struct, changes: %{original: original}} = changeset) do
    address = Ecto.build_assoc(struct, :address)

    case parse(address, original) do
      {:ok, address} -> changeset |> put_assoc(:address, address)
      _ -> add_error(changeset, :address, "cannot be geocoded")
    end
  end

  defp put_address(changeset), do: changeset

  defp parse(address, str) do
    {:ok, %{address | city: str}}
  end
end
