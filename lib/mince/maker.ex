defmodule Mince.Maker do
  use Ecto.Schema
  import Ecto.Changeset
  alias Mince.Maker


  schema "makers" do
    field :first_name, :string
    field :last_name, :string
    field :nickname, :string

    timestamps()
  end

  @doc false
  def changeset(%Maker{} = maker, attrs) do
    maker
    |> cast(attrs, [:first_name, :last_name, :nickname])
    |> validate_required([:first_name, :last_name, :nickname])
  end
end
