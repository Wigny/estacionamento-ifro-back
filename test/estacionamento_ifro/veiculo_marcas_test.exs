defmodule EstacionamentoIFRO.Veiculo.MarcasTest do
  use EstacionamentoIFRO.DataCase

  alias EstacionamentoIFRO.Veiculo.Marcas

  describe "veiculo_marcas" do
    alias EstacionamentoIFRO.Veiculos.Marca

    @valid_attrs %{marca: "some marca"}
    @update_attrs %{marca: "some updated marca"}
    @invalid_attrs %{marca: nil}

    def marca_fixture(attrs \\ %{}) do
      {:ok, marca} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Marcas.create_marca()

      marca
    end

    test "list_veiculo_marcas/0 returns all veiculo_marcas" do
      marca = marca_fixture()
      assert Marcas.list_veiculo_marcas() == [marca]
    end

    test "get_marca!/1 returns the marca with given id" do
      marca = marca_fixture()
      assert Marcas.get_marca!(marca.id) == marca
    end

    test "create_marca/1 with valid data creates a marca" do
      assert {:ok, %Marca{} = marca} = Marcas.create_marca(@valid_attrs)
      assert marca.marca == "some marca"
    end

    test "create_marca/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Marcas.create_marca(@invalid_attrs)
    end

    test "update_marca/2 with valid data updates the marca" do
      marca = marca_fixture()
      assert {:ok, %Marca{} = marca} = Marcas.update_marca(marca, @update_attrs)
      assert marca.marca == "some updated marca"
    end

    test "update_marca/2 with invalid data returns error changeset" do
      marca = marca_fixture()
      assert {:error, %Ecto.Changeset{}} = Marcas.update_marca(marca, @invalid_attrs)
      assert marca == Marcas.get_marca!(marca.id)
    end

    test "delete_marca/1 deletes the marca" do
      marca = marca_fixture()
      assert {:ok, %Marca{}} = Marcas.delete_marca(marca)
      assert_raise Ecto.NoResultsError, fn -> Marcas.get_marca!(marca.id) end
    end

    test "change_marca/1 returns a marca changeset" do
      marca = marca_fixture()
      assert %Ecto.Changeset{} = Marcas.change_marca(marca)
    end
  end
end
