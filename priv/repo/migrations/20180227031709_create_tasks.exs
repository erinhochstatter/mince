defmodule Mince.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :completed, :boolean, default: false, null: false

      timestamps()
    end

  end
end
