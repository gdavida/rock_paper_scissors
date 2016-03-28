require "pry"
require_relative "lib/player.rb"

# 
# 
# 
# 
# 



#------------------------------------

#START A GAME

def start_a_game
	puts "Player 1"
	#maybe instead of this just automatically show a list of names that have already played with an additional option being, add my name ... maybe not, idk
	#but these two processes are identical except for the Player 1 vs Player 2, so maybe add the player # to the Player class then just refer to that?
	#player 1
	print "Are you an existing player? (y/n)"
	choice = gets.chomp
	if choice == "n*"
		add_a_player
	elsif choice == "y*"
		puts Player.name
		#look at Kyle's code and find how he got the list of the names for guitar players and choosing one
	end
	while choice != "y*" 
		print "Not a valid repsonse, are you an existing player? (y/n)"
		choice = gets.chomp
	end
	puts "Player 1 is #{Player.name}"


	puts "\n--------------------------"


	#player 2
	print "\nPlayer 2, are you an existing player? (y/n)"
	choice = gets.chomp
	if choice == "n*"
		add_a_player
	elsif choice == "y*"
		puts Player.name
		#look at Kyle's code and find how he got the list of the names for guitar players and choosing one
	end
	while choice != "y*" 
		print "Not a valid repsonse, are you an existing player? (y/n)"
		choice = gets.chompend
	puts "Player 2 is #{Player.name}"
	puts "\n--------------------------"
	play_a_game # now that you've got the game set up with the players chosen, its time to play the game
	end

#------------------------------------

#ADD A PLAYER
#this is def part of the driver
def add_a_new_player
  puts "\n\nADD A NEW PLAYER\n\n"
  print "What is your name? "
  name = gets.chomp

  #need default value for illustrator to be "none", in case there is none
  Player.new(name: name)

end


#------------------------------------

#PLAY A GAME
#Procedures
# eventually need to make the "steps" its own method so we are just calling player 1 (and maybe the play 1 vs player 2 is something indicated in this player's array)
def  play_a_game
	#PLAYER 1 choses a valid selection of r,p,s
	print "\nPLAYER 1, please select the corresponding number for your choice:\n1  rock\n2  paper\n3  scissors\n\n"
	choice = gets.chomp
	validate_rps_choice(choice)
	player_1_choice = choice

	puts "-------------------------------------------------"
	print "\nPLAYER 2, please select the corresponding number for your choice:\n1  rock\n2  paper\n3  scissors\n\n"
		#PLAYER 2 choses a valid selection of r,p,s
	choice = gets.chomp
	validate_rps_choice(choice)
	player_2_choice = choice

	puts lets_see_who_wins(player_1_choice, player_2_choice)

end

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