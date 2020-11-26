defmodule EstacionamentoIFRO.VeiculosCondutoresTest do
  use EstacionamentoIFRO.DataCase

  alias EstacionamentoIFRO.VeiculosCondutores

  describe "veiculos_condutores" do
    alias EstacionamentoIFRO.VeiculosCondutores.VeiculoCondutor

    @valid_attrs %{conduz_ate: ~N[2010-04-17 14:00:00], conduz_desde: ~N[2010-04-17 14:00:00]}
    @update_attrs %{conduz_ate: ~N[2011-05-18 15:01:01], conduz_desde: ~N[2011-05-18 15:01:01]}
    @invalid_attrs %{conduz_ate: nil, conduz_desde: nil}

    def veiculo_condutor_fixture(attrs \\ %{}) do
      {:ok, veiculo_condutor} =
        attrs
        |> Enum.into(@valid_attrs)
        |> VeiculosCondutores.create_veiculo_condutor()

      veiculo_condutor
    end

    test "list_veiculos_condutores/0 returns all veiculos_condutores" do
      veiculo_condutor = veiculo_condutor_fixture()
      assert VeiculosCondutores.list_veiculos_condutores() == [veiculo_condutor]
    end

    test "get_veiculo_condutor!/1 returns the veiculo_condutor with given id" do
      veiculo_condutor = veiculo_condutor_fixture()
      assert VeiculosCondutores.get_veiculo_condutor!(veiculo_condutor.id) == veiculo_condutor
    end

    test "create_veiculo_condutor/1 with valid data creates a veiculo_condutor" do
      assert {:ok, %VeiculoCondutor{} = veiculo_condutor} = VeiculosCondutores.create_veiculo_condutor(@valid_attrs)
      assert veiculo_condutor.conduz_ate == ~N[2010-04-17 14:00:00]
      assert veiculo_condutor.conduz_desde == ~N[2010-04-17 14:00:00]
    end

    test "create_veiculo_condutor/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = VeiculosCondutores.create_veiculo_condutor(@invalid_attrs)
    end

    test "update_veiculo_condutor/2 with valid data updates the veiculo_condutor" do
      veiculo_condutor = veiculo_condutor_fixture()
      assert {:ok, %VeiculoCondutor{} = veiculo_condutor} = VeiculosCondutores.update_veiculo_condutor(veiculo_condutor, @update_attrs)
      assert veiculo_condutor.conduz_ate == ~N[2011-05-18 15:01:01]
      assert veiculo_condutor.conduz_desde == ~N[2011-05-18 15:01:01]
    end

    test "update_veiculo_condutor/2 with invalid data returns error changeset" do
      veiculo_condutor = veiculo_condutor_fixture()
      assert {:error, %Ecto.Changeset{}} = VeiculosCondutores.update_veiculo_condutor(veiculo_condutor, @invalid_attrs)
      assert veiculo_condutor == VeiculosCondutores.get_veiculo_condutor!(veiculo_condutor.id)
    end

    test "delete_veiculo_condutor/1 deletes the veiculo_condutor" do
      veiculo_condutor = veiculo_condutor_fixture()
      assert {:ok, %VeiculoCondutor{}} = VeiculosCondutores.delete_veiculo_condutor(veiculo_condutor)
      assert_raise Ecto.NoResultsError, fn -> VeiculosCondutores.get_veiculo_condutor!(veiculo_condutor.id) end
    end

    test "change_veiculo_condutor/1 returns a veiculo_condutor changeset" do
      veiculo_condutor = veiculo_condutor_fixture()
      assert %Ecto.Changeset{} = VeiculosCondutores.change_veiculo_condutor(veiculo_condutor)
    end
  end
end
