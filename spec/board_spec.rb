require 'board'

describe Board do

  it 'can have a ship' do
    expect(subject).to respond_to(:place_ship).with(1).argument
  end  

  it 'when created, array of ships is empty' do
    expect(subject.ship_array).to eq []
  end


  
end
