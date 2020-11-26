defmodule EstacionamentoIFROWeb.CondutorController do
  use EstacionamentoIFROWeb, :controller

  def create(conn, params) do
    json(conn, params)
  end
end
