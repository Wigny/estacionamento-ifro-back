defmodule EstacionamentoIFROWeb.ErrorHelpers do
  @moduledoc """
  Conveniences for translating and building error messages.
  """

  alias Ecto.Changeset
  alias Phoenix.Controller
  alias Plug.Conn

  @doc """
  Translates an error message.
  """
  def translate_error({msg, opts}) do
    # Because the error messages we show in our forms and APIs
    # are defined inside Ecto, we need to translate them dynamically.
    Enum.reduce(opts, msg, fn {key, value}, acc ->
      String.replace(acc, "%{#{key}}", to_string(value))
    end)
  end

  def errors(conn, changeset) do
    errors = Changeset.traverse_errors(changeset, &translate_error/1)

    conn
    |> Conn.put_status(:expectation_failed)
    |> Controller.json(errors)
  end
end
