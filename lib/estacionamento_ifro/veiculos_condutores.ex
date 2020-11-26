defmodule EstacionamentoIFRO.VeiculosCondutores do
  @moduledoc """
  The VeiculosCondutores context.
  """

  import Ecto.Query, warn: false
  alias EstacionamentoIFRO.Repo

  alias EstacionamentoIFRO.VeiculosCondutores.VeiculoCondutor

  @doc """
  Returns the list of veiculos_condutores.

  ## Examples

      iex> list_veiculos_condutores()
      [%VeiculoCondutor{}, ...]

  """
  def list_veiculos_condutores do
    Repo.all(VeiculoCondutor)
  end

  @doc """
  Gets a single veiculo_condutor.

  Raises `Ecto.NoResultsError` if the Veiculo condutor does not exist.

  ## Examples

      iex> get_veiculo_condutor!(123)
      %VeiculoCondutor{}

      iex> get_veiculo_condutor!(456)
      ** (Ecto.NoResultsError)

  """
  def get_veiculo_condutor!(id), do: Repo.get!(VeiculoCondutor, id)

  @doc """
  Creates a veiculo_condutor.

  ## Examples

      iex> create_veiculo_condutor(%{field: value})
      {:ok, %VeiculoCondutor{}}

      iex> create_veiculo_condutor(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_veiculo_condutor(attrs \\ %{}) do
    %VeiculoCondutor{}
    |> VeiculoCondutor.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a veiculo_condutor.

  ## Examples

      iex> update_veiculo_condutor(veiculo_condutor, %{field: new_value})
      {:ok, %VeiculoCondutor{}}

      iex> update_veiculo_condutor(veiculo_condutor, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_veiculo_condutor(%VeiculoCondutor{} = veiculo_condutor, attrs) do
    veiculo_condutor
    |> VeiculoCondutor.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a veiculo_condutor.

  ## Examples

      iex> delete_veiculo_condutor(veiculo_condutor)
      {:ok, %VeiculoCondutor{}}

      iex> delete_veiculo_condutor(veiculo_condutor)
      {:error, %Ecto.Changeset{}}

  """
  def delete_veiculo_condutor(%VeiculoCondutor{} = veiculo_condutor) do
    Repo.delete(veiculo_condutor)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking veiculo_condutor changes.

  ## Examples

      iex> change_veiculo_condutor(veiculo_condutor)
      %Ecto.Changeset{data: %VeiculoCondutor{}}

  """
  def change_veiculo_condutor(%VeiculoCondutor{} = veiculo_condutor, attrs \\ %{}) do
    VeiculoCondutor.changeset(veiculo_condutor, attrs)
  end
end
