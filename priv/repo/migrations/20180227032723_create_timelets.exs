defmodule Mince.Repo.Migrations.CreateTimelets do
  use Ecto.Migration

  def change do
    create table(:timelets) do
      add :duration, :integer

      timestamps()
    end

  end
end
