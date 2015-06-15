require 'board'

describe Board do
  it 'places a ship' do
    expect(subject).to respond_to(:place_ship).with(1).argument
  end
  context 'in the case of a 1x1 board' do
    it 'adds ship to the grid when placed' do 
      ship = double :ship
      subject.place_ship ship
      expect(subject.grid).to eq [ship]
    end
    
    it 'can fire on grid' do
      expect(subject).to respond_to(:fire)
    end

    it 'misses if the grid is empty' do 
      expect(subject.fire).to eq 'Miss'
    end

    it 'hits if grid is not empty (contains ship)' do
      subject.place_ship double :ship
      expect(subject).to be_hit
    end


  end



  it 'has an empty grid when created' do
    expect(subject).to respond_to(:grid)
  end


  
end