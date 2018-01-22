defmodule BattlesnakeElixirWeb.GameController do
  @moduledoc """
  This is the main game controller. 
  
  I'd recommend keeping it simple and put your
  business logic elsewhere. 
  """
  use BattlesnakeElixirWeb, :controller

  alias BattlesnakeElixir.Game 
  
  @doc """
  /START

  For reference:
  https://stembolthq.github.io/battle_snake/#post-start
  """
  def start(conn, _params) do
    # There are params passed in the "start" post request,
    # which I'm ignoring.
    #

    render conn, "start.json", start: Game.start
  end

  @doc """
  /MOVE

  For reference:
  https://stembolthq.github.io/battle_snake/#post-move
  """
  def move(conn, params) do
    # ** this is where you queue off your business logic **
    move = Game.move(params)

    render conn, "move.json", move: move, taunt: "do I hear a school bus?"
  end
  
end

