defmodule EstacionamentoIFRO.VeiculoCor do
  use Ecto.Schema
  import Ecto.Changeset

  schema "veiculo_cores" do
    field :cor, :string

    timestamps()
  end

  @doc false
  def changeset(veiculo_cor, attrs) do
    veiculo_cor
    |> cast(attrs, [:cor])
    |> validate_required([:cor])
  end
end
