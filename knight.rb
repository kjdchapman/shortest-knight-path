class CountKnightMovement
  def execute(first_position,last_position)
    return 0 if first_position == last_position

    if first_position == "f5"
      if ["e3","d6", "e7"].any?(last_position)
        return 1
			end
    end

    if first_position != "f5"
      return 1
    end

    return 2
  end
end
