defmodule BattlesnakeElixir.Game do
  @moduledoc """
  This is a totally reasonable place to put your game logic.
  """

  @l "left"
  @r "right"
  @d "down"
  @u "up"

  def start do
    %{
      color: "#ff9933",
      head_url: "",
      name: "Snake pun goes here",
      taunt: "cool bean bag",
      head_type: "smile",
      tail_type: "pixel"
    } 
  end

  @doc """
  Entry point into your move logic. You'll probably want to 
  call on other modules you've defined.
  """
  def move %{ "turn" => turn } = params do
    # As an example, I've set the snake to figure eight.
    case rem(turn,8) do
      0 -> @l
      1 -> @u
      2 -> @r
      3 -> @d
      4 -> @r
      5 -> @u
      6 -> @l
      7 -> @d
    end
  end
end
