require 'board'

describe Board do

  it 'can have a ship' do
    expect(subject).to respond_to(:place_ship).with(1).argument
  end  

  it 'when created, array of ships is empty' do
    expect(subject.ship_array).to eq []
  end

  it 'array contains ship when a ship is placed' do 
    test_ship = double :ship, position: 'D3'
    subject.place_ship test_ship    
    expect(subject.ship_array.last).to eq test_ship
  end

  it 'array contains ship position only when ship is placed' do
    test_ship = double :ship, position: 'D3'
    subject.place_ship test_ship
    expect(subject.ship_position_array.last).to eq 'D3'
  end

  it 'can recieve a hit on ship' do
    test_ship = double :ship, position: 'D3'
    subject.place_ship test_ship
    expect(subject).to be_hit
  end


  
end
