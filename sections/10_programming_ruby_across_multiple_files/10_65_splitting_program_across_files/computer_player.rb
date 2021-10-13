# frozen_string_literal: true

class ComputerPlayer < Player
  def get_move
    @move = %i[rock paper scissors].sample
  end
end
