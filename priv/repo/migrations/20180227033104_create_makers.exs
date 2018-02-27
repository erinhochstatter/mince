defmodule Mince.Repo.Migrations.CreateMakers do
  use Ecto.Migration

  def change do
    create table(:makers) do
      add :first_name, :string
      add :last_name, :string
      add :nickname, :string

      timestamps()
    end

  end
end
