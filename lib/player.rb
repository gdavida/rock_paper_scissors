

class Player

attr_accessor :name, :moves

def initialize(options={})
	@name				=	options[:name]
	@moves			=	options[:moves]
	@total_wins	= options[:total_wins] #should store the number
	@score			= options[:score] # should always start at 0 with each new game
end
#this hash shows what that key needs to be up against in order for the key to be the winner
how_to_win_if_you_choose = ["rock": "scissors", "paper": "rock", "scissors": "paper"]



def validate_rps_choice(choice)
	while (choice != "1") && (choice != "2") && (choice != "3")
		print "Not valid, enter a valid number. Please select the corresponding number for your choice:\n1  rock\n2  paper\n3  scissors\n\n"
		choice = gets.chomp
	end
	choice
end 






def lets_see_who_wins(player_1_choice, player_2_choice)
	if player_1_choice == player_2_choice
		"TIE"
		# this looks up p1's choice to see what that p1 choice needs to be up against in order to be the winner, and if player 2's choice is the same as what p1 needs to be against to win, then of course p1 wins
	elsif player_2_choice == how_to_win_if_you_choose[player_1_choice]
		"PLAYER 1 WINS!!!"
		Player1.total_wins += 1
		Player1.score += 1
		#otherwise we can assume that if there is no tie and p1 doesnt win, then p2 does
	else "PLAYER 2 WINS!!!"
		Player2.total_wins += 1
		Player2.score += 1
	end
	puts "Player 1: #{Player(1).score}"
	puts "Player 2: #{Player(2).score}"
end



