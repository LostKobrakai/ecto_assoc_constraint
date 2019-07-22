defmodule EctoAssocConstraint.Address do
  use Ecto.Schema
  import Ecto.Changeset

  schema "addresses" do
    field :city, :string
    belongs_to :location, EctoAssocConstraint.Location
    timestamps()
  end

  def changeset(struct_or_changeset, params) do
    cast(struct_or_changeset, params, [:city])
  end
end
