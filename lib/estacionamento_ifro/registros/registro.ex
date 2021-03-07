defmodule EstacionamentoIFRO.Registros.Registro do
  use Ecto.Schema
  import Ecto.Changeset

  schema "registros" do
    field :entrada, :naive_datetime
    field :saida, :naive_datetime
    belongs_to :veiculo_condutor, EstacionamentoIFRO.VeiculosCondutores.VeiculoCondutor

    timestamps()
  end

  @doc false
  def changeset(registro, attrs) do
    registro
    |> cast(attrs, [:entrada, :saida])
    |> validate_required([:entrada])
  end
end
