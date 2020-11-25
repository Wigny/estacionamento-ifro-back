defmodule EstacionamentoIFRO.EspecieVeiculo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "veiculo_especies" do
    field :especie, :string

    timestamps()
  end

  @doc false
  def changeset(especie_veiculo, attrs) do
    especie_veiculo
    |> cast(attrs, [:especie])
    |> validate_required([:especie])
  end
end
