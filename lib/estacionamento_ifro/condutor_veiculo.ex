defmodule EstacionamentoIFRO.CondutorVeiculo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "condutor_veiculo" do
    field :conduz_desde, :naive_datetime
    field :conduz_ate, :naive_datetime
    field :condutor_id, :id
    field :veiculo_id, :id

    timestamps()
  end

  @doc false
  def changeset(condutor_veiculo, attrs) do
    condutor_veiculo
    |> cast(attrs, [:conduz_desde, :conduz_ate])
    |> validate_required([:conduz_desde, :conduz_ate])
  end
end
