# frozen_string_literal: true

# - Each Class or Module definition getts its own file.
# - Then I required all those files in my main file.
# - Everything worked just liek it did before.

require_relative 'player'
require_relative 'computer_player'
require_relative 'game'

Game.new
