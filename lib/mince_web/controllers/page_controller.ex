defmodule MinceWeb.PageController do
  use MinceWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
