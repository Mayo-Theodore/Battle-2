require 'player'

describe Player do
  it 'returns the name' do
    player = Player.new('Riky')
    expect(player.player).to eq 'Riky'
  end
end