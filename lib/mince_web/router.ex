defmodule MinceWeb.Router do
  use MinceWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MinceWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/" do
    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: MinceWeb.Schema,
      socket: MinceWeb.UserSocket
  end

  # Other scopes may use custom stacks.
  # scope "/api", MinceWeb do
  #   pipe_through :api
  # end
end
