defmodule EstacionamentoIFROWeb.Router do
  use EstacionamentoIFROWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", EstacionamentoIFROWeb do
    pipe_through :api

    get "/veiculos/cores", VeiculoController, :get_cores
    get "/veiculos/tipos", VeiculoController, :get_tipos
    get "/veiculos/especies", VeiculoController, :get_especies
    get "/veiculos/marcas", VeiculoController, :get_marcas
    post "/veiculos/marcas", VeiculoController, :insert_marcas
    get "/veiculos/modelos", VeiculoController, :get_modelos
    post "/veiculos/modelos", VeiculoController, :insert_modelos

    resources "/condutores", CondutorController, only: [:create]
  end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through [:fetch_session, :protect_from_forgery]
      live_dashboard "/dashboard", metrics: EstacionamentoIFROWeb.Telemetry
    end
  end
end
