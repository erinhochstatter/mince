defmodule Mince.Checkpoint do
  use Ecto.Schema
  import Ecto.Changeset
  alias Mince.Checkpoint


  schema "checkpoints" do

    timestamps()
  end

  @doc false
  def changeset(%Checkpoint{} = checkpoint, attrs) do
    checkpoint
    |> cast(attrs, [])
    |> validate_required([])
  end
end
