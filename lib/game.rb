require 'player'

class Game
  attr_reader :player1, :player2

  def initialize(player1 = Player.new("Riky"), player2 = Player.new("Jessica"))
    @player1 = player1
    @player2 = player2
  end
  
  def attack(player)
    player.take_damage
  end
end
