defmodule EstacionamentoIFRO.VeiculosTest do
  use EstacionamentoIFRO.DataCase

  alias EstacionamentoIFRO.Veiculos

  describe "veiculos" do
    alias EstacionamentoIFRO.Veiculos.Veiculo

    @valid_attrs %{ano: "some ano", placa: "some placa"}
    @update_attrs %{ano: "some updated ano", placa: "some updated placa"}
    @invalid_attrs %{ano: nil, placa: nil}

    def veiculo_fixture(attrs \\ %{}) do
      {:ok, veiculo} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Veiculos.create_veiculo()

      veiculo
    end

    test "list_veiculos/0 returns all veiculos" do
      veiculo = veiculo_fixture()
      assert Veiculos.list_veiculos() == [veiculo]
    end

    test "get_veiculo!/1 returns the veiculo with given id" do
      veiculo = veiculo_fixture()
      assert Veiculos.get_veiculo!(veiculo.id) == veiculo
    end

    test "create_veiculo/1 with valid data creates a veiculo" do
      assert {:ok, %Veiculo{} = veiculo} = Veiculos.create_veiculo(@valid_attrs)
      assert veiculo.ano == "some ano"
      assert veiculo.placa == "some placa"
    end

    test "create_veiculo/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Veiculos.create_veiculo(@invalid_attrs)
    end

    test "update_veiculo/2 with valid data updates the veiculo" do
      veiculo = veiculo_fixture()
      assert {:ok, %Veiculo{} = veiculo} = Veiculos.update_veiculo(veiculo, @update_attrs)
      assert veiculo.ano == "some updated ano"
      assert veiculo.placa == "some updated placa"
    end

    test "update_veiculo/2 with invalid data returns error changeset" do
      veiculo = veiculo_fixture()
      assert {:error, %Ecto.Changeset{}} = Veiculos.update_veiculo(veiculo, @invalid_attrs)
      assert veiculo == Veiculos.get_veiculo!(veiculo.id)
    end

    test "delete_veiculo/1 deletes the veiculo" do
      veiculo = veiculo_fixture()
      assert {:ok, %Veiculo{}} = Veiculos.delete_veiculo(veiculo)
      assert_raise Ecto.NoResultsError, fn -> Veiculos.get_veiculo!(veiculo.id) end
    end

    test "change_veiculo/1 returns a veiculo changeset" do
      veiculo = veiculo_fixture()
      assert %Ecto.Changeset{} = Veiculos.change_veiculo(veiculo)
    end
  end
end
