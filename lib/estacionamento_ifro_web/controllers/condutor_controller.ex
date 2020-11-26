defmodule EstacionamentoIFROWeb.CondutorController do
  use EstacionamentoIFROWeb, :controller

  alias EstacionamentoIFRO.Condutores
  import EstacionamentoIFROWeb.ErrorHelpers

  def create(conn, params) do
    params
    |> Condutores.create_condutor()
    |> case do
      {:ok, condutor} -> json(conn, condutor)
      {:error, changeset} -> errors(conn, changeset)
    end
  end
end
