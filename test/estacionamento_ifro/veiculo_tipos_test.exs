defmodule EstacionamentoIFRO.Veiculo.TiposTest do
  use EstacionamentoIFRO.DataCase

  alias EstacionamentoIFRO.Veiculo.Tipos

  describe "veiculo_tipos" do
    alias EstacionamentoIFRO.Veiculos.Tipo

    @valid_attrs %{tipo: "some tipo"}
    @update_attrs %{tipo: "some updated tipo"}
    @invalid_attrs %{tipo: nil}

    def tipo_fixture(attrs \\ %{}) do
      {:ok, tipo} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Tipos.create_tipo()

      tipo
    end

    test "list_veiculo_tipos/0 returns all veiculo_tipos" do
      tipo = tipo_fixture()
      assert Tipos.list_veiculo_tipos() == [tipo]
    end

    test "get_tipo!/1 returns the tipo with given id" do
      tipo = tipo_fixture()
      assert Tipos.get_tipo!(tipo.id) == tipo
    end

    test "create_tipo/1 with valid data creates a tipo" do
      assert {:ok, %Tipo{} = tipo} = Tipos.create_tipo(@valid_attrs)
      assert tipo.tipo == "some tipo"
    end

    test "create_tipo/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Tipos.create_tipo(@invalid_attrs)
    end

    test "update_tipo/2 with valid data updates the tipo" do
      tipo = tipo_fixture()
      assert {:ok, %Tipo{} = tipo} = Tipos.update_tipo(tipo, @update_attrs)
      assert tipo.tipo == "some updated tipo"
    end

    test "update_tipo/2 with invalid data returns error changeset" do
      tipo = tipo_fixture()
      assert {:error, %Ecto.Changeset{}} = Tipos.update_tipo(tipo, @invalid_attrs)
      assert tipo == Tipos.get_tipo!(tipo.id)
    end

    test "delete_tipo/1 deletes the tipo" do
      tipo = tipo_fixture()
      assert {:ok, %Tipo{}} = Tipos.delete_tipo(tipo)
      assert_raise Ecto.NoResultsError, fn -> Tipos.get_tipo!(tipo.id) end
    end

    test "change_tipo/1 returns a tipo changeset" do
      tipo = tipo_fixture()
      assert %Ecto.Changeset{} = Tipos.change_tipo(tipo)
    end
  end
end
