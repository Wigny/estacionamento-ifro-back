defmodule EstacionamentoIFRO.Veiculos.Veiculo do
  use Ecto.Schema
  import Ecto.Changeset

  alias EstacionamentoIFRO.Veiculos

  schema "veiculos" do
    field :ano, :integer
    field :placa, :string
    belongs_to :tipo, Veiculos.Tipo
    belongs_to :especie, Veiculos.Especie
    belongs_to :modelo, Veiculos.Modelo
    belongs_to :cor, Veiculos.Cor

    timestamps()
  end

  @doc false
  def changeset(veiculo, attrs) do
    %{year: max_year} = DateTime.utc_now()

    veiculo
    |> cast(attrs, [:ano, :placa])
    |> validate_required([:ano, :placa])
    |> validate_format(:placa, ~r/[A-Z]{3}[0-9]{1}[A-Z]{1}[0-9]{2}|[A-Z]{3}\-?[0-9]{4}/)
    |> validate_number(:ano, greater_than: 1950, less_than: max_year)
    |> unique_constraint(:placa)
  end
end
