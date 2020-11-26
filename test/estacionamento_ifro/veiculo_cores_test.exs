defmodule EstacionamentoIFRO.Veiculo.CoresTest do
  use EstacionamentoIFRO.DataCase

  alias EstacionamentoIFRO.Veiculo.Cores

  describe "veiculo_cores" do
    alias EstacionamentoIFRO.Veiculos.Cor

    @valid_attrs %{cor: "some cor"}
    @update_attrs %{cor: "some updated cor"}
    @invalid_attrs %{cor: nil}

    def cor_fixture(attrs \\ %{}) do
      {:ok, cor} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Cores.create_cor()

      cor
    end

    test "list_veiculo_cores/0 returns all veiculo_cores" do
      cor = cor_fixture()
      assert Cores.list_veiculo_cores() == [cor]
    end

    test "get_cor!/1 returns the cor with given id" do
      cor = cor_fixture()
      assert Cores.get_cor!(cor.id) == cor
    end

    test "create_cor/1 with valid data creates a cor" do
      assert {:ok, %Cor{} = cor} = Cores.create_cor(@valid_attrs)
      assert cor.cor == "some cor"
    end

    test "create_cor/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Cores.create_cor(@invalid_attrs)
    end

    test "update_cor/2 with valid data updates the cor" do
      cor = cor_fixture()
      assert {:ok, %Cor{} = cor} = Cores.update_cor(cor, @update_attrs)
      assert cor.cor == "some updated cor"
    end

    test "update_cor/2 with invalid data returns error changeset" do
      cor = cor_fixture()
      assert {:error, %Ecto.Changeset{}} = Cores.update_cor(cor, @invalid_attrs)
      assert cor == Cores.get_cor!(cor.id)
    end

    test "delete_cor/1 deletes the cor" do
      cor = cor_fixture()
      assert {:ok, %Cor{}} = Cores.delete_cor(cor)
      assert_raise Ecto.NoResultsError, fn -> Cores.get_cor!(cor.id) end
    end

    test "change_cor/1 returns a cor changeset" do
      cor = cor_fixture()
      assert %Ecto.Changeset{} = Cores.change_cor(cor)
    end
  end
end
