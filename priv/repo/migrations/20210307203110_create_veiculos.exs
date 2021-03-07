defmodule EstacionamentoIFRO.Repo.Migrations.CreateVeiculos do
  use Ecto.Migration

  def change do
    create table(:veiculos) do
      add :ano, :integer
      add :placa, :string
      add :tipo_id, references(:veiculo_tipos, on_delete: :nothing)
      add :especie_id, references(:veiculo_especies, on_delete: :nothing)
      add :modelo_id, references(:veiculo_modelos, on_delete: :nothing)
      add :cor_id, references(:veiculo_cores, on_delete: :nothing)

      timestamps()
    end

    create unique_index(:veiculos, [:placa])
    create index(:veiculos, [:tipo_id])
    create index(:veiculos, [:especie_id])
    create index(:veiculos, [:modelo_id])
    create index(:veiculos, [:cor_id])
  end
end
