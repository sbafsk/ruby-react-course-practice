class ComputerPlayer < Player
  def get_move
    @move  = [:rock, :paper, :scissors].sample    
  end
end
