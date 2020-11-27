defmodule EstacionamentoIFROWeb.VeiculoController do
  use EstacionamentoIFROWeb, :controller

  alias EstacionamentoIFRO.Veiculo.Cores, as: VeiculoCores
  alias EstacionamentoIFRO.Veiculo.Tipos, as: VeiculoTipos
  alias EstacionamentoIFRO.Veiculo.Especies, as: VeiculoEspecies
  alias EstacionamentoIFRO.Veiculo.Marcas, as: VeiculoMarcas
  alias EstacionamentoIFRO.Veiculo.Modelos, as: VeiculoModelos
  import EstacionamentoIFROWeb.ErrorHelpers

  def get_cores(conn, _params) do
    cores = VeiculoCores.list_veiculo_cores()

    json(conn, cores)
  end

  def get_tipos(conn, _params) do
    tipos = VeiculoTipos.list_veiculo_tipos()

    json(conn, tipos)
  end

  def get_especies(conn, _params) do
    especies = VeiculoEspecies.list_veiculo_especies()

    json(conn, especies)
  end

  def get_marcas(conn, _params) do
    marcas = VeiculoMarcas.list_veiculo_marcas()

    json(conn, marcas)
  end

  def insert_marcas(conn, params) do
    params
    |> VeiculoMarcas.create_marca()
    |> case do
      {:ok, marca} -> json(conn, marca)
      {:error, changeset} -> errors(conn, changeset)
    end
  end

  def get_modelos(conn, %{"marca_id" => marca}) do
    modelos = VeiculoModelos.list_veiculo_modelos(marca)

    json(conn, modelos)
  end

  def insert_modelos(conn, %{"marca" => marca} = params) do
    marca
    |> VeiculoMarcas.get_marca!()
    |> VeiculoModelos.create_modelo(params)
    |> case do
      {:ok, modelo} -> json(conn, modelo)
      {:error, changeset} -> errors(conn, changeset)
    end
  end
end
