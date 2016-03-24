require "pry"
##	1	 	rock
##	2 	paper
##	3 	scissors

puts "-------------------------------------------------"
puts "-------------------------------------------------"
puts "LET'S PLAY ROCK, PAPER, SCISSORS!\n"
print "\nPLAYER 1, please select the corresponding number for your choice:\n1  rock\n2  paper\n3  scissors\n\n"
player_1_choice = gets.chomp
while (player_1_choice != "1") && (player_1_choice != "2") && (player_1_choice != "3")
	print "Not valid, enter a valid number. Please select the corresponding number for your choice:\n1  rock\n2  paper\n3  scissors\n\n"
	player_1_choice = gets.chomp
end

puts "-------------------------------------------------"
print "\nPLAYER 2, please select the corresponding number for your choice:\n1  rock\n2  paper\n3  scissors\n\n"
player_2_choice = gets.chomp
while (player_2_choice != "1") && (player_2_choice != "2") && (player_2_choice != "3")
	print "Not valid, enter a valid number. Please select the corresponding number for your choice:\n1  rock\n2  paper\n3  scissors\n\n"
	player_1_choice = gets.chomp
end

puts "-------------------------------------------------\n\n"

#if their choices are the same, its a tie!
if player_1_choice == player_2_choice
	print "TIE!"
#if player one chooses rock,
#first check scenario where player 1 would win,
#or else we can assume player 2 would win.
elsif player_1_choice == "1" #rock
	if player_2_choice == "3" #scissors
		print "PLAYER 1 WINS!!\n Rock crushes Scissors."
	else 
		print "PLAYER 2 WINS!!\n Paper covers Rock"
	end
#if player one chooses paper,
#first check scenario where player 1 would win,
#or else we can assume player 2 would win.
elsif player_1_choice == "2" #paper
	if player_2_choice == "1"	#rock
		print "PLAYER 1 WINS!!\n Paper covers Rock"
	else
		print "PLAYER 2 WINS!!\n Scissors cuts Paper"
	end
	#if player one chooses scissors,
#first check scenario where player 1 would win,
#or else we can assume player 2 would win.
elsif player_1_choice == "3" #scissors
	if player_2_choice == "2" #paper
		print "PLAYER 1 WINS!!\n Scissors cuts Paper"
	else
		print "PLAYER 2 WINS!!\n Rock crushes Paper"
	end
end
