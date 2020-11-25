defmodule EstacionamentoIFRO.Repo.Migrations.CreateVeiculoModelos do
  use Ecto.Migration

  def change do
    create table(:veiculo_modelos) do
      add :modelo, :string
      add :marca_id, references(:veiculo_marcas, on_delete: :nothing)

      timestamps()
    end

    create index(:veiculo_modelos, [:marca_id])
  end
end
