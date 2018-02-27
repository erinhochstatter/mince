defmodule Mince.Timelet do
  use Ecto.Schema
  import Ecto.Changeset
  alias Mince.Timelet


  schema "timelets" do
    field :duration, :integer

    timestamps()
  end

  @doc false
  def changeset(%Timelet{} = timelet, attrs) do
    timelet
    |> cast(attrs, [:duration])
    |> validate_required([:duration])
  end
end
