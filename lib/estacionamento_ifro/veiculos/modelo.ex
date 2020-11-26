defmodule EstacionamentoIFRO.Veiculos.Modelo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "veiculo_modelos" do
    field :modelo, :string
    field :marca_id, :id

    timestamps()
  end

  @doc false
  def changeset(modelo, attrs) do
    modelo
    |> cast(attrs, [:modelo])
    |> validate_required([:modelo])
    |> unique_constraint(:modelo)
  end
end
