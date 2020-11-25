defmodule EstacionamentoIFRO.Repo.Migrations.CreateRegistros do
  use Ecto.Migration

  def change do
    create table(:registros) do
      add :entrada, :naive_datetime
      add :saida, :naive_datetime
      add :condutor_veiculo_id, references(:condutor_veiculo, on_delete: :nothing)

      timestamps()
    end

    create index(:registros, [:condutor_veiculo_id])
  end
end
