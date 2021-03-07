defmodule EstacionamentoIFRO.Veiculos.Marcas do
  @moduledoc """
  The Veiculos context.
  """

  import Ecto.Query, warn: false
  alias EstacionamentoIFRO.Repo

  alias EstacionamentoIFRO.Veiculos.Marca

  @doc """
  Returns the list of veiculo_marcas.

  ## Examples

      iex> list_veiculo_marcas()
      [%Marca{}, ...]

  """
  def list_veiculo_marcas do
    Repo.all(Marca)
  end

  @doc """
  Gets a single marca.

  Raises `Ecto.NoResultsError` if the Marca does not exist.

  ## Examples

      iex> get_marca!(123)
      %Marca{}

      iex> get_marca!(456)
      ** (Ecto.NoResultsError)

  """
  def get_marca!(id), do: Repo.get!(Marca, id)

  @doc """
  Creates a marca.

  ## Examples

      iex> create_marca(%{field: value})
      {:ok, %Marca{}}

      iex> create_marca(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_marca(attrs \\ %{}) do
    %Marca{}
    |> Marca.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a marca.

  ## Examples

      iex> update_marca(marca, %{field: new_value})
      {:ok, %Marca{}}

      iex> update_marca(marca, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_marca(%Marca{} = marca, attrs) do
    marca
    |> Marca.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a marca.

  ## Examples

      iex> delete_marca(marca)
      {:ok, %Marca{}}

      iex> delete_marca(marca)
      {:error, %Ecto.Changeset{}}

  """
  def delete_marca(%Marca{} = marca) do
    Repo.delete(marca)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking marca changes.

  ## Examples

      iex> change_marca(marca)
      %Ecto.Changeset{data: %Marca{}}

  """
  def change_marca(%Marca{} = marca, attrs \\ %{}) do
    Marca.changeset(marca, attrs)
  end
end
