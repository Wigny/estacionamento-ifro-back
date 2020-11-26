defmodule EstacionamentoIFRO.Veiculo.Cores do
  @moduledoc """
  The Veiculos context.
  """

  import Ecto.Query, warn: false
  alias EstacionamentoIFRO.Repo

  alias EstacionamentoIFRO.Veiculos.Cor

  @doc """
  Returns the list of veiculo_cores.

  ## Examples

      iex> list_veiculo_cores()
      [%Cor{}, ...]

  """
  def list_veiculo_cores do
    Repo.all(Cor)
  end

  @doc """
  Gets a single cor.

  Raises `Ecto.NoResultsError` if the Cor does not exist.

  ## Examples

      iex> get_cor!(123)
      %Cor{}

      iex> get_cor!(456)
      ** (Ecto.NoResultsError)

  """
  def get_cor!(id), do: Repo.get!(Cor, id)

  @doc """
  Creates a cor.

  ## Examples

      iex> create_cor(%{field: value})
      {:ok, %Cor{}}

      iex> create_cor(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_cor(attrs \\ %{}) do
    %Cor{}
    |> Cor.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a cor.

  ## Examples

      iex> update_cor(cor, %{field: new_value})
      {:ok, %Cor{}}

      iex> update_cor(cor, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_cor(%Cor{} = cor, attrs) do
    cor
    |> Cor.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a cor.

  ## Examples

      iex> delete_cor(cor)
      {:ok, %Cor{}}

      iex> delete_cor(cor)
      {:error, %Ecto.Changeset{}}

  """
  def delete_cor(%Cor{} = cor) do
    Repo.delete(cor)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking cor changes.

  ## Examples

      iex> change_cor(cor)
      %Ecto.Changeset{data: %Cor{}}

  """
  def change_cor(%Cor{} = cor, attrs \\ %{}) do
    Cor.changeset(cor, attrs)
  end
end
