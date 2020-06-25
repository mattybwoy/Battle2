class Player
  attr_reader :name
  
  def initialize(name)
    @name = name
  end

  def name
    $real_name = @name
  end

end