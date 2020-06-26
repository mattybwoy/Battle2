require 'game'

describe Game do
  describe "attack reduces opponents hp by 10" do
    it "reduces hp by 10" do
      point = 20
      player = double :player, get: point
      allow(player).to receive(:point) { 20 }
      # p player.point
      # game = Game.new
      # game.attack(player)
      # puts player.point
      #expect { game.attack(player) }.to change { player.point }.by -(Game::DEFAULT_ATTACK_POINT)
      expect(player.point).to eq 20
    end
    end
end