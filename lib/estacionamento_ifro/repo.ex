defmodule EstacionamentoIFRO.Repo do
  use Ecto.Repo,
    otp_app: :estacionamento_ifro,
    adapter: Ecto.Adapters.Postgres
end
