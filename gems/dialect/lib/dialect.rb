require "dialect/version"

module Dialect
  class Error < StandardError; end

  autoload :Game, 'dialect/game'
  autoload :Player, 'dialect/player'
  autoload :Age, 'dialect/age'
end
