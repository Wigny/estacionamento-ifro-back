defmodule EstacionamentoIFRO.CorVeiculo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "veiculo_cores" do
    field :cor, :string

    timestamps()
  end

  @doc false
  def changeset(cor_veiculo, attrs) do
    cor_veiculo
    |> cast(attrs, [:cor])
    |> validate_required([:cor])
  end
end
