defmodule EstacionamentoIFRO.Repo.Migrations.CreateVeiculoTipos do
  use Ecto.Migration

  def change do
    create table(:veiculo_tipos) do
      add :tipo, :string

      timestamps()
    end

    create unique_index(:veiculo_tipos, [:tipo])
  end
end
