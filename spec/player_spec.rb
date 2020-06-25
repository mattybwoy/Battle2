require 'player'

describe Player do
  describe '#initialize' do
    it "should return the name" do
      player = Player.new("Goku")

      expect(player.name).to eql("Goku")
    end
  end
end