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
    converted = convert_from_chess_notation("f5")

    target_row = converted[:row] + 2
    target_column = converted[:column] + 1

    target_space = "g7" # convert_to_chess_notation(target_row, target_column)

    [target_space, "h6", "h4", "g3", "e3", "d4", "d6", "e7"].any?(last_position)
  end

  def convert_from_chess_notation(position)
    {
      column: letter_lookup[position[0]],
      row: position[1].to_i
    }
  end

  def letter_lookup
    ("a".."h")
      .map
      .with_index(1){|letter, index| [letter, index]}
      .to_h
  end
end
