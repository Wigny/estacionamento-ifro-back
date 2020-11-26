defmodule EstacionamentoIFRO.Condutores.Condutor do
  use Ecto.Schema
  import Ecto.Changeset

  @derive {Jason.Encoder, except: [:__meta__, :__struct__]}
  schema "condutores" do
    field :cpf_cnpj, :string
    field :nascimento, :date
    field :nome, :string
    field :telefone, :string

    timestamps()
  end

  @doc false
  def changeset(condutor, attrs) do
    condutor
    |> cast(attrs, [:nome, :cpf_cnpj, :nascimento, :telefone])
    |> validate_required([:nome, :cpf_cnpj, :nascimento, :telefone])
    |> unique_constraint(:cpf_cnpj)
  end
end
