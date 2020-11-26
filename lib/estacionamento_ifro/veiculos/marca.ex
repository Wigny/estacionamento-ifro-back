defmodule EstacionamentoIFRO.Veiculos.Marca do
  use Ecto.Schema
  import Ecto.Changeset

  schema "veiculo_marcas" do
    field :marca, :string

    timestamps()
  end

  @doc false
  def changeset(marca, attrs) do
    marca
    |> cast(attrs, [:marca])
    |> validate_required([:marca])
    |> unique_constraint(:marca)
  end
end
