class CountKnightMovement
  def execute(first_position,last_position)
    return 0 if first_position == last_position

    number_of_moves = 0

    if first_position == "f5"
      if one_move_away_from_f5?(last_position)
        number_of_moves = 1
      else
        number_of_moves = 2
			end
    end

    if first_position != "f5"
      number_of_moves = 1
      if last_position == "c6"
        number_of_moves = 2
      end
    end

    if first_position == "e5"
      number_of_moves = 1
    end

    number_of_moves
  end

  def one_move_away_from_f5?(last_position)
    ["e3", "d6", "e7"].any?(last_position)
  end
end
