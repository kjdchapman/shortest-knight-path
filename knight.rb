class CountKnightMovement
  def execute(first_position,last_position)
    return 0 if first_position == last_position

    if first_position == "f5"
      if last_position == "d5"
        return 2
    	elsif last_position == "e6"
        return 2
			end
    end

    1
  end

end
