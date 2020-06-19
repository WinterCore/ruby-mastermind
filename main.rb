puts "Want to play as a (1) codebreaker or a (2) codemaker"

player_selection = gets.chomp.to_i

puts "choose the size of the code (between 4 and 8)"
size_of_board = gets.chomp.to_i

loop do # round loop

  #switch between codemaker and codebreaker
  puts "Codemaker pick your code"

  player_selection = player_selection == 1 ? 2 : 1 
  
  turn_code = []
  for i in (1..size_of_board)
    turn_code << gets.chomp.to_i
  end

  loop do # turn loop
    guess = []

    puts "Codebreaker put your guess"

    for i in (1..size_of_board)
      guess << gets.chomp.to_i
    end

    if turn_code == guess 
      break
    end

    puts "Codemaker put your keypegs 1 for red 2 for white"
    key_pegs = []

    for i in (1..4)
      key_pegs << gets.chomp.to_i # 1 represent red keypeg and 2 represents white keypeg
    end

    # if there's a color in the right position mark it as red. If the color is correct but is in the wrong position add white codepeg.
    
    # compare both codepegs and input of the codemaker

    # show codemakers codepegs

    # Go to step 1 unless the codebreaker breaks the code or depletes all of his turns. count the amount of points

    amount_of_points += 1

  end

end