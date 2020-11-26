defmodule EstacionamentoIFRO.RegistrosTest do
  use EstacionamentoIFRO.DataCase

  alias EstacionamentoIFRO.Registros

  describe "registros" do
    alias EstacionamentoIFRO.Registros.Registro

    @valid_attrs %{entrada: ~N[2010-04-17 14:00:00], saida: ~N[2010-04-17 14:00:00]}
    @update_attrs %{entrada: ~N[2011-05-18 15:01:01], saida: ~N[2011-05-18 15:01:01]}
    @invalid_attrs %{entrada: nil, saida: nil}

    def registro_fixture(attrs \\ %{}) do
      {:ok, registro} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Registros.create_registro()

      registro
    end

    test "list_registros/0 returns all registros" do
      registro = registro_fixture()
      assert Registros.list_registros() == [registro]
    end

    test "get_registro!/1 returns the registro with given id" do
      registro = registro_fixture()
      assert Registros.get_registro!(registro.id) == registro
    end

    test "create_registro/1 with valid data creates a registro" do
      assert {:ok, %Registro{} = registro} = Registros.create_registro(@valid_attrs)
      assert registro.entrada == ~N[2010-04-17 14:00:00]
      assert registro.saida == ~N[2010-04-17 14:00:00]
    end

    test "create_registro/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Registros.create_registro(@invalid_attrs)
    end

    test "update_registro/2 with valid data updates the registro" do
      registro = registro_fixture()
      assert {:ok, %Registro{} = registro} = Registros.update_registro(registro, @update_attrs)
      assert registro.entrada == ~N[2011-05-18 15:01:01]
      assert registro.saida == ~N[2011-05-18 15:01:01]
    end

    test "update_registro/2 with invalid data returns error changeset" do
      registro = registro_fixture()
      assert {:error, %Ecto.Changeset{}} = Registros.update_registro(registro, @invalid_attrs)
      assert registro == Registros.get_registro!(registro.id)
    end

    test "delete_registro/1 deletes the registro" do
      registro = registro_fixture()
      assert {:ok, %Registro{}} = Registros.delete_registro(registro)
      assert_raise Ecto.NoResultsError, fn -> Registros.get_registro!(registro.id) end
    end

    test "change_registro/1 returns a registro changeset" do
      registro = registro_fixture()
      assert %Ecto.Changeset{} = Registros.change_registro(registro)
    end
  end
end
