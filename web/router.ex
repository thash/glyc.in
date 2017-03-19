# examine ... $ mix phoenix.routes
defmodule Elixirweb.Router do
  use Elixirweb.Web, :router

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

  scope "/", Elixirweb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # TODO: set api pipeline for subdomain api.hoge.com/-/public/xxxx
  scope "/_api", Elixirweb do
    pipe_through :api
    get "/", PageController, :index

    # scope "/-", Elixirweb do
    #   get "/", PageController, :index
    # end
  end
end
