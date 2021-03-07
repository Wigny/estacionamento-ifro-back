defmodule EstacionamentoIFRO.Veiculos.Modelos do
  @moduledoc """
  The Veiculos context.
  """

  import Ecto.Query, warn: false
  alias EstacionamentoIFRO.Repo

  alias EstacionamentoIFRO.Veiculos.Modelo

  @doc """
  Returns the list of veiculo_modelos.

  ## Examples

      iex> list_veiculo_modelos()
      [%Modelo{}, ...]

  """
  def list_veiculo_modelos do
    Repo.all(Modelo)
  end

  @doc """
  Gets a single modelo.

  Raises `Ecto.NoResultsError` if the Modelo does not exist.

  ## Examples

      iex> get_modelo!(123)
      %Modelo{}

      iex> get_modelo!(456)
      ** (Ecto.NoResultsError)

  """
  def get_modelo!(id), do: Repo.get!(Modelo, id)

  @doc """
  Creates a modelo.

  ## Examples

      iex> create_modelo(%{field: value})
      {:ok, %Modelo{}}

      iex> create_modelo(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_modelo(attrs \\ %{}) do
    %Modelo{}
    |> Modelo.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a modelo.

  ## Examples

      iex> update_modelo(modelo, %{field: new_value})
      {:ok, %Modelo{}}

      iex> update_modelo(modelo, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_modelo(%Modelo{} = modelo, attrs) do
    modelo
    |> Modelo.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a modelo.

  ## Examples

      iex> delete_modelo(modelo)
      {:ok, %Modelo{}}

      iex> delete_modelo(modelo)
      {:error, %Ecto.Changeset{}}

  """
  def delete_modelo(%Modelo{} = modelo) do
    Repo.delete(modelo)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking modelo changes.

  ## Examples

      iex> change_modelo(modelo)
      %Ecto.Changeset{data: %Modelo{}}

  """
  def change_modelo(%Modelo{} = modelo, attrs \\ %{}) do
    Modelo.changeset(modelo, attrs)
  end
end
