class Hitpoints
  attr_reader :player_1

  def initialize
    @player_1 = ''
  end

  def player_1_HP
    @player_1 = 'player 1 HP!!'
  end

  def player_2_HP
    @player_2 = 'player 2 HP!!'
  end

  def self.instance
    @hitpoints||= Hitpoints.new
  end
end