defmodule EstacionamentoIFROWeb.VeiculoController do
  use EstacionamentoIFROWeb, :controller

  alias EstacionamentoIFRO.Veiculos

  import EstacionamentoIFROWeb.ErrorHelpers

  def get_cores(conn, _params) do
    cores = Veiculos.Cores.list_veiculo_cores()

    json(conn, cores)
  end

  def get_tipos(conn, _params) do
    tipos = Veiculos.Tipos.list_veiculo_tipos()

    json(conn, tipos)
  end

  def get_especies(conn, _params) do
    especies = Veiculos.Especies.list_veiculo_especies()

    json(conn, especies)
  end

  def get_marcas(conn, _params) do
    marcas = Veiculos.Marcas.list_veiculo_marcas()

    json(conn, marcas)
  end

  def insert_marcas(conn, params) do
    params
    |> Veiculos.Marcas.create_marca()
    |> case do
      {:ok, marca} -> json(conn, marca)
      {:error, changeset} -> errors(conn, changeset)
    end
  end

  # def get_modelos(conn, %{"marca_id" => marca}) do
  #   modelos = Veiculos.Modelos.list_veiculo_modelos(marca)

  #   json(conn, modelos)
  # end

  # def insert_modelos(conn, %{"marca" => marca} = params) do
  #   marca
  #   |> Veiculos.Marcas.get_marca!()
  #   |> Veiculos.Modelos.create_modelo(params)
  #   |> case do
  #     {:ok, modelo} -> json(conn, modelo)
  #     {:error, changeset} -> errors(conn, changeset)
  #   end
  # end
end
