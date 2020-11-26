defmodule EstacionamentoIFRO.Repo.Migrations.CreateVeiculoCores do
  use Ecto.Migration

  def change do
    create table(:veiculo_cores) do
      add :cor, :string

      timestamps()
    end

    create unique_index(:veiculo_cores, [:cor])

    execute(fn ->
      repo().insert_all("veiculo_cores", [
        %{cor: "Amarelo", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{cor: "Azul", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{cor: "Bege", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{cor: "Branca", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{cor: "Cinza", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{cor: "Dourada", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{cor: "Grená", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{cor: "Laranja", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{cor: "Marrom", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{cor: "Prata", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{cor: "Preta", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{cor: "Rosa", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{cor: "Roxa", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{cor: "Verde", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{cor: "Vermelha", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{cor: "Fantasia", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()}
      ])
    end)
  end
end
