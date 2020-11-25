defmodule EstacionamentoIFRO.Veiculo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "veiculos" do
    field :ano, :string
    field :placa, :string
    field :tipo_id, :id
    field :especie_id, :id
    field :modelo_id, :id
    field :cor_id, :id

    timestamps()
  end

  @doc false
  def changeset(veiculo, attrs) do
    veiculo
    |> cast(attrs, [:ano, :placa])
    |> validate_required([:ano, :placa])
    |> unique_constraint(:placa)
  end
end
