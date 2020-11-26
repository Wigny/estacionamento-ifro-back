defmodule EstacionamentoIFRO.Veiculo.Especies do
  @moduledoc """
  The Veiculos context.
  """

  import Ecto.Query, warn: false
  alias EstacionamentoIFRO.Repo

  alias EstacionamentoIFRO.Veiculos.Especie

  @doc """
  Returns the list of veiculo_especies.

  ## Examples

      iex> list_veiculo_especies()
      [%Especie{}, ...]

  """
  def list_veiculo_especies do
    Repo.all(Especie)
  end

  @doc """
  Gets a single especie.

  Raises `Ecto.NoResultsError` if the Especie does not exist.

  ## Examples

      iex> get_especie!(123)
      %Especie{}

      iex> get_especie!(456)
      ** (Ecto.NoResultsError)

  """
  def get_especie!(id), do: Repo.get!(Especie, id)

  @doc """
  Creates a especie.

  ## Examples

      iex> create_especie(%{field: value})
      {:ok, %Especie{}}

      iex> create_especie(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_especie(attrs \\ %{}) do
    %Especie{}
    |> Especie.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a especie.

  ## Examples

      iex> update_especie(especie, %{field: new_value})
      {:ok, %Especie{}}

      iex> update_especie(especie, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_especie(%Especie{} = especie, attrs) do
    especie
    |> Especie.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a especie.

  ## Examples

      iex> delete_especie(especie)
      {:ok, %Especie{}}

      iex> delete_especie(especie)
      {:error, %Ecto.Changeset{}}

  """
  def delete_especie(%Especie{} = especie) do
    Repo.delete(especie)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking especie changes.

  ## Examples

      iex> change_especie(especie)
      %Ecto.Changeset{data: %Especie{}}

  """
  def change_especie(%Especie{} = especie, attrs \\ %{}) do
    Especie.changeset(especie, attrs)
  end
end
