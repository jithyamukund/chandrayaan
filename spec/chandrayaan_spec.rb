require_relative '../chandrayaan.rb'

RSpec.describe Chandrayaan do

  describe '#find_next_coordinates' do
    it "should return new coordinates 0,1,0 and direction N if given initial coordinates 0,0,0,direction N and operation 'f'" do
      x,y,z,direction = Chandrayaan.find_next_coordinates(0,0,0,'N',"f")
      expect(x).to eq(0)
      expect(y).to eq(1)
      expect(z).to eq(0)
      expect(direction).to eq('N')
    end

    it "should return new coordinates 1,-1,0 and direction N if given initial coordinates 1,0,0,direction N and operation 'b'" do
      x,y,z,direction = Chandrayaan.find_next_coordinates(1,0,0,'N',"b")
      expect(x).to eq(1)
      expect(y).to eq(-1)
      expect(z).to eq(0)
      expect(direction).to eq('N')
    end
  end
end
