require_relative '../lib/ship.rb'


class Board 

  attr_reader :ship_array, :ship_position_array

  def initialize
    @ship_array = []
    @ship_position_array = []

  end

  def place_ship ship
    ship_array << ship
    ship_position_array << ship.position
  end

  def hit?
    true

  end



end