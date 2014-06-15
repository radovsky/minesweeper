require './board'

class Tile
  
  attr_reader :x, :y, :bomb, :nearby_bombs, :revealed, :flagged
  
  def initialize(window, board, coords, bomb, nearby_bombs=0)
    @window, @board = window, board
    @x, @y = coords[0], coords[1]
    @bomb, @nearby_bombs = bomb, nearby_bombs
    @revealed, @flagged = false, false
  end
  
  def find_neighbors
    
  end
  
  def find_nearby_bombs
    
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