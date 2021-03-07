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
    |> validate_format(:telefone, ~r/^[1-9]{2}(?:[2-8]|9[1-9])[0-9]{3}[0-9]{4}$/)
    |> validate_format(:cpf_cnpj, ~r/^(\d{2}\d{3}\d{3}\/?\d{4}\d{2}|\d{3}\d{3}\d{3}\d{2})$/)
    |> unique_constraint(:cpf_cnpj)
  end
end
