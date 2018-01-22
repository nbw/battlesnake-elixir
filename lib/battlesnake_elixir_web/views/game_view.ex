defmodule BattlesnakeElixirWeb.GameView do
  use BattlesnakeElixirWeb, :view

   def render("start.json", %{start: resp}), do: resp

  def render("move.json", %{move: move, taunt: taunt}) do
    # Any json "decoration" actions should 
    # be thrown in here
    
    %{ 
      move: move,
      taunt: "hey, #{taunt}"
    }
  end
end
