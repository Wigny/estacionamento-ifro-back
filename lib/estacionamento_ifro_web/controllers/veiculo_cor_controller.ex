defmodule EstacionamentoIFROWeb.VeiculoCorController do
  use EstacionamentoIFROWeb, :controller

  alias EstacionamentoIFRO.Veiculo.Cores, as: VeiculosCores

  def index(conn, _params) do
    cores = VeiculosCores.list_veiculo_cores()

    json(conn, cores)
  end
end
