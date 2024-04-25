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

    it "should return new coordinates 0,0,0 and direction E if given initial coordinates 0,0,0,direction N and operation 'r'" do
      x,y,z,direction = Chandrayaan.find_next_coordinates(0,0,0,'N',"r")
      expect(x).to eq(0)
      expect(y).to eq(0)
      expect(z).to eq(0)
      expect(direction).to eq('E')
    end

    it "should return new coordinates 1,0,0 and direction W if given initial coordinates 1,0,0,direction N and operation 'l'" do
      x,y,z,direction = Chandrayaan.find_next_coordinates(1,0,0,'N',"l")
      expect(x).to eq(1)
      expect(y).to eq(0)
      expect(z).to eq(0)
      expect(direction).to eq('W')
    end

    it "should return new coordinates 0,1,0 and direction S if given initial coordinates 0,0,0,direction S and operation 'f'" do
      x,y,z,direction = Chandrayaan.find_next_coordinates(0,0,0,'S',"f")
      expect(x).to eq(0)
      expect(y).to eq(1)
      expect(z).to eq(0)
      expect(direction).to eq('S')
    end

    it "should return new coordinates 1,-1,0 and direction S if given initial coordinates 1,0,0,direction S and operation 'b'" do
      x,y,z,direction = Chandrayaan.find_next_coordinates(1,0,0,'S',"b")
      expect(x).to eq(1)
      expect(y).to eq(-1)
      expect(z).to eq(0)
      expect(direction).to eq('S')
    end

    it "should return new coordinates 0,0,0 and direction W if given initial coordinates 0,0,0,direction S and operation 'r'" do
      x,y,z,direction = Chandrayaan.find_next_coordinates(0,0,0,'S',"r")
      expect(x).to eq(0)
      expect(y).to eq(0)
      expect(z).to eq(0)
      expect(direction).to eq('W')
    end

    it "should return new coordinates 1,0,0 and direction E if given initial coordinates 1,0,0,direction S and operation 'l'" do
      x,y,z,direction = Chandrayaan.find_next_coordinates(1,0,0,'S',"l")
      expect(x).to eq(1)
      expect(y).to eq(0)
      expect(z).to eq(0)
      expect(direction).to eq('E')
    end

    it "should return new coordinates 1,0,0 and direction E if given initial coordinates 0,0,0,direction E and operation 'f'" do
      x,y,z,direction = Chandrayaan.find_next_coordinates(0,0,0,'E',"f")
      expect(x).to eq(1)
      expect(y).to eq(0)
      expect(z).to eq(0)
      expect(direction).to eq('E')
    end

    it "should return new coordinates 1,0,0 and direction W if given initial coordinates 0,0,0,direction W and operation 'f'" do
      x,y,z,direction = Chandrayaan.find_next_coordinates(0,0,0,'W',"f")
      expect(x).to eq(1)
      expect(y).to eq(0)
      expect(z).to eq(0)
      expect(direction).to eq('W')
    end

    it "should return new coordinates 1,0,0 and direction N if given initial coordinates 1,0,0,direction E and operation 'l'" do
      x,y,z,direction = Chandrayaan.find_next_coordinates(1,0,0,'E',"l")
      expect(x).to eq(1)
      expect(y).to eq(0)
      expect(z).to eq(0)
      expect(direction).to eq('N')
    end

    it "should return new coordinates 1,0,0 and direction S if given initial coordinates 1,0,0,direction W and operation 'l'" do
      x,y,z,direction = Chandrayaan.find_next_coordinates(1,0,0,'W',"l")
      expect(x).to eq(1)
      expect(y).to eq(0)
      expect(z).to eq(0)
      expect(direction).to eq('S')
    end

    it "should return new coordinates 0,1,0 and direction U if given initial coordinates 0,1,0,direction E and operation 'u'" do
      x,y,z,direction = Chandrayaan.find_next_coordinates(0,1,0,'E',"u")
      expect(x).to eq(0)
      expect(y).to eq(1)
      expect(z).to eq(0)
      expect(direction).to eq('U')
    end

    it "should return new coordinates 0,1,0 and direction S if given initial coordinates 0,1,0,direction U and operation 'l'" do
      x,y,z,direction = Chandrayaan.find_next_coordinates(0,1,0,'W',"u")
      x1,y1,z1,direction1 = Chandrayaan.find_next_coordinates(0,1,0,'U',"l")
      expect(x1).to eq(0)
      expect(y1).to eq(1)
      expect(z1).to eq(0)
      expect(direction1).to eq('S')
    end

    it "should return new coordinates 0,1,0 and direction D if given initial coordinates 0,1,0,direction E and operation 'd'" do
      x,y,z,direction = Chandrayaan.find_next_coordinates(0,1,0,'E',"d")
      expect(x).to eq(0)
      expect(y).to eq(1)
      expect(z).to eq(0)
      expect(direction).to eq('D')
    end

    it "should return new coordinates 0,1,0 and direction E if given initial coordinates 0,1,0,direction D and operation 'l'" do
      x,y,z,direction = Chandrayaan.find_next_coordinates(0,1,0,'S',"d")
      x1,y1,z1,direction1 = Chandrayaan.find_next_coordinates(0,1,0,'D',"l")
      expect(x1).to eq(0)
      expect(y1).to eq(1)
      expect(z1).to eq(0)
      expect(direction1).to eq('E')
    end
  end
end
