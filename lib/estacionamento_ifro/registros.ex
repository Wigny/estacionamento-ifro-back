defmodule EstacionamentoIFRO.Registros do
  @moduledoc """
  The Registros context.
  """

  import Ecto.Query, warn: false
  alias EstacionamentoIFRO.Repo

  alias EstacionamentoIFRO.Registros.Registro

  @doc """
  Returns the list of registros.

  ## Examples

      iex> list_registros()
      [%Registro{}, ...]

  """
  def list_registros do
    Repo.all(Registro)
  end

  @doc """
  Gets a single registro.

  Raises `Ecto.NoResultsError` if the Registro does not exist.

  ## Examples

      iex> get_registro!(123)
      %Registro{}

      iex> get_registro!(456)
      ** (Ecto.NoResultsError)

  """
  def get_registro!(id), do: Repo.get!(Registro, id)

  @doc """
  Creates a registro.

  ## Examples

      iex> create_registro(%{field: value})
      {:ok, %Registro{}}

      iex> create_registro(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_registro(attrs \\ %{}) do
    %Registro{}
    |> Registro.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a registro.

  ## Examples

      iex> update_registro(registro, %{field: new_value})
      {:ok, %Registro{}}

      iex> update_registro(registro, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_registro(%Registro{} = registro, attrs) do
    registro
    |> Registro.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a registro.

  ## Examples

      iex> delete_registro(registro)
      {:ok, %Registro{}}

      iex> delete_registro(registro)
      {:error, %Ecto.Changeset{}}

  """
  def delete_registro(%Registro{} = registro) do
    Repo.delete(registro)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking registro changes.

  ## Examples

      iex> change_registro(registro)
      %Ecto.Changeset{data: %Registro{}}

  """
  def change_registro(%Registro{} = registro, attrs \\ %{}) do
    Registro.changeset(registro, attrs)
  end
end
