class Player
  attr_accessor :name, :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def take_damage
    @hp -= 10
  end
end