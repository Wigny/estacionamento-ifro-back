defmodule EstacionamentoIFRO.VeiculosCondutores.VeiculoCondutor do
  use Ecto.Schema
  import Ecto.Changeset

  alias EstacionamentoIFRO.{
    Condutores,
    Veiculos
  }

  schema "veiculos_condutores" do
    field :conduz_desde, :naive_datetime
    field :conduz_ate, :naive_datetime
    belongs_to :condutor, Condutores.Condutor
    belongs_to :veiculo, Veiculos.Veiculo

    timestamps()
  end

  @doc false
  def changeset(veiculo_condutor, attrs) do
    veiculo_condutor
    |> cast(attrs, [:conduz_desde, :conduz_ate])
    |> validate_required([:conduz_desde, :conduz_ate])
  end
end
