defmodule EstacionamentoIFRO.Repo.Migrations.CreateVeiculoEspecies do
  use Ecto.Migration

  def change do
    create table(:veiculo_especies) do
      add :especie, :string

      timestamps()
    end

    execute(fn ->
      repo().insert_all("veiculo_especies", [
        %{
          especie: "Basculante/Cab Dupla",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Cab Suplementar",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Carga",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Carroc Aber/Intercambiável/Cab Suplementar",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Carroc Aber/Mec Operac/Cab Suplementar",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Carroc Fech/Cab Suple- mentar",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Carroc Fech/Cab Suplementar",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Carroc Fech/Cab Tripla",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Container/Carroc Aber/Cab Dupla",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Contêiner/Carroc Aber",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Especial",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Mec Operac",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Mec Operac/Cab Suplementar",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Mec operac/Cab Tripla",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Misto",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Passageiro",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Prancha/Cab Suplementar",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Roll-on Roll-off/Cab Suplementar",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Silo/Basculante",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Silo/Basculante/Cab Dupla",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Silo/Cab Suplementar",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Som/Cab Dupla",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Tanque/Cab Suplementar",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Tração",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Transp De Valores/Mec Operac",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Transp Presos",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Transp Recr",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Transp Toras",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Transporte de militar",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Transporte de Presos",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Transporte de Valores",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        },
        %{
          especie: "Trio Elétrico",
          inserted_at: DateTime.utc_now(),
          updated_at: DateTime.utc_now()
        }
      ])
    end)
  end
end
