defmodule EstacionamentoIFRO.Repo.Migrations.CreateCondutores do
  use Ecto.Migration

  def change do
    create table(:condutores) do
      add :nome, :string
      add :cpf_cnpj, :string
      add :nascimento, :date
      add :telefone, :string

      timestamps()
    end

    create unique_index(:condutores, [:cpf_cnpj])
  end
end
