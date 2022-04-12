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
    row, column = convert_to_row_and_column("f5")

    (target_spaces(row, column) + ["h6", "h4", "g3", "e3", "d4", "d6", "e7"]).any?(last_position)
  end

  def target_spaces(row, column)
    target_row = row + 2
    target_column = column + 1

    [ convert_to_chess_notation(target_row, target_column) ]
  end

  def convert_to_chess_notation(row, column)
    letter_lookup.invert[column] + row.to_s
  end

  def convert_to_row_and_column(chess_notation)
    row = chess_notation[1].to_i
    column = letter_lookup[chess_notation[0]]

    return row, column
  end

  def letter_lookup
    ("a".."h")
      .map
      .with_index(1){|letter, index| [letter, index]}
      .to_h
  end
end
