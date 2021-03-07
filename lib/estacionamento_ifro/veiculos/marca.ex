defmodule EstacionamentoIFRO.Veiculos.Marca do
  use Ecto.Schema
  import Ecto.Changeset

  alias EstacionamentoIFRO.Veiculos.Modelo

  @derive {Jason.Encoder, except: [:__meta__, :__struct__]}
  schema "veiculo_marcas" do
    field :marca, :string
    has_many :modelos, Modelo

    timestamps()
  end

  @doc false
  def changeset(marca, attrs) do
    marca
    |> cast(attrs, [:marca])
    |> validate_required([:marca])
    |> unique_constraint(:marca)
  end
end
