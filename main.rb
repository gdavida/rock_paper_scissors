require_relative "lib/player.rb"

# 
# 
# 
# 
# 



#------------------------------------

#PLAY A GAME




#------------------------------------







#------------------------------------







#------------------------------------

games = []

choice = 7

puts "LET'S PLAY A GAME"
prints "__________________"

while choice != 0
  puts "\nHere are your options:\n1. Play Rock, Paper, Scissors\n2. View Scoreboard\n3. Add New Player\n0. Exit"
  puts "\nWhat is your choice? "
  print "---------------------\n"
  choice = gets.chomp.to_i

  if choice == 1
  elsif choice == 2
  elsif choice == 3
    report_all_wins(Player.total_wins)
  elsif choice == 0
    puts "\n\nGoodbye!"
  else
    puts "\n\nSorry! Not a valid input"
  end


end