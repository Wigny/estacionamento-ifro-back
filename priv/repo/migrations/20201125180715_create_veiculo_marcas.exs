defmodule EstacionamentoIFRO.Repo.Migrations.CreateVeiculoMarcas do
  use Ecto.Migration

  def change do
    create table(:veiculo_marcas) do
      add :marca, :string

      timestamps()
    end

  end
end
