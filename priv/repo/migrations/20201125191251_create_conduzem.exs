defmodule EstacionamentoIFRO.Repo.Migrations.CreateConduzem do
  use Ecto.Migration

  def change do
    create table(:conduzem) do
      add :conduz_desde, :naive_datetime
      add :conduz_ate, :naive_datetime
      add :condutor_id, references(:condutores, on_delete: :nothing)
      add :veiculo_id, references(:veiculos, on_delete: :nothing)

      timestamps()
    end

    create index(:conduzem, [:condutor_id])
    create index(:conduzem, [:veiculo_id])
  end
end
