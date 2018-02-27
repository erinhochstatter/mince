defmodule Mince.Repo.Migrations.CreateTreats do
  use Ecto.Migration

  def change do
    create table(:treats) do
      add :name, :string
      add :description, :string
      add :redeemed, :boolean, default: false, null: false

      timestamps()
    end

  end
end
