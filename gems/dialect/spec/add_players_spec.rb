RSpec.describe 'Adding Players' do
  it 'allows adding a player' do
    game = start_new_game
    game.add_player 'Dugan'

    expect(game.players.map(&:name)).to match_array ['Dugan']
  end

  it 'fails to add more than 5 players' do
    game = start_new_game
    5.times {|i| game.add_player "Dugan #{i}" }
    game.add_player "Thou shalt not!"

    expect(game.players.map(&:name)).to match_array [
      'Dugan 0',
      'Dugan 1',
      'Dugan 2',
      'Dugan 3',
      'Dugan 4'
    ]
  end

  private

  def start_new_game
    Dialect::Game.new
  end
end
