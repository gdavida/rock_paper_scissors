require "pry"

puts "-------------------------------------------------"
puts "-------------------------------------------------"
puts "LET'S PLAY ROCK, PAPER, SCISSORS!\n"
print "\nPLAYER 1, please choose:\nrock\npaper\nscissors\n\n"
player_1_choice = gets.chomp.downcase!
puts "-------------------------------------------------"
print "\nPLAYER 2, please choose:\nrock\npaper\nscissors\n\n"
player_2_choice = gets.chomp.downcase!

puts "-------------------------------------------------\n\n"

#if their choices are the same, its a tie!
if player_1_choice == player_2_choice
	print "TIE!"
#if player one chooses rock,
#first check scenario where player 1 would win,
#or else we can assume player 2 would win.
elsif player_1_choice == "rock"
	if player_2_choice == "scissors"
		print "PLAYER 1 WINS!!"
	else
		print "PLAYER 2 WINS!!"
	end
#if player one chooses paper,
#first check scenario where player 1 would win,
#or else we can assume player 2 would win.
elsif player_1_choice == "paper"
	if player_2_choice == "rock"
		print "PLAYER 1 WINS!!"
	else
		print "PLAYER 2 WINS!!"
	end
	#if player one chooses scissors,
#first check scenario where player 1 would win,
#or else we can assume player 2 would win.
elsif player_1_choice == "scissors"
	if player_2_choice == "paper"
		print "PLAYER 1 WINS!!"
	else
		print "PLAYER 2 WINS!!"
	end
end
