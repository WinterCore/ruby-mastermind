  
def keypeg_comp(turn_code, guesses)
  keypeg = []
  red_pegs = 0
  white_pegs = 0

  turn_code.each_with_index do |value, index|
    if value.to_i == guesses[index].to_i
      red_pegs += 1
      turn_code[index] = nil
      guesses[index] = nil
    elsif guesses.include? value
      white_pegs +=1
    end
  end
  puts red_pegs
  puts white_pegs
end

p turn_code = [1, 2, 3, 4, 5, 6, 7, 8]
p guesses = [1, 2, 4, 1, 3, 6, 7, 9]

keypeg_comp(turn_code, guesses)
