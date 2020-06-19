  
def keypeg_comp(turn_code, guesses)
  keypeg = []
  red_pegs = 0
  white_pegs = 0

  turn_code.each_with_index do |index, value| 
    if turn_code[index] == guesses[index]
      red_pegs += 1
    elsif guesses.include? turn_code[index]
      white_pegs +=1
    end
  end
  print red_pegs
  print white_pegs
end


turn_code = [1, 2, 3, 4]
guesses = [4, 5, 2, 5]

keypeg_comp(turn_code, guesses)
