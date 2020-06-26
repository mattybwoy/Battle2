require_relative 'player'

class Game
DEFAULT_ATTACK_POINT = 10

  def attack(player)
    player.point -= DEFAULT_ATTACK_POINT
  end
end