defmodule EstacionamentoIFRO.Veiculo.EspeciesTest do
  use EstacionamentoIFRO.DataCase

  alias EstacionamentoIFRO.Veiculo.Especies

  describe "veiculo_especies" do
    alias EstacionamentoIFRO.Veiculos.Especie

    @valid_attrs %{especie: "some especie"}
    @update_attrs %{especie: "some updated especie"}
    @invalid_attrs %{especie: nil}

    def especie_fixture(attrs \\ %{}) do
      {:ok, especie} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Especies.create_especie()

      especie
    end

    test "list_veiculo_especies/0 returns all veiculo_especies" do
      especie = especie_fixture()
      assert Especies.list_veiculo_especies() == [especie]
    end

    test "get_especie!/1 returns the especie with given id" do
      especie = especie_fixture()
      assert Especies.get_especie!(especie.id) == especie
    end

    test "create_especie/1 with valid data creates a especie" do
      assert {:ok, %Especie{} = especie} = Especies.create_especie(@valid_attrs)
      assert especie.especie == "some especie"
    end

    test "create_especie/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Especies.create_especie(@invalid_attrs)
    end

    test "update_especie/2 with valid data updates the especie" do
      especie = especie_fixture()
      assert {:ok, %Especie{} = especie} = Especies.update_especie(especie, @update_attrs)
      assert especie.especie == "some updated especie"
    end

    test "update_especie/2 with invalid data returns error changeset" do
      especie = especie_fixture()
      assert {:error, %Ecto.Changeset{}} = Especies.update_especie(especie, @invalid_attrs)
      assert especie == Especies.get_especie!(especie.id)
    end

    test "delete_especie/1 deletes the especie" do
      especie = especie_fixture()
      assert {:ok, %Especie{}} = Especies.delete_especie(especie)
      assert_raise Ecto.NoResultsError, fn -> Especies.get_especie!(especie.id) end
    end

    test "change_especie/1 returns a especie changeset" do
      especie = especie_fixture()
      assert %Ecto.Changeset{} = Especies.change_especie(especie)
    end
  end
end
