defmodule EstacionamentoIFRO.VeiculoTipo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "veiculo_tipos" do
    field :tipo, :string

    timestamps()
  end

  @doc false
  def changeset(veiculo_tipo, attrs) do
    veiculo_tipo
    |> cast(attrs, [:tipo])
    |> validate_required([:tipo])
  end
end
