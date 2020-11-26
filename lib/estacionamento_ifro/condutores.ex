defmodule EstacionamentoIFRO.Condutores do
  @moduledoc """
  The Condutores context.
  """

  import Ecto.Query, warn: false
  alias EstacionamentoIFRO.Repo

  alias EstacionamentoIFRO.Condutores.Condutor

  @doc """
  Returns the list of condutores.

  ## Examples

      iex> list_condutores()
      [%Condutor{}, ...]

  """
  def list_condutores do
    Repo.all(Condutor)
  end

  @doc """
  Gets a single condutor.

  Raises `Ecto.NoResultsError` if the Condutor does not exist.

  ## Examples

      iex> get_condutor!(123)
      %Condutor{}

      iex> get_condutor!(456)
      ** (Ecto.NoResultsError)

  """
  def get_condutor!(id), do: Repo.get!(Condutor, id)

  @doc """
  Creates a condutor.

  ## Examples

      iex> create_condutor(%{field: value})
      {:ok, %Condutor{}}

      iex> create_condutor(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_condutor(attrs \\ %{}) do
    %Condutor{}
    |> Condutor.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a condutor.

  ## Examples

      iex> update_condutor(condutor, %{field: new_value})
      {:ok, %Condutor{}}

      iex> update_condutor(condutor, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_condutor(%Condutor{} = condutor, attrs) do
    condutor
    |> Condutor.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a condutor.

  ## Examples

      iex> delete_condutor(condutor)
      {:ok, %Condutor{}}

      iex> delete_condutor(condutor)
      {:error, %Ecto.Changeset{}}

  """
  def delete_condutor(%Condutor{} = condutor) do
    Repo.delete(condutor)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking condutor changes.

  ## Examples

      iex> change_condutor(condutor)
      %Ecto.Changeset{data: %Condutor{}}

  """
  def change_condutor(%Condutor{} = condutor, attrs \\ %{}) do
    Condutor.changeset(condutor, attrs)
  end
end
