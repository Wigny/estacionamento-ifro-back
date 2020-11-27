defmodule EstacionamentoIFRO.Veiculos.Modelo do
  use Ecto.Schema
  import Ecto.Changeset

  alias EstacionamentoIFRO.Veiculos.Marca

  @derive {Jason.Encoder, except: [:__meta__, :__struct__]}
  schema "veiculo_modelos" do
    field :modelo, :string
    belongs_to :marca, Marca

    timestamps()
  end

  @doc false
  def changeset(modelo, attrs) do
    modelo
    |> cast(attrs, [:modelo])
    |> validate_required([:modelo])
    |> unique_constraint(:modelo)
  end
end
