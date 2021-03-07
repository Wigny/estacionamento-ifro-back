# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     EstacionamentoIFRO.Repo.insert!(%EstacionamentoIFRO.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias EstacionamentoIFRO.Repo
alias EstacionamentoIFRO.Veiculos

now = NaiveDateTime.truncate(NaiveDateTime.utc_now(), :second)

Repo.insert_all(
  Veiculos.Cor,
  [
    %{cor: "Amarelo", inserted_at: now, updated_at: now},
    %{cor: "Azul", inserted_at: now, updated_at: now},
    %{cor: "Bege", inserted_at: now, updated_at: now},
    %{cor: "Branca", inserted_at: now, updated_at: now},
    %{cor: "Cinza", inserted_at: now, updated_at: now},
    %{cor: "Dourada", inserted_at: now, updated_at: now},
    %{cor: "Grená", inserted_at: now, updated_at: now},
    %{cor: "Laranja", inserted_at: now, updated_at: now},
    %{cor: "Marrom", inserted_at: now, updated_at: now},
    %{cor: "Prata", inserted_at: now, updated_at: now},
    %{cor: "Preta", inserted_at: now, updated_at: now},
    %{cor: "Rosa", inserted_at: now, updated_at: now},
    %{cor: "Roxa", inserted_at: now, updated_at: now},
    %{cor: "Verde", inserted_at: now, updated_at: now},
    %{cor: "Vermelha", inserted_at: now, updated_at: now},
    %{cor: "Fantasia", inserted_at: now, updated_at: now}
  ]
)

Repo.insert_all(
  Veiculos.Especie,
  [
    %{especie: "Basculante/Cab Dupla", inserted_at: now, updated_at: now},
    %{especie: "Cab Suplementar", inserted_at: now, updated_at: now},
    %{especie: "Carga", inserted_at: now, updated_at: now},
    %{especie: "Carroc Aber/Intercambiável/Cab Suplementar", inserted_at: now, updated_at: now},
    %{especie: "Carroc Aber/Mec Operac/Cab Suplementar", inserted_at: now, updated_at: now},
    %{especie: "Carroc Fech/Cab Suple- mentar", inserted_at: now, updated_at: now},
    %{especie: "Carroc Fech/Cab Suplementar", inserted_at: now, updated_at: now},
    %{especie: "Carroc Fech/Cab Tripla", inserted_at: now, updated_at: now},
    %{especie: "Container/Carroc Aber/Cab Dupla", inserted_at: now, updated_at: now},
    %{especie: "Contêiner/Carroc Aber", inserted_at: now, updated_at: now},
    %{especie: "Especial", inserted_at: now, updated_at: now},
    %{especie: "Mec Operac", inserted_at: now, updated_at: now},
    %{especie: "Mec Operac/Cab Suplementar", inserted_at: now, updated_at: now},
    %{especie: "Mec operac/Cab Tripla", inserted_at: now, updated_at: now},
    %{especie: "Misto", inserted_at: now, updated_at: now},
    %{especie: "Passageiro", inserted_at: now, updated_at: now},
    %{especie: "Prancha/Cab Suplementar", inserted_at: now, updated_at: now},
    %{especie: "Roll-on Roll-off/Cab Suplementar", inserted_at: now, updated_at: now},
    %{especie: "Silo/Basculante", inserted_at: now, updated_at: now},
    %{especie: "Silo/Basculante/Cab Dupla", inserted_at: now, updated_at: now},
    %{especie: "Silo/Cab Suplementar", inserted_at: now, updated_at: now},
    %{especie: "Som/Cab Dupla", inserted_at: now, updated_at: now},
    %{especie: "Tanque/Cab Suplementar", inserted_at: now, updated_at: now},
    %{especie: "Tração", inserted_at: now, updated_at: now},
    %{especie: "Transp De Valores/Mec Operac", inserted_at: now, updated_at: now},
    %{especie: "Transp Presos", inserted_at: now, updated_at: now},
    %{especie: "Transp Recr", inserted_at: now, updated_at: now},
    %{especie: "Transp Toras", inserted_at: now, updated_at: now},
    %{especie: "Transporte de militar", inserted_at: now, updated_at: now},
    %{especie: "Transporte de Presos", inserted_at: now, updated_at: now},
    %{especie: "Transporte de Valores", inserted_at: now, updated_at: now},
    %{especie: "Trio Elétrico", inserted_at: now, updated_at: now}
  ]
)

Repo.insert!(%Veiculos.Marca{
  marca: "HONDA",
  modelos: [
    %Veiculos.Modelo{modelo: "CG 150 TITAN ES"},
    %Veiculos.Modelo{modelo: "BIZ"},
    %Veiculos.Modelo{modelo: "CB 300R"}
  ]
})

Repo.insert_all(
  Veiculos.Tipo,
  [
    %{tipo: "Automóvel", inserted_at: now, updated_at: now},
    %{tipo: "Caminhão", inserted_at: now, updated_at: now},
    %{tipo: "Caminhão Trator", inserted_at: now, updated_at: now},
    %{tipo: "Caminhonete", inserted_at: now, updated_at: now},
    %{tipo: "Camioneta", inserted_at: now, updated_at: now},
    %{tipo: "Carga", inserted_at: now, updated_at: now},
    %{tipo: "Chassi Plataforma", inserted_at: now, updated_at: now},
    %{tipo: "Ciclomotor", inserted_at: now, updated_at: now},
    %{tipo: "Especial", inserted_at: now, updated_at: now},
    %{tipo: "Micro-Ônibus", inserted_at: now, updated_at: now},
    %{tipo: "Motocicleta", inserted_at: now, updated_at: now},
    %{tipo: "Motoneta", inserted_at: now, updated_at: now},
    %{tipo: "Motor-Casa", inserted_at: now, updated_at: now},
    %{tipo: "Ônibus", inserted_at: now, updated_at: now},
    %{tipo: "Quadriciclo", inserted_at: now, updated_at: now},
    %{tipo: "Reboque", inserted_at: now, updated_at: now},
    %{tipo: "Semirreboque", inserted_at: now, updated_at: now},
    %{tipo: "Tr Esteiras", inserted_at: now, updated_at: now},
    %{tipo: "Tr Misto", inserted_at: now, updated_at: now},
    %{tipo: "Tr Rodas", inserted_at: now, updated_at: now},
    %{tipo: "Triciclo", inserted_at: now, updated_at: now},
    %{tipo: "Utilitário", inserted_at: now, updated_at: now}
  ]
)
