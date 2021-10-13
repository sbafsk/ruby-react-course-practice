# frozen_string_literal: true

class Game
  WIN_SCENS = [
    %i[rock scissors],
    %i[paper rock],
    %i[scissors paper]
  ].freeze

  # moves as [:rock, :scissors]

  def initialize
    @players = []
    @p1 = Player.new('player')
    @players << @p1
    @p2 = ComputerPlayer.new('com')
    @players << @p2
    play
  end

  def play
    loop do
      break unless play_round
    end
    puts 'Good bye, thanks for playing.'
  end

  def play_round
    return false unless @players.all?(&:get_move)

    print_moves
    pick_winner
    print_scores
    puts
    puts "Let's play again."
    true
  end

  def print_moves
    @players.each do |player|
      puts "#{player.name} chose: #{player.move}"
    end
  end

  def pick_winner
    if @p1.move == @p2.move
      puts "It's a tie!"
    elsif WIN_SCENS.include?([@p1.move, @p2.move])
      puts 'player wins!'
      @p1.win
    else
      puts 'com wins!'
      @p2.win
    end
  end

  def print_scores
    puts 'Scores :'
    @players.each do |player|
      puts "#{player.name} # #{player.score}"
    end
  end
end
