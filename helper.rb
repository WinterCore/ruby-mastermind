class Helper

  $combinations = []

  def keypeg_comparator(turn_code, guesses)
    red_pegs = 0
    white_pegs = 0
    turn_code.each_with_index do |value, index| # yesterday I was doing |index, value| ... burned head xD
      if value == guesses[index]
        red_pegs += 1
        turn_code[index], guesses[index] = nil # red peg is now nil doesn't count them again while white_peg iterates
      end
    end
    guesses.each { |value| white_pegs += 1 if !value.nil? && turn_code.include?(value) } # check any value, not nil
    [red_pegs, white_pegs]
  end
  def create_set(size_of_board)
    elements = []
    current = Array.new(size_of_board, 0)
    for i in 8.times do
      elements << i
    end
    combinationRecursive(size_of_board, 0, current, elements)
  end
  def combinationRecursive(combinationLength, position, current, elements)
    if position >= combinationLength
      $combinations << current.map { |x| x }
      return
    end

    for i in elements.size.times do
      current[position] = elements[i]
      combinationRecursive(combinationLength, position + 1, current, elements)
    end
  end
end

play = Helper.new

play.create_set(4)

p $combinations