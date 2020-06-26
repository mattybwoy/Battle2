require 'game'

describe Game do
  describe '#initialise' do
    it "creates two players on initialise" do
      game = Game.new("Sam","Matthew")
      expect(game.player2.name).to eq("Matthew")
    end
  end

  describe "attack reduces opponents hp by 10" do
    it "reduces hp by 10" do
      point = 20
      player = double :player, get: point
      allow(player).to receive(:point) { 20 }
      expect(player.point).to eq 20
    end
    end
end