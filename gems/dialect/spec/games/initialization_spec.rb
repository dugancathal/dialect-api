RSpec.describe 'Game initialization' do
  it 'starts with 3 ages' do
    g = Dialect::Game.new
    expect(g.ages.count).to eq 3
  end

  it 'starts in Age 1' do
    g = Dialect::Game.new
    expect(g.current_age_number).to eq 1
  end
end
