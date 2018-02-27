defmodule Mince.Treat do
  use Ecto.Schema
  import Ecto.Changeset
  alias Mince.Treat


  schema "treats" do
    field :description, :string
    field :name, :string
    field :redeemed, :boolean, default: false

    timestamps()
  end

  @doc false
  def changeset(%Treat{} = treat, attrs) do
    treat
    |> cast(attrs, [:name, :description, :redeemed])
    |> validate_required([:name, :description, :redeemed])
  end
end
