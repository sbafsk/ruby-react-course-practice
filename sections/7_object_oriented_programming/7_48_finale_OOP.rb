# frozen_string_literal: true

# - By using objects to model our players and our game logic, we were able to clean up our
#   code, reduce repetition, and avoid having to pass information around as arguments.
# - We saw some examples of how we can use instance variables for static information
#   (@name), for something that changes each round(@move), for a value that
#   increments over time (@score), and to hold a reference to anothed object
#   (@p1 in game).
# - We saw how to use instance methods to parcel code inside an object, to send
#   instructions to other objets, to access instance variables (getters/setters). By having
#   ComputerPlayer inherit from Player, we were able to duplicate the funtionality of
#   player and only change the get_move method. Since the new get_move method still
#   fullfilled the same "contract", the Game class didn't need to know whether a player was
#   a real user, it just called player.get_move. (Polymorphims).

# REPL RPS in OOP

# Player class ( 2 intances )

# Game (App class)

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

class ComputerPlayer < Player
  def get_move
    @move = %i[rock paper scissors].sample
  end
end

class Game
  WIN_SCENS = [
    %i[rock scissors],
    %i[paper rock],
    %i[scissors paper]
  ].freeze

  # moves as [:rock, :scissors]

  def initialize
    @players = []
    @p1 = Player.new('p1')
    @players << @p1
    @p2 = ComputerPlayer.new('com')
    @players << @p2
    play
  end

  def pick_winner
    if @p1.move == @p2.move
      puts "It's a tie!"
    elsif WIN_SCENS.include?([@p1.move, @p2.move])
      puts 'p1 wins'
      @p1.win
    else
      puts 'p2 wins'
      @p2.win
    end
  end

  def play_round
    return false unless @players.any?(&:get_move)

    print_moves
    pick_winner
    print_scores
    puts
    puts "Let's play again."
    true
  end

  def play
    loop do
      break unless play_round
    end
    puts 'Good bye, thanks for playing.'
  end

  def print_moves
    @players.each do |player|
      puts "#{player.name} played #{player.move}"
    end
  end

  def print_scores
    puts 'Scores :'
    @players.each do |player|
      puts "#{player.name} : #{player.score}"
    end
  end
end

game = Game.new
