defmodule EstacionamentoIFRO.Conduz do
  use Ecto.Schema
  import Ecto.Changeset

  schema "conduzem" do
    field :conduz_ate, :naive_datetime
    field :conduz_desde, :naive_datetime
    field :condutor_id, :id
    field :veiculo_id, :id

    timestamps()
  end

  @doc false
  def changeset(conduz, attrs) do
    conduz
    |> cast(attrs, [:conduz_desde, :conduz_ate])
    |> validate_required([:conduz_desde, :conduz_ate])
  end
end
