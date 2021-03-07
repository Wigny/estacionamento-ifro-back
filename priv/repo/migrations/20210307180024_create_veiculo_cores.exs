defmodule EstacionamentoIFRO.Repo.Migrations.CreateVeiculoCores do
  use Ecto.Migration

  def change do
    create table(:veiculo_cores) do
      add :cor, :string

      timestamps()
    end

    create unique_index(:veiculo_cores, [:cor])
  end
end
