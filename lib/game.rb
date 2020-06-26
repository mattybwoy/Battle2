require_relative 'player'

class Game
  attr_accessor :player1, :player2
DEFAULT_ATTACK_POINT = 10

  def initialize(name1 = nil,name2 = nil)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
  end

  def attack(player)
    player.point -= DEFAULT_ATTACK_POINT
  end
end