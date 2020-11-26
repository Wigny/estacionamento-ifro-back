defmodule EstacionamentoIFRO.CondutoresTest do
  use EstacionamentoIFRO.DataCase

  alias EstacionamentoIFRO.Condutores

  describe "condutores" do
    alias EstacionamentoIFRO.Condutores.Condutor

    @valid_attrs %{
      cpf_cnpj: "some cpf_cnpj",
      nascimento: ~D[2010-04-17],
      nome: "some nome",
      telefone: "some telefone"
    }
    @update_attrs %{
      cpf_cnpj: "some updated cpf_cnpj",
      nascimento: ~D[2011-05-18],
      nome: "some updated nome",
      telefone: "some updated telefone"
    }
    @invalid_attrs %{cpf_cnpj: nil, nascimento: nil, nome: nil, telefone: nil}

    def condutor_fixture(attrs \\ %{}) do
      {:ok, condutor} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Condutores.create_condutor()

      condutor
    end

    test "list_condutores/0 returns all condutores" do
      condutor = condutor_fixture()
      assert Condutores.list_condutores() == [condutor]
    end

    test "get_condutor!/1 returns the condutor with given id" do
      condutor = condutor_fixture()
      assert Condutores.get_condutor!(condutor.id) == condutor
    end

    test "create_condutor/1 with valid data creates a condutor" do
      assert {:ok, %Condutor{} = condutor} = Condutores.create_condutor(@valid_attrs)
      assert condutor.cpf_cnpj == "some cpf_cnpj"
      assert condutor.nascimento == ~D[2010-04-17]
      assert condutor.nome == "some nome"
      assert condutor.telefone == "some telefone"
    end

    test "create_condutor/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Condutores.create_condutor(@invalid_attrs)
    end

    test "update_condutor/2 with valid data updates the condutor" do
      condutor = condutor_fixture()
      assert {:ok, %Condutor{} = condutor} = Condutores.update_condutor(condutor, @update_attrs)
      assert condutor.cpf_cnpj == "some updated cpf_cnpj"
      assert condutor.nascimento == ~D[2011-05-18]
      assert condutor.nome == "some updated nome"
      assert condutor.telefone == "some updated telefone"
    end

    test "update_condutor/2 with invalid data returns error changeset" do
      condutor = condutor_fixture()
      assert {:error, %Ecto.Changeset{}} = Condutores.update_condutor(condutor, @invalid_attrs)
      assert condutor == Condutores.get_condutor!(condutor.id)
    end

    test "delete_condutor/1 deletes the condutor" do
      condutor = condutor_fixture()
      assert {:ok, %Condutor{}} = Condutores.delete_condutor(condutor)
      assert_raise Ecto.NoResultsError, fn -> Condutores.get_condutor!(condutor.id) end
    end

    test "change_condutor/1 returns a condutor changeset" do
      condutor = condutor_fixture()
      assert %Ecto.Changeset{} = Condutores.change_condutor(condutor)
    end
  end
end
