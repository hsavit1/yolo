defmodule YoloWeb.Router do
  use YoloWeb, :router

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

  scope "/", YoloWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/about", PageController, :about
    get "/resume", PageController, :resume
  end

  # Other scopes may use custom stacks.
  # scope "/api", YoloWeb do
  #   pipe_through :api
  # end
end
