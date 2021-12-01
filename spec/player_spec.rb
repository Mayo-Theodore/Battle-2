require 'player'

describe Player do
  it 'returns its name' do
    player = Player.new('Riky')
    expect(player.player).to eq 'Riky'
  end
end