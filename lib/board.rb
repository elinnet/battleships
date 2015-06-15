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
    if grid == []
      'miss'
    else
      'hit'
    end
    

  end


  
end