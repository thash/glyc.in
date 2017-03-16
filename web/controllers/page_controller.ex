defmodule Elixirweb.PageController do
  use Elixirweb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
