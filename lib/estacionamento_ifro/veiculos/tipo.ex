defmodule EstacionamentoIFRO.Veiculos.Tipo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "veiculo_tipos" do
    field :tipo, :string

    timestamps()
  end

  @doc false
  def changeset(tipo, attrs) do
    tipo
    |> cast(attrs, [:tipo])
    |> validate_required([:tipo])
    |> unique_constraint(:tipo)
  end
end
