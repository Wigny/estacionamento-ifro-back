defmodule EstacionamentoIFRO.Veiculos do
  @moduledoc """
  The Veiculos context.
  """

  import Ecto.Query, warn: false
  alias EstacionamentoIFRO.Repo

  alias EstacionamentoIFRO.Veiculos.Veiculo

  @doc """
  Returns the list of veiculos.

  ## Examples

      iex> list_veiculos()
      [%Veiculo{}, ...]

  """
  def list_veiculos do
    Repo.all(Veiculo)
  end

  @doc """
  Gets a single veiculo.

  Raises `Ecto.NoResultsError` if the Veiculo does not exist.

  ## Examples

      iex> get_veiculo!(123)
      %Veiculo{}

      iex> get_veiculo!(456)
      ** (Ecto.NoResultsError)

  """
  def get_veiculo!(id), do: Repo.get!(Veiculo, id)

  @doc """
  Creates a veiculo.

  ## Examples

      iex> create_veiculo(%{field: value})
      {:ok, %Veiculo{}}

      iex> create_veiculo(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_veiculo(attrs \\ %{}) do
    %Veiculo{}
    |> Veiculo.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a veiculo.

  ## Examples

      iex> update_veiculo(veiculo, %{field: new_value})
      {:ok, %Veiculo{}}

      iex> update_veiculo(veiculo, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_veiculo(%Veiculo{} = veiculo, attrs) do
    veiculo
    |> Veiculo.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a veiculo.

  ## Examples

      iex> delete_veiculo(veiculo)
      {:ok, %Veiculo{}}

      iex> delete_veiculo(veiculo)
      {:error, %Ecto.Changeset{}}

  """
  def delete_veiculo(%Veiculo{} = veiculo) do
    Repo.delete(veiculo)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking veiculo changes.

  ## Examples

      iex> change_veiculo(veiculo)
      %Ecto.Changeset{data: %Veiculo{}}

  """
  def change_veiculo(%Veiculo{} = veiculo, attrs \\ %{}) do
    Veiculo.changeset(veiculo, attrs)
  end
end
