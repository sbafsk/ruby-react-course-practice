# - We saw that the Array class defines a neat method, #product,
#   which makes it easy to generate all the possible pairings
#   between two sets of objects.
# - We saw how one kind of objects(Dealer) can HAVE another kind of
#   object (Deck). This is called composition, and a commin desing 
#   guideline stresse using "composition over ingeritance"
# - We looked at how to make method private, which means they 
#   can only be called WITHOUT and explicit receiver
#   (even if the receiver is self)

class Deck
  SUITS = ['s','h', 'd', 'c']
  VALUES = (2..10).map(&:to_s).concat ['J', 'Q', 'K', 'A']

  def initialize
    @stack = generate_stack
  end

  def draw
    @stack.pop
  end

  def shuffle
    @stack.shuffle!
  end

  private

  def generate_stack
    VALUES.product(SUITS).map!(&:join)
    # stack = []
    # VALUES.each do |value|
    #   SUITS.each do |suit|
    #     stack << value + suit
    #   end
    # end
    #stack
  end


end

class Player
  def initialize
    @hand = []
  end

  def draw(card)
    @hand << card
  end

  def peek_at_hand
    reveal_hand
  end

  private

  def reveal_hand
    p @hand
  end
end

class Dealer

  def initialize
    @deck = Deck.new
  end

  def deal_card(player)
    player.draw(@deck.draw)
  end

  def shuffle_deck
    @deck.shuffle
  end

  def burn_card
    @deck.draw
  end

  def open_pack
    @deck = Deck.new
  end

  def bad_method
    @deck = Deck.generate_stack
  end

end

dealer = Dealer.new
tara = Player.new
dustin = Player.new



dealer.shuffle_deck
dealer.burn_card
5.times { dealer.deal_card(tara) }
3.times { dealer.deal_card(dustin) }

p dealer
p tara

# tara.reveal_hand
dustin.peek_at_hand
tara.peek_at_hand