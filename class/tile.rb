require './board'

class Tile
  
  attr_reader :x, :y
  
  def initialize(window, x, y, bomb=false)
    @window, @x, @y, @bomb = window, x, y, bomb
    @revealed, @flagged = false, false
  end
  
  def bomb?
    @bomb
  end
  
  def reveal
    @revealed = true
  end
  
  def flag
    @flagged = true
  end

  def render
    
  end
  
end