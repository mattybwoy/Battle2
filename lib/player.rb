class Player
    HIT_POINT = 20
  attr_accessor :name, :point
  
  def initialize(name)
    @name = name
    @point = HIT_POINT
  end

  def name
    $real_name = @name
  end

end