class Player
  HIT_POINT = 20
  attr_reader :name, :point
  
  def initialize(name)
    @name = name
    @point = HIT_POINT
  end

  def name
    $real_name = @name
  end
  def attack
    @point -= 10
  end
end