require 'player'

describe Player do
  it 'returns the name' do
    player = Player.new('Riky')
    expect(player.name).to eq 'Riky'
  end
end