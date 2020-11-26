defmodule EstacionamentoIFRO.Repo.Migrations.CreateVeiculoTipos do
  use Ecto.Migration

  def change do
    create table(:veiculo_tipos) do
      add :tipo, :string

      timestamps()
    end

    create unique_index(:veiculo_tipos, [:tipo])

    execute(fn ->
      repo().insert_all("veiculo_tipos", [
        %{tipo: "Automóvel", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{tipo: "Caminhão", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{
          tipo: "Caminhão Trator",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{tipo: "Caminhonete", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{tipo: "Camioneta", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{tipo: "Carga", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{
          tipo: "Chassi Plataforma",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{tipo: "Ciclomotor", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{tipo: "Especial", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{tipo: "Micro-Ônibus", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{tipo: "Motocicleta", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{tipo: "Motoneta", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{tipo: "Motor-Casa", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{tipo: "Ônibus", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{tipo: "Quadriciclo", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{tipo: "Reboque", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{tipo: "Semirreboque", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{tipo: "Tr Esteiras", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{tipo: "Tr Misto", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{tipo: "Tr Rodas", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{tipo: "Triciclo", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()},
        %{tipo: "Utilitário", inserted_at: DateTime.utc_now(), updated_at: DateTime.utc_now()}
      ])
    end)
  end
end
