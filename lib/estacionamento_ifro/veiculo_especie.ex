defmodule EstacionamentoIFRO.VeiculoEspecie do
  use Ecto.Schema
  import Ecto.Changeset

  schema "veiculo_especies" do
    field :especie, :string

    timestamps()
  end

  @doc false
  def changeset(veiculo_especie, attrs) do
    veiculo_especie
    |> cast(attrs, [:especie])
    |> validate_required([:especie])
  end
end
