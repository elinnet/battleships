require 'board'

describe Board do
  it 'places a ship' do
    expect(subject).to respond_to(:place_ship).with(1).argument
  end

  it 'sepcifies the location' do
    expect(subject).to respond_to(:location).with(2).argument
  end




  
end