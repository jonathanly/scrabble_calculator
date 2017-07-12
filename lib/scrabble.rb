class Scrabble

  LETTER_VALUES = {
    "A" => 1, "B" => 3, "C" => 3, "D" => 2,
    "E" => 1, "F" => 4, "G" => 2, "H" => 4,
    "I" => 1, "J" => 8, "K" => 5, "L" => 1,
    "M" => 3, "N" => 1, "O" => 1, "P" => 3,
    "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
    "U" => 1, "V" => 4, "W" => 4, "X" => 8,
    "Y" => 4, "Z" => 10
  }

  def convert_to_letter_values(string)
    string.upcase.split('').map { |letter| Scrabble::LETTER_VALUES[letter] }
  end

  def score(string)
    if string == nil || string.empty?
      return 0
    else
      convert_to_letter_values(string).reduce(:+)
    end
  end

  def double_word(string)
    score(string) * 2
  end

  def triple_word(string)
    score(string) * 3
  end

  def double_letter(string, letter)
    score(string) + Scrabble::LETTER_VALUES[letter.upcase]
  end
end
