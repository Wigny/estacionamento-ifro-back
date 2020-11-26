defmodule EstacionamentoIFRO.Registros.Registro do
  use Ecto.Schema
  import Ecto.Changeset

  schema "registros" do
    field :entrada, :naive_datetime
    field :saida, :naive_datetime
    field :veiculo_condutor_id, :id

    timestamps()
  end

  @doc false
  def changeset(registro, attrs) do
    registro
    |> cast(attrs, [:entrada, :saida])
    |> validate_required([:entrada, :saida])
  end
end
