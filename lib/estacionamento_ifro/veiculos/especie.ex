defmodule EstacionamentoIFRO.Veiculos.Especie do
  use Ecto.Schema
  import Ecto.Changeset

  @derive {Jason.Encoder, only: [:id, :especie]}
  schema "veiculo_especies" do
    field :especie, :string

    timestamps()
  end

  @doc false
  def changeset(especie, attrs) do
    especie
    |> cast(attrs, [:especie])
    |> validate_required([:especie])
    |> unique_constraint(:especie)
  end
end
