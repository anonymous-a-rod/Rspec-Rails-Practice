class Player
  attr_accessor :credits, :active


  def sub_credits(number)
    if number == 0 
      raise StandardError
    end
    @credits = @credits - number
  end


end

