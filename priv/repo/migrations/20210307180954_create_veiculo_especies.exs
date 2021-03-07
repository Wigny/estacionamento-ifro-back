defmodule EstacionamentoIFRO.Repo.Migrations.CreateVeiculoEspecies do
  use Ecto.Migration

  def change do
    create table(:veiculo_especies) do
      add :especie, :string

      timestamps()
    end

    create unique_index(:veiculo_especies, [:especie])
  end
end
