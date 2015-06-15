require 'ship'

describe Ship do 

  it 'has a position when created' do 
    ship = Ship.new 'D3'
    expect(ship.position).to eq 'D3'
  end 




  
end