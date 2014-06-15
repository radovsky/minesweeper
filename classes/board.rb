require './tile'

class Board
  def initialize(window, dimensions=[20, 20], difficulty=:moderate)
    @window, @num_bombs = window, num_bombs
    @width, @height = dimensions[0], dimensions[1]
  end
  
  def num_tiles
    @width * @height
  end
  
  # chances of a tile being a mine are 1/n
  def odds_off_mine
    case difficulty
    when :difficult
      5
    when :moderate
      7
    when :easy
      9
    end
  end
  
  def create_grid
    
    row = 0
    grid = Array.new(@height) do
      col = 0
      Array.new(@width) do
        Tile.new(@window, self, [row, col], rand(odds_of_mine) == 0)
        col += 1
      end
      row += 1
    end
    
  end
  
end