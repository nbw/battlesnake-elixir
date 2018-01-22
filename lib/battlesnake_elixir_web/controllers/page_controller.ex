defmodule BattlesnakeElixirWeb.PageController do
  use BattlesnakeElixirWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
