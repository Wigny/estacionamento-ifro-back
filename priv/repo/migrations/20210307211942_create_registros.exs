defmodule EstacionamentoIFRO.Repo.Migrations.CreateRegistros do
  use Ecto.Migration

  def change do
    create table(:registros) do
      add :entrada, :naive_datetime
      add :saida, :naive_datetime
      add :veiculo_condutor_id, references(:veiculos_condutores, on_delete: :nothing)

      timestamps()
    end

    create index(:registros, [:veiculo_condutor_id])
  end
end
