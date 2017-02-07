require './game'
current_game = Game.new
puts "Do you want to play a game?"
puts "Make a guess of 4 digits and I'll help you."
while !current_game.complete?
  user_input = gets.chomp
  @line = user_input.to_s.chars.map(&:to_i)
  
  current_game.check(@line)
  puts "\nThis is your guess and here is my help "
  print @line
  print ", "
  print current_game.gethelp
  puts ""
end
