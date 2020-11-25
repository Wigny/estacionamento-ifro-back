defmodule EstacionamentoIFRO.VeiculoMarca do
  use Ecto.Schema
  import Ecto.Changeset

  schema "veiculo_marcas" do
    field :marca, :string

    timestamps()
  end

  @doc false
  def changeset(veiculo_marca, attrs) do
    veiculo_marca
    |> cast(attrs, [:marca])
    |> validate_required([:marca])
  end
end
