defmodule EstacionamentoIFRO.Veiculo.ModelosTest do
  use EstacionamentoIFRO.DataCase

  alias EstacionamentoIFRO.Veiculo.Modelos

  describe "veiculo_modelos" do
    alias EstacionamentoIFRO.Veiculos.Modelo

    @valid_attrs %{modelo: "some modelo"}
    @update_attrs %{modelo: "some updated modelo"}
    @invalid_attrs %{modelo: nil}

    def modelo_fixture(attrs \\ %{}) do
      {:ok, modelo} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Modelos.create_modelo()

      modelo
    end

    test "list_veiculo_modelos/0 returns all veiculo_modelos" do
      modelo = modelo_fixture()
      assert Modelos.list_veiculo_modelos() == [modelo]
    end

    test "get_modelo!/1 returns the modelo with given id" do
      modelo = modelo_fixture()
      assert Modelos.get_modelo!(modelo.id) == modelo
    end

    test "create_modelo/1 with valid data creates a modelo" do
      assert {:ok, %Modelo{} = modelo} = Modelos.create_modelo(@valid_attrs)
      assert modelo.modelo == "some modelo"
    end

    test "create_modelo/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Modelos.create_modelo(@invalid_attrs)
    end

    test "update_modelo/2 with valid data updates the modelo" do
      modelo = modelo_fixture()
      assert {:ok, %Modelo{} = modelo} = Modelos.update_modelo(modelo, @update_attrs)
      assert modelo.modelo == "some updated modelo"
    end

    test "update_modelo/2 with invalid data returns error changeset" do
      modelo = modelo_fixture()
      assert {:error, %Ecto.Changeset{}} = Modelos.update_modelo(modelo, @invalid_attrs)
      assert modelo == Modelos.get_modelo!(modelo.id)
    end

    test "delete_modelo/1 deletes the modelo" do
      modelo = modelo_fixture()
      assert {:ok, %Modelo{}} = Modelos.delete_modelo(modelo)
      assert_raise Ecto.NoResultsError, fn -> Modelos.get_modelo!(modelo.id) end
    end

    test "change_modelo/1 returns a modelo changeset" do
      modelo = modelo_fixture()
      assert %Ecto.Changeset{} = Modelos.change_modelo(modelo)
    end
  end
end
