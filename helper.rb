class Helper
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
end

p turn_code = [1, 2, 3, 4, 5, 6, 7, 8]
p guesses = [6, 2, 3, 4, 5, 6, 7, 8]

hola = Helper.new

p hola.keypeg_comparator(turn_code, guesses)
