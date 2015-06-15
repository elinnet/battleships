require 'board'

describe Board do

  it 'can have a ship' do
    expect(subject).to respond_to(:place_ship).with(1).argument
  end  

  
end
