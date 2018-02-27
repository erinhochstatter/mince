defmodule Mince.Task do
  use Ecto.Schema
  import Ecto.Changeset
  alias Mince.Task


  schema "tasks" do
    field :completed, :boolean, default: false

    timestamps()
  end

  @doc false
  def changeset(%Task{} = task, attrs) do
    task
    |> cast(attrs, [:completed])
    |> validate_required([:completed])
  end
end
