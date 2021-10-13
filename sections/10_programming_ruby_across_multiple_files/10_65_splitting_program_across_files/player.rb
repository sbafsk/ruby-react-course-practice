# frozen_string_literal: true

class Player
  MOVES = %i[rock paper scissors].freeze

  attr_reader :score, :move, :name

  def initialize(name)
    @name = name
    @score = 0
    @move = nil
  end

  def get_move
    loop do
      puts "Pick a move.\n"
      puts '> '
      @move = gets.chomp.strip.downcase.to_sym
      if @move == :quit
        return false
      elsif MOVES.include?(@move)
        return @move # break loop
      else
        puts 'Invalid move.'
      end
    end
  end

  def win
    @score += 1
  end
end
