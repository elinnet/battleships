require_relative '../lib/ship.rb'


class Board 

  attr_reader :grid

  def initialize
    @grid = []
  end

  def place_ship ship
   grid << ship
  end

  def fire
    hit? ? 'Hit! You have one' : 'Miss'
  end

  def hit?
    grid != []
  end
  def show_grid
    @grid
  end

  
end