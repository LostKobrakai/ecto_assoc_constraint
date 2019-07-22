defmodule EctoAssocConstraint.Repo.Migrations.AddTables do
  use Ecto.Migration

  def change do
    create table(:locations) do
      timestamps()
    end

    create table(:addresses) do
      add :city, :string, null: false
      add :location_id, references(:locations), null: false
      timestamps()
    end

    create unique_index(:addresses, [:location_id])
  end
end
