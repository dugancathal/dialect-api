module Dialect
  class Game
    MAX_PLAYER_COUNT = 5

    attr_reader :players, :ages

    def initialize
      @players = []
      @ages = [Age.new(1), Age.new(2), Age.new(3)]
    end

    def add_player(name)
      return if @players.size >= MAX_PLAYER_COUNT
      @players << Player.new(name)
    end

    def current_age_number
      @ages.first.number
    end
  end
end
