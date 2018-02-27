defmodule Mince.Repo.Migrations.CreateCheckpoints do
  use Ecto.Migration

  def change do
    create table(:checkpoints) do
      add :name, :string
      add :completed, :boolean, default: false, null: false

      timestamps()
    end

  end
end
