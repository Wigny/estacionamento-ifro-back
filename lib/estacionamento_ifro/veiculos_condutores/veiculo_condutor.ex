defmodule EstacionamentoIFRO.VeiculosCondutores.VeiculoCondutor do
  use Ecto.Schema
  import Ecto.Changeset

  schema "veiculos_condutores" do
    field :conduz_desde, :naive_datetime
    field :conduz_ate, :naive_datetime
    field :condutor_id, :id
    field :veiculo_id, :id

    timestamps()
  end

  @doc false
  def changeset(veiculo_condutor, attrs) do
    veiculo_condutor
    |> cast(attrs, [:conduz_desde, :conduz_ate])
    |> validate_required([:conduz_desde, :conduz_ate])
  end
end
