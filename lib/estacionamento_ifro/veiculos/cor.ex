defmodule EstacionamentoIFRO.Veiculos.Cor do
  use Ecto.Schema
  import Ecto.Changeset

  @derive {Jason.Encoder, except: [:__meta__, :__struct__]}
  schema "veiculo_cores" do
    field :cor, :string

    timestamps()
  end

  @doc false
  def changeset(cor, attrs) do
    cor
    |> cast(attrs, [:cor])
    |> validate_required([:cor])
    |> unique_constraint(:cor)
  end
end
