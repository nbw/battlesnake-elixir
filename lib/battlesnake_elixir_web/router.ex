defmodule BattlesnakeElixirWeb.Router do
  use BattlesnakeElixirWeb, :router

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

  scope "/", BattlesnakeElixirWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/", BattlesnakeElixirWeb do
    pipe_through :api

    post "/start", GameController, :start
    post "/move",  GameController, :move
  end
end
