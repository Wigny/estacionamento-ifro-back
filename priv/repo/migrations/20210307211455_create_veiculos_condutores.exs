defmodule EstacionamentoIFRO.Repo.Migrations.CreateVeiculosCondutores do
  use Ecto.Migration

  def change do
    create table(:veiculos_condutores) do
      add :conduz_desde, :naive_datetime
      add :conduz_ate, :naive_datetime
      add :condutor_id, references(:condutores, on_delete: :nothing)
      add :veiculo_id, references(:veiculos, on_delete: :nothing)

      timestamps()
    end

    create index(:veiculos_condutores, [:condutor_id])
    create index(:veiculos_condutores, [:veiculo_id])
  end
end
