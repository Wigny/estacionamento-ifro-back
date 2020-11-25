defmodule EstacionamentoIFRO.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      EstacionamentoIFRO.Repo,
      # Start the Telemetry supervisor
      EstacionamentoIFROWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: EstacionamentoIFRO.PubSub},
      # Start the Endpoint (http/https)
      EstacionamentoIFROWeb.Endpoint
      # Start a worker by calling: EstacionamentoIFRO.Worker.start_link(arg)
      # {EstacionamentoIFRO.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: EstacionamentoIFRO.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    EstacionamentoIFROWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
