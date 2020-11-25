defmodule EstacionamentoIFRO.VeiculoModelo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "veiculo_modelos" do
    field :modelo, :string
    field :marca_id, :id

    timestamps()
  end

  @doc false
  def changeset(veiculo_modelo, attrs) do
    veiculo_modelo
    |> cast(attrs, [:modelo])
    |> validate_required([:modelo])
  end
end
