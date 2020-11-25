defmodule EstacionamentoIFRO.Repo.Migrations.CreateCondutorVeiculo do
  use Ecto.Migration

  def change do
    create table(:condutor_veiculo) do
      add :conduz_desde, :naive_datetime
      add :conduz_ate, :naive_datetime
      add :condutor_id, references(:condutores, on_delete: :nothing)
      add :veiculo_id, references(:veiculos, on_delete: :nothing)

      timestamps()
    end

    create index(:condutor_veiculo, [:condutor_id])
    create index(:condutor_veiculo, [:veiculo_id])
  end
end
